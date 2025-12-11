#!/usr/bin/env python3
"""
Generate LayerZero V2 Address Book Solidity contracts from metadata API.

This script fetches deployment data from LayerZero's metadata API and generates
Solidity library contracts following the Aave address book pattern.
"""

import json
import requests
from typing import Dict, Any, List, Optional
import re
from web3 import Web3
import hashlib

# Constants
METADATA_URL = "https://metadata.layerzero-api.com/v1/metadata/deployments"
STARGATE_MAINNET_URL = "https://mainnet.stargate-api.com/v1/metadata?version=v2"
STARGATE_TESTNET_URL = "https://testnet.stargate-api.com/v1/metadata?version=v2"
SOLIDITY_HEADER = """// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// Auto-generated from LayerZero metadata - do not edit manually
// Source: https://metadata.layerzero-api.com/v1/metadata/deployments

import {ILayerZeroEndpointV2} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {IMessageLib} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/IMessageLib.sol";
"""

# Map of contract names to their expected types
CONTRACT_TYPES = {
    "endpoint": "ILayerZeroEndpointV2",
    "endpointV2": "ILayerZeroEndpointV2",
    "sendUln301": "IMessageLib",
    "receiveUln301": "IMessageLib",
    "sendUln302": "IMessageLib",
    "receiveUln302": "IMessageLib",
    "readLib1002": "IMessageLib",
}

def to_checksum_address(address: str) -> str:
    """Convert address to EIP-55 checksum format."""
    # Skip if not a valid Ethereum address (must be 42 chars including 0x)
    if not address or len(address) != 42:
        return address
    try:
        return Web3.to_checksum_address(address)
    except ValueError:
        # If it's not a valid address, return as-is
        return address

def to_pascal_case(snake_str: str) -> str:
    """Convert snake_case or kebab-case to PascalCase."""
    # Replace hyphens with underscores for uniform processing
    snake_str = snake_str.replace('-', '_')
    # Split by underscore and capitalize each part
    parts = snake_str.split('_')
    return ''.join(word.capitalize() for word in parts)

def sanitize_chain_name(chain_key: str) -> str:
    """Sanitize chain key to valid Solidity identifier."""
    # Keep the full chain name to avoid duplicates
    # Just convert to PascalCase without removing suffixes
    return to_pascal_case(chain_key)

def sanitize_dvn_name(canonical_name: str) -> str:
    """Convert DVN canonical name to valid Solidity constant name."""
    # Handle special cases
    special_cases = {
        "LayerZero Labs": "LAYERZERO_LABS",
        "LZDeadDVN": "LZ_DEAD",
        "TSS": "TSS",
        "01node": "01NODE",
        "P-OPS Team": "P_OPS_TEAM",
        "Animoca Blockdaemon": "ABDB",
        "ABDB": "ABDB",
        "P2P": "P2P",
    }
    
    if canonical_name in special_cases:
        return special_cases[canonical_name]
    
    # General conversion: uppercase and replace spaces/special chars with underscores
    name = canonical_name.upper()
    name = re.sub(r'[^A-Z0-9]+', '_', name)
    name = name.strip('_')
    
    # Ensure it doesn't start with a number
    if name and name[0].isdigit():
        name = 'DVN_' + name
    
    return name

def generate_constant_name(key: str) -> str:
    """Generate a proper constant name from a camelCase key."""
    # Special mappings
    special_mappings = {
        "endpointV2": "ENDPOINT_V2",
        "endpointV2View": "ENDPOINT_V2_VIEW",
        "relayerV2": "RELAYER_V2",
        "ultraLightNodeV2": "ULTRA_LIGHT_NODE_V2",
        "sendUln301": "SEND_ULN_301",
        "receiveUln301": "RECEIVE_ULN_301",
        "sendUln302": "SEND_ULN_302",
        "receiveUln302": "RECEIVE_ULN_302",
        "readLib1002": "READ_LIB_1002",
        "lzExecutor": "LZ_EXECUTOR",
        "deadDVN": "DEAD_DVN",
        "blockedMessageLib": "BLOCKED_MESSAGE_LIB",
        "nonceContract": "NONCE_CONTRACT",
    }
    
    if key in special_mappings:
        return special_mappings[key]
    
    # Convert camelCase to UPPER_SNAKE_CASE
    result = re.sub('([a-z0-9])([A-Z])', r'\1_\2', key)
    return result.upper()

def is_valid_ethereum_address(address: str) -> bool:
    """Check if the string is a valid Ethereum address."""
    if not address or not isinstance(address, str):
        return False
    # Ethereum addresses are 42 chars (0x + 40 hex chars)
    if len(address) != 42 or not address.startswith('0x'):
        return False
    # Check if the rest are valid hex characters
    try:
        int(address[2:], 16)
        return True
    except ValueError:
        return False

def format_deployment_constant(key: str, address: str, contract_type: Optional[str] = None) -> str:
    """Format a deployment as a Solidity constant."""
    # Skip if not a valid Ethereum address
    if not is_valid_ethereum_address(address):
        return None
        
    const_name = generate_constant_name(key)
    checksum_addr = to_checksum_address(address)
    
    if contract_type:
        return f"  {contract_type} internal constant {const_name} = {contract_type}({checksum_addr});"
    else:
        return f"  address internal constant {const_name} = {checksum_addr};"

def generate_chain_library(chain_key: str, chain_data: Dict[str, Any]) -> Optional[str]:
    """Generate a Solidity library for a single chain."""
    deployments = chain_data.get('deployments', [])
    if not deployments:
        return None
    
    # Find V2 deployment (prefer version 2)
    # If multiple V2 deployments exist, prefer the one with higher EID (testnet)
    v2_deployment = None
    v1_deployment = None
    
    for deployment in deployments:
        if deployment.get('version') == 2:
            if v2_deployment is None:
                v2_deployment = deployment
            else:
                # If we have multiple V2 deployments, prefer the one with higher EID
                current_eid = deployment.get('eid', 0)
                existing_eid = v2_deployment.get('eid', 0)
                if current_eid > existing_eid:
                    v2_deployment = deployment
        elif deployment.get('version') == 1:
            v1_deployment = deployment
    
    # Use V2 if available, otherwise V1
    deployment = v2_deployment or v1_deployment
    if not deployment:
        return None
    
    chain_name = sanitize_chain_name(chain_key)
    library_name = f"LayerZeroV2{chain_name}"
    
    # Start building the library
    lines = [f"\nlibrary {library_name} {{"]
    
    # Add chain metadata
    eid = deployment.get('eid', '')
    chain_details = chain_data.get('chainDetails', {})
    native_chain_id = chain_details.get('nativeChainId', 0)
    
    if eid:
        lines.append(f"  // Chain metadata")
        lines.append(f"  uint32 internal constant EID = {eid};")
        if native_chain_id:
            lines.append(f"  uint256 internal constant CHAIN_ID = {native_chain_id};")
        lines.append(f'  string internal constant CHAIN_NAME = "{chain_key}";')
        lines.append("")
    
    # Group contracts by category
    core_contracts = []
    message_libs = []
    other_contracts = []
    
    # Process all contract addresses in the deployment
    for key, value in deployment.items():
        if key in ['eid', 'chainKey', 'stage', 'version']:
            continue
        
        if isinstance(value, dict) and 'address' in value:
            address = value['address']
            contract_type = CONTRACT_TYPES.get(key)
            
            constant_line = format_deployment_constant(key, address, contract_type)
            
            # Skip if not a valid address
            if constant_line is None:
                continue
            
            # Categorize the constant
            if key in ['endpoint', 'endpointV2']:
                core_contracts.insert(0, constant_line)  # Put endpoint first
            elif 'Uln' in key or 'Lib' in key:
                message_libs.append(constant_line)
            else:
                other_contracts.append(constant_line)
    
    # Ensure BLOCKED_MESSAGE_LIB is always present (needed for LZProtocol)
    has_blocked_lib = any('BLOCKED_MESSAGE_LIB' in line for line in message_libs)
    if not has_blocked_lib:
        message_libs.append("  address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;")
    
    # Add categorized constants
    if core_contracts:
        lines.append("  // Core protocol")
        lines.extend(core_contracts)
        if message_libs or other_contracts:
            lines.append("")
    
    if message_libs:
        lines.append("  // Message libraries")
        lines.extend(message_libs)
        if other_contracts:
            lines.append("")
    
    if other_contracts:
        lines.append("  // Other contracts")
        lines.extend(other_contracts)
    
    lines.append("}")
    
    return "\n".join(lines)

def generate_dvn_library(chain_key: str, dvns: Dict[str, Any]) -> Optional[str]:
    """Generate a DVN library for a chain."""
    if not dvns:
        return None
    
    chain_name = sanitize_chain_name(chain_key)
    library_name = f"LayerZeroV2DVN{chain_name}"
    
    lines = [f"\nlibrary {library_name} {{"]
    
    # Track used constant names to avoid duplicates
    used_names = set()
    
    # Sort DVNs by canonical name for consistent output
    sorted_dvns = sorted(dvns.items(), key=lambda x: x[1].get('canonicalName', ''))
    
    for address, dvn_info in sorted_dvns:
        canonical_name = dvn_info.get('canonicalName', '')
        dvn_id = dvn_info.get('id', '')
        deprecated = dvn_info.get('deprecated', False)
        
        if not canonical_name:
            continue
            
        # Skip if not a valid Ethereum address
        if not is_valid_ethereum_address(address):
            continue
        
        # Generate constant name
        base_name = f"DVN_{sanitize_dvn_name(canonical_name)}"
        const_name = base_name
        
        # Handle duplicates by adding suffix
        suffix = 2
        while const_name in used_names:
            const_name = f"{base_name}_{suffix}"
            suffix += 1
        
        used_names.add(const_name)
        checksum_addr = to_checksum_address(address)
        
        # Add comment with metadata
        comment_parts = [canonical_name]
        if deprecated:
            comment_parts.append("(deprecated)")
        if dvn_id:
            comment_parts.append(f"[{dvn_id}]")
        
        lines.append(f"  // {' '.join(comment_parts)}")
        lines.append(f"  address internal constant {const_name} = {checksum_addr};")
    
    lines.append("}")
    
    return "\n".join(lines)

def fetch_metadata() -> Dict[str, Any]:
    """Fetch metadata from LayerZero API."""
    print(f"Fetching metadata from {METADATA_URL}...")
    response = requests.get(METADATA_URL)
    response.raise_for_status()
    return response.json()

def fetch_stargate_metadata(include_testnet: bool = False) -> Dict[str, Any]:
    """Fetch Stargate pool/OFT metadata from API."""
    print(f"Fetching Stargate mainnet metadata from {STARGATE_MAINNET_URL}...")
    mainnet_response = requests.get(STARGATE_MAINNET_URL)
    mainnet_response.raise_for_status()
    mainnet_data = mainnet_response.json()
    
    result = {'mainnet': mainnet_data.get('data', {}).get('v2', [])}
    
    if include_testnet:
        print(f"Fetching Stargate testnet metadata from {STARGATE_TESTNET_URL}...")
        testnet_response = requests.get(STARGATE_TESTNET_URL)
        testnet_response.raise_for_status()
        testnet_data = testnet_response.json()
        result['testnet'] = testnet_data.get('data', {}).get('v2', [])
    else:
        result['testnet'] = []
    
    return result

def generate_lz_protocol(chains_processed: List[str], metadata: Dict[str, Any]) -> str:
    """Generate the LZProtocol contract."""
    registry_header = """// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "./LZAddresses.sol";
import "../helpers/interfaces/ILZProtocol.sol";
import "./LZWorkers.sol";
import {Vm} from "forge-std/Vm.sol";

/// @title LayerZero Protocol Address Provider
/// @notice Provides LayerZero protocol addresses from the generated address book
/// @dev Implements ILZProtocol interface for clean access to core protocol addresses
contract LZProtocol is ILZProtocol {
    // Forge VM for string conversion
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));
    
    // LZWorkers instance
    LZWorkers public workers;
    
    // Storage for chain data
    mapping(uint32 => ProtocolAddresses) private _protocolAddresses;
    
    // List of registered EIDs for iteration
    uint32[] private _registeredEids;
    
    // Mapping from chain name to EID for reverse lookup
    mapping(string => uint32) private _chainNameToEid;
    
    // Mapping from chain ID to EID for reverse lookup
    mapping(uint256 => uint32) private _chainIdToEid;
    
    constructor() {
        _registerAllChains();
        workers = new LZWorkers();
    }
    
    /// @notice Register all supported chains from the AddressBook
    function _registerAllChains() private {"""
    
    lines = [registry_header]
    
    # Group chains by category (sandbox chains are excluded)
    mainnet_chains = []
    testnet_chains = []
    skipped_chains = []
    
    for chain_key in chains_processed:
        chain_data = metadata.get(chain_key, {})
        deployments = chain_data.get('deployments', [])
        
        # Find V2 deployment (prefer higher EID if multiple exist)
        v2_deployment = None
        for deployment in deployments:
            if deployment.get('version') == 2:
                if v2_deployment is None:
                    v2_deployment = deployment
                else:
                    # If we have multiple V2 deployments, prefer the one with higher EID
                    current_eid = deployment.get('eid', 0)
                    existing_eid = v2_deployment.get('eid', 0)
                    if current_eid > existing_eid:
                        v2_deployment = deployment
        
        if not v2_deployment:
            continue
            
        # Check if chain has nativeChainId
        chain_details = chain_data.get('chainDetails', {})
        native_chain_id = chain_details.get('nativeChainId', 0)
        
        if not native_chain_id:
            skipped_chains.append(chain_key)
            continue
            
        # Also check if v2_deployment has required addresses
        required_fields = ['endpointV2', 'sendUln302', 'receiveUln302', 'executor']
        missing_fields = []
        for field in required_fields:
            if field not in v2_deployment or not v2_deployment[field].get('address'):
                missing_fields.append(field)
        
        if missing_fields:
            skipped_chains.append(f"{chain_key} (missing: {', '.join(missing_fields)})")
            continue
            
        chain_name = sanitize_chain_name(chain_key)
        
        # Extract RPCs
        rpcs = chain_data.get('rpcs', [])
        rpc_urls = []
        if isinstance(rpcs, list):
            if rpcs and isinstance(rpcs[0], dict):
                sorted_rpcs = sorted(rpcs, key=lambda x: int(x.get('rank', 999)))
                rpc_urls = [r.get('url') for r in sorted_rpcs if r.get('url')]
            else:
                rpc_urls = [str(r) for r in rpcs]
        
        entry = (chain_key, chain_name, rpc_urls)
        
        # Skip sandbox chains - only include mainnets and testnets
        if 'sandbox' in chain_key.lower():
            continue
        elif 'testnet' in chain_key.lower():
            testnet_chains.append(entry)
        else:
            mainnet_chains.append(entry)
    
    # Helper to format string array
    def format_string_array(arr):
        if not arr:
            return "new string[](0)"
        # Create Solidity string array literal: ["a", "b"]
        quoted = [f'"{s}"' for s in arr]
        return f"[{', '.join(quoted)}]"

    # Add mainnet chains
    if mainnet_chains:
        lines.append("        // Mainnets")
        for chain_key, chain_name, rpc_urls in sorted(mainnet_chains):
            lib_name = f"LayerZeroV2{chain_name}"
            rpc_arg = format_string_array(rpc_urls)
            lines.append(f"        _registerChain({lib_name}.EID, address({lib_name}.ENDPOINT_V2), address({lib_name}.SEND_ULN_302), address({lib_name}.RECEIVE_ULN_302), {lib_name}.BLOCKED_MESSAGE_LIB, {lib_name}.EXECUTOR, {lib_name}.CHAIN_ID, \"{chain_key}\", {rpc_arg});")
    
    # Add testnet chains
    if testnet_chains:
        lines.append("\n        // Testnets")
        for chain_key, chain_name, rpc_urls in sorted(testnet_chains):
            lib_name = f"LayerZeroV2{chain_name}"
            rpc_arg = format_string_array(rpc_urls)
            lines.append(f"        _registerChain({lib_name}.EID, address({lib_name}.ENDPOINT_V2), address({lib_name}.SEND_ULN_302), address({lib_name}.RECEIVE_ULN_302), {lib_name}.BLOCKED_MESSAGE_LIB, {lib_name}.EXECUTOR, {lib_name}.CHAIN_ID, \"{chain_key}\", {rpc_arg});")
    
    lines.append("""    }
    
    /// @notice Register a single chain
    function _registerChain(
        uint32 eid,
        address endpoint,
        address sendUln,
        address receiveUln,
        address blockedLib,
        address executor,
        uint256 chainId,
        string memory chainName,
        string[] memory rpcUrls
    ) private {
        _protocolAddresses[eid] = ProtocolAddresses({
            endpointV2: endpoint,
            sendUln302: sendUln,
            receiveUln302: receiveUln,
            blockedMessageLib: blockedLib,
            executor: executor,
            chainId: chainId,
            chainName: chainName,
            rpcUrls: rpcUrls,
            exists: true
        });
        _registeredEids.push(eid);
        _chainNameToEid[chainName] = eid;
        _chainIdToEid[chainId] = eid;
    }
    
    // ============================================
    // Protocol Address Lookups
    // ============================================
    
    function getProtocolAddresses(uint32 eid) public view override returns (ProtocolAddresses memory) {
        ProtocolAddresses memory addresses = _protocolAddresses[eid];
        require(addresses.exists, string.concat("Chain not registered: ", vm.toString(uint256(eid))));
        return addresses;
    }
    
    function getProtocolAddressesByChainName(string memory chainName) public view override returns (ProtocolAddresses memory) {
        uint32 eid = _chainNameToEid[chainName];
        require(eid != 0 || _protocolAddresses[0].exists, string.concat("Chain name not found: ", chainName));
        return getProtocolAddresses(eid);
    }
    
    function getProtocolAddressesByChainId(uint256 chainId) public view override returns (ProtocolAddresses memory) {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Chain ID not found: ", vm.toString(chainId)));
        return getProtocolAddresses(eid);
    }
    
    // ============================================
    // Support Checks
    // ============================================
    
    function isEidSupported(uint32 eid) public view override returns (bool) {
        return _protocolAddresses[eid].exists;
    }
    
    function isChainIdSupported(uint256 chainId) public view override returns (bool) {
        return _chainIdToEid[chainId] != 0;
    }
    
    function isChainNameSupported(string memory chainName) public view override returns (bool) {
        uint32 eid = _chainNameToEid[chainName];
        return eid != 0 || _protocolAddresses[0].exists;
    }
    
    // ============================================
    // Discovery
    // ============================================
    
    function getSupportedEids() public view override returns (uint32[] memory) {
        return _registeredEids;
    }
    
    function getSupportedChainNames() public view override returns (string[] memory chainNames) {
        chainNames = new string[](_registeredEids.length);
        for (uint256 i = 0; i < _registeredEids.length; i++) {
            chainNames[i] = _protocolAddresses[_registeredEids[i]].chainName;
        }
    }
    
    // ============================================
    // EID Conversions
    // ============================================
    
    function getEidByChainName(string memory chainName) public view override returns (uint32) {
        uint32 eid = _chainNameToEid[chainName];
        require(eid != 0 || _protocolAddresses[0].exists, string.concat("Chain name not found: ", chainName));
        return eid;
    }
    
    function getEidByChainId(uint256 chainId) public view override returns (uint32) {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Chain ID not found: ", vm.toString(chainId)));
        return eid;
    }
    
    // ============================================
    // Chain Name Lookups
    // ============================================
    
    function getChainNameByEid(uint32 eid) public view override returns (string memory chainName) {
        ProtocolAddresses memory addresses = _protocolAddresses[eid];
        require(addresses.exists, string.concat("Chain not registered: ", vm.toString(uint256(eid))));
        return addresses.chainName;
    }
    
    function getChainNameByChainId(uint256 chainId) public view override returns (string memory chainName) {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Chain ID not found: ", vm.toString(chainId)));
        return _protocolAddresses[eid].chainName;
    }
    
    // ============================================
    // Full Deployment Info
    // ============================================

    function getFullDeploymentInfo(uint32 eid) public view override returns (FullDeploymentInfo memory info) {
        ProtocolAddresses memory base = getProtocolAddresses(eid);
        
        (string[] memory dvnNames, address[] memory dvnAddrs) = workers.getDVNsForEid(eid);
        
        info = FullDeploymentInfo({
            eid: eid,
            chainId: base.chainId,
            chainName: base.chainName,
            rpcUrls: base.rpcUrls,
            endpointV2: base.endpointV2,
            sendUln302: base.sendUln302,
            receiveUln302: base.receiveUln302,
            blockedMessageLib: base.blockedMessageLib,
            executor: base.executor,
            allDVNs: dvnAddrs,
            allDVNNames: dvnNames,
            exists: base.exists
        });
    }

    function getFullDeploymentInfoByChainName(string memory chainName) public view override returns (FullDeploymentInfo memory info) {
        uint32 eid = _chainNameToEid[chainName];
        require(eid != 0 || _protocolAddresses[0].exists, string.concat("Chain name not found: ", chainName));
        return getFullDeploymentInfo(eid);
    }

    function getFullDeploymentInfoByChainId(uint256 chainId) public view override returns (FullDeploymentInfo memory info) {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Chain ID not found: ", vm.toString(chainId)));
        return getFullDeploymentInfo(eid);
    }

    // ============================================
    // Pathway Info
    // ============================================

    function getPathwayInfo(string memory srcChain, string memory dstChain) public view override returns (PathwayInfo memory info) {
        info.source = getFullDeploymentInfoByChainName(srcChain);
        info.destination = getFullDeploymentInfoByChainName(dstChain);
        info.connected = info.source.exists && info.destination.exists;
    }

    function getPathwayInfoByEid(uint32 srcEid, uint32 dstEid) public view override returns (PathwayInfo memory info) {
        info.source = getFullDeploymentInfo(srcEid);
        info.destination = getFullDeploymentInfo(dstEid);
        info.connected = info.source.exists && info.destination.exists;
    }
}""")
    
    # Note: Chain ID to EID mappings are now handled in the _registerChain function
    
    return "\n".join(lines)

def generate_stargate_addresses(stargate_data: Dict[str, Any], lz_metadata: Dict[str, Any]) -> str:
    """Generate STGAddresses.sol with per-chain Stargate libraries."""
    
    header = """// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// Auto-generated from Stargate metadata - do not edit manually
// Source: https://mainnet.stargate-api.com/v1/metadata?version=v2
// Source: https://testnet.stargate-api.com/v1/metadata?version=v2

"""
    
    # Build mapping from Stargate chain key to LZ chain info (name, EID, chain ID)
    stg_to_lz_info = {}
    for chain_key, chain_data in lz_metadata.items():
        deployments = chain_data.get('deployments', [])
        chain_details = chain_data.get('chainDetails', {})
        native_chain_id = chain_details.get('nativeChainId', 0)
        
        for deployment in deployments:
            if deployment.get('version') == 2:
                eid = deployment.get('eid', 0)
                info = {
                    'lz_name': chain_key,
                    'eid': eid,
                    'chain_id': native_chain_id
                }
                # Map full name to itself
                stg_to_lz_info[chain_key] = info
                # Map shortened name (without -mainnet) to full name
                if '-mainnet' in chain_key:
                    base_name = chain_key.replace('-mainnet', '')
                    stg_to_lz_info[base_name] = info
                break
    
    def get_lz_chain_name(stg_chain_key):
        """Convert Stargate chain key to LZ chain name"""
        info = stg_to_lz_info.get(stg_chain_key)
        return info['lz_name'] if info else stg_chain_key
    
    def get_lz_chain_info(stg_chain_key):
        """Get full LZ chain info for a Stargate chain key"""
        return stg_to_lz_info.get(stg_chain_key)
    
    # Group assets by normalized LZ chain name
    chains = {}  # lz_chain_name -> list of assets
    
    all_assets = stargate_data.get('mainnet', []) + stargate_data.get('testnet', [])
    
    for asset in all_assets:
        stg_chain_key = asset.get('chainKey', '')
        if not stg_chain_key:
            continue
        
        # Normalize to LZ chain name and get chain info
        lz_chain_name = get_lz_chain_name(stg_chain_key)
        lz_info = get_lz_chain_info(stg_chain_key)
        
        if lz_chain_name not in chains:
            chains[lz_chain_name] = {
                'assets': [],
                'tokenMessaging': asset.get('tokenMessaging', ''),
                'stg_chain_key': stg_chain_key,
                'eid': lz_info['eid'] if lz_info else 0,
                'chain_id': lz_info['chain_id'] if lz_info else 0
            }
        
        chains[lz_chain_name]['assets'].append(asset)
        # Update tokenMessaging if we have it
        if asset.get('tokenMessaging'):
            chains[lz_chain_name]['tokenMessaging'] = asset.get('tokenMessaging')
    
    lines = [header]
    
    # Generate library for each chain (using normalized LZ chain name)
    for lz_chain_name in sorted(chains.keys()):
        chain_data = chains[lz_chain_name]
        chain_name = sanitize_chain_name(lz_chain_name)
        library_name = f"Stargate{chain_name}"
        
        lines.append(f"library {library_name} {{")
        
        # Add chain metadata
        eid = chain_data.get('eid', 0)
        chain_id = chain_data.get('chain_id', 0)
        if eid or chain_id:
            lines.append("    // Chain metadata")
            if eid:
                lines.append(f"    uint32 internal constant EID = {eid};")
            if chain_id:
                lines.append(f"    uint256 internal constant CHAIN_ID = {chain_id};")
            lines.append(f'    string internal constant CHAIN_NAME = "{lz_chain_name}";')
            lines.append("")
        
        # Add token messaging if available
        if chain_data['tokenMessaging']:
            checksum_addr = to_checksum_address(chain_data['tokenMessaging'])
            lines.append(f"    address internal constant TOKEN_MESSAGING = {checksum_addr};")
            lines.append("")
        
        # Add each asset
        for asset in chain_data['assets']:
            stargate_type = asset.get('stargateType', 'POOL')
            address = asset.get('address', '')
            token_info = asset.get('token', {})
            token_address = token_info.get('address', '')
            symbol = token_info.get('symbol', '')
            
            if not address or not symbol:
                continue
            
            # Sanitize symbol for constant name (e.g., "USDC.e" -> "USDC_E")
            # Also handle Unicode characters like ₮ (Tether symbol)
            const_symbol = symbol.upper().replace('.', '_').replace('-', '_')
            # Remove any non-ASCII characters and replace with underscore
            const_symbol = re.sub(r'[^A-Z0-9_]', '_', const_symbol)
            const_symbol = re.sub(r'_+', '_', const_symbol)  # Collapse multiple underscores
            const_symbol = const_symbol.strip('_')
            
            # Sanitize symbol for comment (ASCII only)
            safe_symbol = ''.join(c if ord(c) < 128 else '?' for c in symbol)
            
            # Add comment with type
            type_comment = "StargatePool" if stargate_type == "POOL" else "StargateOFT"
            lines.append(f"    // {safe_symbol} ({type_comment})")
            
            # OFT address (the main contract implementing IOFT)
            checksum_addr = to_checksum_address(address)
            lines.append(f"    address internal constant {const_symbol}_OFT = {checksum_addr};")
            
            # Underlying token address
            if token_address:
                checksum_token = to_checksum_address(token_address)
                lines.append(f"    address internal constant {const_symbol}_TOKEN = {checksum_token};")
            
            lines.append("")
        
        lines.append("}")
        lines.append("")
    
    return "\n".join(lines)


def generate_stg_protocol(stargate_data: Dict[str, Any], lz_metadata: Dict[str, Any]) -> str:
    """Generate STGProtocol.sol helper contract."""
    
    # Build mapping from Stargate chain key to LayerZero chain name, EID, and chain ID
    # Stargate uses simplified names like "arbitrum" while LZ uses "arbitrum-mainnet"
    # We normalize everything to use LZ chain names for consistency
    stg_to_lz_mapping = {}
    
    for chain_key, chain_data in lz_metadata.items():
        # Get EID and chain ID
        deployments = chain_data.get('deployments', [])
        chain_details = chain_data.get('chainDetails', {})
        native_chain_id = chain_details.get('nativeChainId', 0)
        
        for deployment in deployments:
            if deployment.get('version') == 2:
                eid = deployment.get('eid', 0)
                if eid and native_chain_id:
                    # Always store full name mapping to itself
                    stg_to_lz_mapping[chain_key] = (eid, native_chain_id, chain_key)
                    
                    # For mainnet chains, also store the base name mapping to full name
                    # This maps "arbitrum" -> ("arbitrum-mainnet", EID, chainId)
                    if '-mainnet' in chain_key:
                        base_name = chain_key.replace('-mainnet', '')
                        stg_to_lz_mapping[base_name] = (eid, native_chain_id, chain_key)
                break
    
    # Helper function to normalize Stargate chain key to LZ chain name
    def get_lz_chain_name(stg_chain_key):
        """Convert Stargate chain key to LZ chain name"""
        if stg_chain_key in stg_to_lz_mapping:
            return stg_to_lz_mapping[stg_chain_key][2]  # Returns the LZ chain name
        return stg_chain_key  # Fallback to original if not found
    
    header = """// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "../helpers/interfaces/ISTGProtocol.sol";
import {Vm} from "forge-std/Vm.sol";

/// @title Stargate Protocol Address Provider
/// @notice Provides Stargate pool and OFT addresses from the generated address book
/// @dev All Stargate contracts implement the IOFT interface
contract STGProtocol is ISTGProtocol {
    // Forge VM for string conversion
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));
    
    // Storage for assets: chainName => symbol => StargateAsset
    mapping(string => mapping(string => StargateAsset)) private _assets;
    
    // Track symbols per chain for enumeration
    mapping(string => string[]) private _symbolsByChain;
    
    // Track all unique symbols
    string[] private _allSymbols;
    mapping(string => bool) private _symbolExists;
    
    // Token messaging per chain
    mapping(string => address) private _tokenMessaging;
    
    // Track supported chains
    string[] private _supportedChains;
    mapping(string => bool) private _chainSupported;
    
    // EID to Stargate chain name mapping
    mapping(uint32 => string) private _eidToChainName;
    
    // Chain ID to Stargate chain name mapping  
    mapping(uint256 => string) private _chainIdToChainName;
    
    constructor() {
        _registerAllAssets();
        _registerChainMappings();
    }
    
    function _registerAllAssets() private {"""
    
    lines = [header]
    
    # Group assets by normalized LZ chain name
    chains = {}
    all_assets = stargate_data.get('mainnet', []) + stargate_data.get('testnet', [])
    
    for asset in all_assets:
        stg_chain_key = asset.get('chainKey', '')
        if not stg_chain_key:
            continue
        
        # Normalize to LZ chain name for consistency
        lz_chain_name = get_lz_chain_name(stg_chain_key)
        
        if lz_chain_name not in chains:
            chains[lz_chain_name] = {
                'assets': [],
                'tokenMessaging': asset.get('tokenMessaging', ''),
                'stg_chain_key': stg_chain_key  # Keep original for reference
            }
        
        chains[lz_chain_name]['assets'].append(asset)
        if asset.get('tokenMessaging'):
            chains[lz_chain_name]['tokenMessaging'] = asset.get('tokenMessaging')
    
    # Generate registration calls
    for lz_chain_name in sorted(chains.keys()):
        chain_data = chains[lz_chain_name]
        stg_key = chain_data.get('stg_chain_key', lz_chain_name)
        lines.append(f'\n        // {lz_chain_name} (Stargate: {stg_key})')
        
        # Register token messaging
        if chain_data['tokenMessaging']:
            checksum_addr = to_checksum_address(chain_data['tokenMessaging'])
            lines.append(f'        _tokenMessaging["{lz_chain_name}"] = {checksum_addr};')
        
        # Register chain
        lines.append(f'        _registerChain("{lz_chain_name}");')
        
        # Register each asset
        for asset in chain_data['assets']:
            stargate_type = asset.get('stargateType', 'POOL')
            address = asset.get('address', '')
            token_info = asset.get('token', {})
            token_address = token_info.get('address', '')
            symbol = token_info.get('symbol', '')
            decimals = token_info.get('decimals', 18)
            shared_decimals = asset.get('sharedDecimals', 6)
            
            if not address or not symbol:
                continue
            
            # Sanitize symbol for Solidity string (remove non-ASCII)
            safe_symbol = ''.join(c if ord(c) < 128 else '_' for c in symbol)
            
            checksum_addr = to_checksum_address(address)
            checksum_token = to_checksum_address(token_address) if token_address else "address(0)"
            sg_type = "StargateType.POOL" if stargate_type == "POOL" else "StargateType.OFT"
            
            lines.append(f'        _registerAsset("{lz_chain_name}", "{safe_symbol}", {checksum_addr}, {checksum_token}, {decimals}, {shared_decimals}, {sg_type});')
    
    lines.append("""    }
    
    function _registerChainMappings() private {""")
    
    # Add EID and chainId mappings for Stargate chains (using normalized LZ chain names)
    all_assets = stargate_data.get('mainnet', []) + stargate_data.get('testnet', [])
    registered_chains = set()
    
    for asset in all_assets:
        stg_chain_key = asset.get('chainKey', '')
        if not stg_chain_key:
            continue
        
        # Normalize to LZ chain name
        lz_chain_name = get_lz_chain_name(stg_chain_key)
        
        if lz_chain_name in registered_chains:
            continue
        
        # Look up EID and chainId from LZ metadata
        if stg_chain_key in stg_to_lz_mapping:
            eid, chain_id, _ = stg_to_lz_mapping[stg_chain_key]
            lines.append(f'        _eidToChainName[{eid}] = "{lz_chain_name}";')
            lines.append(f'        _chainIdToChainName[{chain_id}] = "{lz_chain_name}";')
            registered_chains.add(lz_chain_name)
    
    lines.append("""    }
    
    function _registerChain(string memory chainName) private {
        if (!_chainSupported[chainName]) {
            _chainSupported[chainName] = true;
            _supportedChains.push(chainName);
        }
    }
    
    function _registerAsset(
        string memory chainName,
        string memory symbol,
        address oft,
        address token,
        uint8 decimals,
        uint8 sharedDecimals,
        StargateType stargateType
    ) private {
        _assets[chainName][symbol] = StargateAsset({
            oft: oft,
            token: token,
            symbol: symbol,
            decimals: decimals,
            sharedDecimals: sharedDecimals,
            stargateType: stargateType,
            exists: true
        });
        
        _symbolsByChain[chainName].push(symbol);
        
        if (!_symbolExists[symbol]) {
            _symbolExists[symbol] = true;
            _allSymbols.push(symbol);
        }
    }
    
    // ============================================
    // Lookup by Chain Name
    // ============================================
    
    /// @inheritdoc ISTGProtocol
    function getAsset(string memory chainName, string memory symbol) external view override returns (StargateAsset memory) {
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on ", chainName));
        return asset;
    }
    
    /// @inheritdoc ISTGProtocol
    function getAssetsForChainName(string memory chainName) external view override returns (StargateAsset[] memory assets) {
        string[] memory symbols = _symbolsByChain[chainName];
        assets = new StargateAsset[](symbols.length);
        
        for (uint256 i = 0; i < symbols.length; i++) {
            assets[i] = _assets[chainName][symbols[i]];
        }
    }
    
    /// @inheritdoc ISTGProtocol
    function getTokenMessaging(string memory chainName) external view override returns (address) {
        address tm = _tokenMessaging[chainName];
        require(tm != address(0), string.concat("TokenMessaging not found for: ", chainName));
        return tm;
    }
    
    // ============================================
    // Lookup by EID
    // ============================================
    
    /// @inheritdoc ISTGProtocol
    function getAssetByEid(uint32 eid, string memory symbol) external view override returns (StargateAsset memory) {
        string memory chainName = _eidToChainName[eid];
        require(bytes(chainName).length > 0, string.concat("EID not supported: ", vm.toString(uint256(eid))));
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on EID ", vm.toString(uint256(eid))));
        return asset;
    }
    
    /// @inheritdoc ISTGProtocol
    function getAssetsForEid(uint32 eid) external view override returns (StargateAsset[] memory assets) {
        string memory chainName = _eidToChainName[eid];
        require(bytes(chainName).length > 0, string.concat("EID not supported: ", vm.toString(uint256(eid))));
        
        string[] memory symbols = _symbolsByChain[chainName];
        assets = new StargateAsset[](symbols.length);
        
        for (uint256 i = 0; i < symbols.length; i++) {
            assets[i] = _assets[chainName][symbols[i]];
        }
    }
    
    /// @inheritdoc ISTGProtocol
    function getTokenMessagingByEid(uint32 eid) external view override returns (address) {
        string memory chainName = _eidToChainName[eid];
        require(bytes(chainName).length > 0, string.concat("EID not supported: ", vm.toString(uint256(eid))));
        address tm = _tokenMessaging[chainName];
        require(tm != address(0), string.concat("TokenMessaging not found for EID: ", vm.toString(uint256(eid))));
        return tm;
    }
    
    // ============================================
    // Lookup by Chain ID
    // ============================================
    
    /// @inheritdoc ISTGProtocol
    function getAssetByChainId(uint256 chainId, string memory symbol) external view override returns (StargateAsset memory) {
        string memory chainName = _chainIdToChainName[chainId];
        require(bytes(chainName).length > 0, string.concat("Chain ID not supported: ", vm.toString(chainId)));
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on chain ID ", vm.toString(chainId)));
        return asset;
    }
    
    /// @inheritdoc ISTGProtocol
    function getAssetsForChainId(uint256 chainId) external view override returns (StargateAsset[] memory assets) {
        string memory chainName = _chainIdToChainName[chainId];
        require(bytes(chainName).length > 0, string.concat("Chain ID not supported: ", vm.toString(chainId)));
        
        string[] memory symbols = _symbolsByChain[chainName];
        assets = new StargateAsset[](symbols.length);
        
        for (uint256 i = 0; i < symbols.length; i++) {
            assets[i] = _assets[chainName][symbols[i]];
        }
    }
    
    /// @inheritdoc ISTGProtocol
    function getTokenMessagingByChainId(uint256 chainId) external view override returns (address) {
        string memory chainName = _chainIdToChainName[chainId];
        require(bytes(chainName).length > 0, string.concat("Chain ID not supported: ", vm.toString(chainId)));
        address tm = _tokenMessaging[chainName];
        require(tm != address(0), string.concat("TokenMessaging not found for chain ID: ", vm.toString(chainId)));
        return tm;
    }
    
    // ============================================
    // Chain Name Resolution
    // ============================================
    
    /// @inheritdoc ISTGProtocol
    function getChainNameByEid(uint32 eid) external view override returns (string memory) {
        string memory chainName = _eidToChainName[eid];
        require(bytes(chainName).length > 0, string.concat("EID not supported: ", vm.toString(uint256(eid))));
        return chainName;
    }
    
    /// @inheritdoc ISTGProtocol
    function getChainNameByChainId(uint256 chainId) external view override returns (string memory) {
        string memory chainName = _chainIdToChainName[chainId];
        require(bytes(chainName).length > 0, string.concat("Chain ID not supported: ", vm.toString(chainId)));
        return chainName;
    }
    
    // ============================================
    // Discovery & Validation
    // ============================================
    
    /// @inheritdoc ISTGProtocol
    function getSupportedSymbols() external view override returns (string[] memory) {
        return _allSymbols;
    }
    
    /// @inheritdoc ISTGProtocol
    function getSupportedChainNames() external view override returns (string[] memory) {
        return _supportedChains;
    }
    
    /// @inheritdoc ISTGProtocol
    function isChainNameSupported(string memory chainName) external view override returns (bool) {
        return _chainSupported[chainName];
    }
    
    /// @inheritdoc ISTGProtocol
    function isHydraChain(string memory chainName, string memory symbol) external view override returns (bool) {
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on ", chainName));
        return asset.stargateType == StargateType.OFT;
    }
    
    /// @inheritdoc ISTGProtocol
    function isHydraChainByEid(uint32 eid, string memory symbol) external view override returns (bool) {
        string memory chainName = _eidToChainName[eid];
        require(bytes(chainName).length > 0, string.concat("EID not supported: ", vm.toString(uint256(eid))));
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on EID ", vm.toString(uint256(eid))));
        return asset.stargateType == StargateType.OFT;
    }
    
    /// @inheritdoc ISTGProtocol
    function isHydraChainByChainId(uint256 chainId, string memory symbol) external view override returns (bool) {
        string memory chainName = _chainIdToChainName[chainId];
        require(bytes(chainName).length > 0, string.concat("Chain ID not supported: ", vm.toString(chainId)));
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on chain ID ", vm.toString(chainId)));
        return asset.stargateType == StargateType.OFT;
    }
    
    /// @inheritdoc ISTGProtocol
    function assetExists(string memory chainName, string memory symbol) external view override returns (bool) {
        return _assets[chainName][symbol].exists;
    }
    
    /// @inheritdoc ISTGProtocol
    function assetExistsByEid(uint32 eid, string memory symbol) external view override returns (bool) {
        string memory chainName = _eidToChainName[eid];
        if (bytes(chainName).length == 0) return false;
        return _assets[chainName][symbol].exists;
    }
    
    /// @inheritdoc ISTGProtocol
    function assetExistsByChainId(uint256 chainId, string memory symbol) external view override returns (bool) {
        string memory chainName = _chainIdToChainName[chainId];
        if (bytes(chainName).length == 0) return false;
        return _assets[chainName][symbol].exists;
    }
    
    /// @inheritdoc ISTGProtocol
    function isEidSupported(uint32 eid) external view override returns (bool) {
        return bytes(_eidToChainName[eid]).length > 0;
    }
    
    /// @inheritdoc ISTGProtocol
    function isChainIdSupported(uint256 chainId) external view override returns (bool) {
        return bytes(_chainIdToChainName[chainId]).length > 0;
    }
}""")
    
    return "\n".join(lines)


def generate_lz_workers(chains_processed: List[str], metadata: Dict[str, Any]) -> str:
    """Generate the LZWorkers contract."""
    registry_header = """// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "../helpers/interfaces/ILZWorkers.sol";
import {Vm} from "forge-std/Vm.sol";

/// @title LayerZero Workers Registry
/// @notice Provides a registry of worker addresses (DVNs, executors) indexed by name and chain
/// @dev Maps worker names to their addresses on each chain for easy lookup
contract LZWorkers is ILZWorkers {
    // Forge VM for string conversion
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));
    
    // Storage: nested mapping for efficient lookups (dvnName => eid => address)
    mapping(string => mapping(uint32 => address)) private _dvnAddresses;
    
    // Reverse lookup: address => eid => dvnName
    mapping(address => mapping(uint32 => string)) private _dvnAddressToName;
    
    // List of all DVN names for enumeration
    string[] private _dvnNames;
    mapping(string => bool) private _dvnNameExists;
    
    // Reverse mapping for chain name lookups
    mapping(string => uint32) private _chainNameToEid;
    mapping(uint32 => string) private _eidToChainName;
    
    // Chain ID to EID mapping
    mapping(uint256 => uint32) private _chainIdToEid;
    
    // Track DVNs per chain for enumeration
    mapping(uint32 => string[]) private _dvnsByChain;
    
    constructor() {
        _registerAllDVNs();
        _registerChainMappings();
    }
    
    /// @notice Register all DVNs from metadata
    function _registerAllDVNs() private {"""
    
    lines = [registry_header]
    
    # Collect all unique DVN names across all chains
    all_dvns = {}  # canonical_name -> chain_key -> address
    
    for chain_key in chains_processed:
        chain_data = metadata.get(chain_key, {})
        dvns = chain_data.get('dvns', {})
        
        # Get V2 deployment for EID (prefer higher EID if multiple exist)
        deployments = chain_data.get('deployments', [])
        v2_deployment = None
        for deployment in deployments:
            if deployment.get('version') == 2:
                if v2_deployment is None:
                    v2_deployment = deployment
                else:
                    # If we have multiple V2 deployments, prefer the one with higher EID
                    current_eid = deployment.get('eid', 0)
                    existing_eid = v2_deployment.get('eid', 0)
                    if current_eid > existing_eid:
                        v2_deployment = deployment
        
        if not v2_deployment or 'eid' not in v2_deployment:
            continue
            
        eid = v2_deployment['eid']
        
        for address, dvn_info in dvns.items():
            canonical_name = dvn_info.get('canonicalName', '')
            deprecated = dvn_info.get('deprecated', False)
            lz_read_compatible = dvn_info.get('lzReadCompatible', False)
            
            # Skip if no canonical name, deprecated, or read-only
            if not canonical_name or deprecated or lz_read_compatible:
                continue
                
            # Skip if not a valid Ethereum address
            if not is_valid_ethereum_address(address):
                continue
                
            # Initialize DVN entry if needed
            if canonical_name not in all_dvns:
                all_dvns[canonical_name] = {}
            
            # Store the address for this chain
            all_dvns[canonical_name][chain_key] = {
                'address': to_checksum_address(address),
                'eid': eid
            }
    
    # Sort DVNs by canonical name for consistent output
    sorted_dvn_names = sorted(all_dvns.keys())
    
    # Group registrations by DVN
    for dvn_name in sorted_dvn_names:
        lines.append(f"\n        // {dvn_name}")
        chain_entries = all_dvns[dvn_name]
        
        # Sort chains for consistent output
        for chain_key in sorted(chain_entries.keys()):
            entry = chain_entries[chain_key]
            lines.append(f'        _registerDVN("{dvn_name}", {entry["eid"]}, {entry["address"]}); // {chain_key}')
    
    lines.append("""    }
    
    /// @notice Register chain name to EID mappings
    function _registerChainMappings() private {""")
    
    # Add chain mappings and collect for getEidByChainId
    chain_mappings = []
    chain_id_to_eid = []  # For chain ID to EID mapping
    
    for chain_key in chains_processed:
        chain_data = metadata.get(chain_key, {})
        deployments = chain_data.get('deployments', [])
        chain_details = chain_data.get('chainDetails', {})
        native_chain_id = chain_details.get('nativeChainId', 0)
        
        v2_deployment = None
        for deployment in deployments:
            if deployment.get('version') == 2:
                if v2_deployment is None:
                    v2_deployment = deployment
                else:
                    # If we have multiple V2 deployments, prefer the one with higher EID
                    current_eid = deployment.get('eid', 0)
                    existing_eid = v2_deployment.get('eid', 0)
                    if current_eid > existing_eid:
                        v2_deployment = deployment
        
        if v2_deployment and 'eid' in v2_deployment:
            eid = v2_deployment['eid']
            chain_mappings.append((chain_key, eid))
            if native_chain_id:
                chain_id_to_eid.append((native_chain_id, eid))
    
    # Sort by chain name for consistent output
    for chain_key, eid in sorted(chain_mappings):
        lines.append(f'        _chainNameToEid["{chain_key}"] = {eid};')
        lines.append(f'        _eidToChainName[{eid}] = "{chain_key}";')
    
    # Add chain ID to EID mappings
    if chain_id_to_eid:
        lines.append("")
        lines.append("        // Chain ID to EID mappings")
        for chain_id, eid in sorted(chain_id_to_eid):
            lines.append(f'        _chainIdToEid[{chain_id}] = {eid};')
    
    lines.append("""    }
    
    /// @notice Register a single DVN
    function _registerDVN(string memory dvnName, uint32 eid, address dvnAddress) private {
        _dvnAddresses[dvnName][eid] = dvnAddress;
        
        // Reverse lookup: address -> name
        _dvnAddressToName[dvnAddress][eid] = dvnName;
        
        // Track unique DVN names
        if (!_dvnNameExists[dvnName]) {
            _dvnNameExists[dvnName] = true;
            _dvnNames.push(dvnName);
        }
        
        // Track DVNs per chain
        _dvnsByChain[eid].push(dvnName);
    }
    
    function getDVNAddress(string memory dvnName, uint32 eid) public view override returns (address dvnAddress) {
        dvnAddress = _dvnAddresses[dvnName][eid];
        require(dvnAddress != address(0), string.concat("DVN not found: ", dvnName, " on chain ", vm.toString(uint256(eid))));
    }
    
    function getDVNAddressByChainName(string memory dvnName, string memory chainName) public view override returns (address dvnAddress) {
        uint32 eid = _chainNameToEid[chainName];
        require(eid != 0, string.concat("Unknown chain: ", chainName));
        return getDVNAddress(dvnName, eid);
    }
    
    function getDVNAddressByChainId(string memory dvnName, uint256 chainId) public view override returns (address dvnAddress) {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Unknown chain ID: ", vm.toString(chainId)));
        return getDVNAddress(dvnName, eid);
    }
    
    function dvnExists(string memory dvnName, uint32 eid) public view override returns (bool exists) {
        return _dvnAddresses[dvnName][eid] != address(0);
    }
    
    function dvnExistsByChainName(string memory dvnName, string memory chainName) public view override returns (bool exists) {
        uint32 eid = _chainNameToEid[chainName];
        if (eid == 0) return false;
        return dvnExists(dvnName, eid);
    }
    
    function dvnExistsByChainId(string memory dvnName, uint256 chainId) public view override returns (bool exists) {
        uint32 eid = _chainIdToEid[chainId];
        if (eid == 0) return false;
        return dvnExists(dvnName, eid);
    }
    
    function getAvailableDVNs() public view override returns (string[] memory dvnNames) {
        return _dvnNames;
    }
    
    function getDVNsForEid(uint32 eid) public view override returns (string[] memory names, address[] memory addresses) {
        names = _dvnsByChain[eid];
        addresses = new address[](names.length);
        
        for (uint256 i = 0; i < names.length; i++) {
            addresses[i] = _dvnAddresses[names[i]][eid];
        }
    }
    
    function getDVNsForChainName(string memory chainName) public view override returns (string[] memory names, address[] memory addresses) {
        uint32 eid = _chainNameToEid[chainName];
        require(eid != 0, string.concat("Unknown chain: ", chainName));
        return getDVNsForEid(eid);
    }
    
    function getDVNsForChainId(uint256 chainId) public view override returns (string[] memory names, address[] memory addresses) {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Unknown chain ID: ", vm.toString(chainId)));
        return getDVNsForEid(eid);
    }
    
    function getDVNAddresses(string[] memory dvnNames, uint32 eid) public view override returns (address[] memory addresses) {
        addresses = new address[](dvnNames.length);
        for (uint256 i = 0; i < dvnNames.length; i++) {
            addresses[i] = getDVNAddress(dvnNames[i], eid);
        }
    }
    
    function getDVNAddressesByChainName(string[] memory dvnNames, string memory chainName) public view override returns (address[] memory addresses) {
        uint32 eid = _chainNameToEid[chainName];
        require(eid != 0, string.concat("Unknown chain: ", chainName));
        return getDVNAddresses(dvnNames, eid);
    }
    
    function getDVNAddressesByChainId(string[] memory dvnNames, uint256 chainId) public view override returns (address[] memory addresses) {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Unknown chain ID: ", vm.toString(chainId)));
        return getDVNAddresses(dvnNames, eid);
    }
    
    /// @notice Get DVN provider name from address (reverse lookup)
    function getDVNNameByAddress(address dvnAddress, uint32 eid) public view override returns (string memory name) {
        name = _dvnAddressToName[dvnAddress][eid];
        require(bytes(name).length > 0, string.concat("DVN address not found on chain ", vm.toString(uint256(eid))));
    }
    
    function getDVNNameByAddressAndChainName(address dvnAddress, string memory chainName) public view override returns (string memory name) {
        uint32 eid = _chainNameToEid[chainName];
        require(eid != 0, string.concat("Unknown chain: ", chainName));
        return getDVNNameByAddress(dvnAddress, eid);
    }
    
    function getDVNNameByAddressAndChainId(address dvnAddress, uint256 chainId) public view override returns (string memory name) {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Unknown chain ID: ", vm.toString(chainId)));
        return getDVNNameByAddress(dvnAddress, eid);
    }
    
    /// @notice Check if a DVN address exists on a chain
    function dvnAddressExists(address dvnAddress, uint32 eid) public view override returns (bool exists) {
        return bytes(_dvnAddressToName[dvnAddress][eid]).length > 0;
    }
}""")
    
    return "\n".join(lines)

def generate_contracts(output_file: str = "LZAddresses.sol", 
                      protocol_file: str = "LZProtocol.sol",
                      workers_file: str = "LZWorkers.sol",
                      stg_addresses_file: str = "STGAddresses.sol",
                      stg_protocol_file: str = "STGProtocol.sol",
                      chain_filter: Optional[List[str]] = None,
                      include_testnet: bool = True,
                      include_stargate: bool = True):
    """Generate Solidity contracts from LayerZero metadata."""
    # Fetch metadata
    metadata = fetch_metadata()
    
    # Generate DATA_HASH for provenance tracking
    metadata_json = json.dumps(metadata, sort_keys=True)
    data_hash = hashlib.sha256(metadata_json.encode()).hexdigest()
    
    # Create custom header with DATA_HASH for LZAddresses.sol
    # Note: No timestamp - it causes spurious diffs in CI. The hash provides provenance.
    registry_header = f"""// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Auto-generated from LayerZero metadata - do not edit manually
// Source: {METADATA_URL}
// DATA_HASH: 0x{data_hash}

import {{ILayerZeroEndpointV2}} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {{IMessageLib}} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/IMessageLib.sol";

// DATA_HASH for provenance tracking (LZIP spec requirement)
bytes32 constant LZ_ADDRESSES_DATA_HASH = 0x{data_hash};
"""
    
    # Start building the complete file
    # Use custom header if output file is for the addresses
    if "LZAddresses" in output_file:
        content = [registry_header]
    else:
        content = [SOLIDITY_HEADER]
    
    # Process each chain
    chains_processed = []
    dvn_chains_processed = []
    
    for chain_key, chain_data in sorted(metadata.items()):
        # Skip if filtering is enabled and chain not in filter
        if chain_filter and chain_key not in chain_filter:
            continue
        
        # Skip testnet chains if not requested
        if 'testnet' in chain_key and not (include_testnet or (chain_filter and chain_key in chain_filter)):
            continue
        
        # Always skip sandbox chains (unless explicitly in chain_filter)
        if 'sandbox' in chain_key and not (chain_filter and chain_key in chain_filter):
            continue
        
        # Skip non-EVM chains
        chain_details = chain_data.get('chainDetails', {})
        chain_type = chain_details.get('chainType', 'evm')
        if chain_type != 'evm':
            print(f"Skipping non-EVM chain: {chain_key} (type: {chain_type})")
            continue
        
        # Generate main chain library
        chain_library = generate_chain_library(chain_key, chain_data)
        if chain_library:
            content.append(chain_library)
            chains_processed.append(chain_key)
        
        # Generate DVN library if DVNs exist
        dvns = chain_data.get('dvns', {})
        if dvns:
            dvn_library = generate_dvn_library(chain_key, dvns)
            if dvn_library:
                content.append(dvn_library)
                dvn_chains_processed.append(chain_key)
    
    # Write address book to file
    with open(output_file, 'w') as f:
        f.write('\n'.join(content))
    
    print(f"\nGenerated {output_file}")
    print(f"Processed {len(chains_processed)} chains: {', '.join(chains_processed)}")
    print(f"Generated DVN libraries for {len(dvn_chains_processed)} chains")
    
    # Generate and write LZProtocol
    protocol_content = generate_lz_protocol(chains_processed, metadata)
    with open(protocol_file, 'w') as f:
        f.write(protocol_content)
    
    print(f"\nGenerated {protocol_file}")
    
    # Count chains registered vs skipped
    registered_count = 0
    skipped_chains = []
    for chain_key in chains_processed:
        chain_data = metadata.get(chain_key, {})
        chain_details = chain_data.get('chainDetails', {})
        native_chain_id = chain_details.get('nativeChainId', 0)
        
        # Find V2 deployment (prefer higher EID if multiple exist)
        deployments = chain_data.get('deployments', [])
        v2_deployment = None
        for deployment in deployments:
            if deployment.get('version') == 2:
                if v2_deployment is None:
                    v2_deployment = deployment
                else:
                    # If we have multiple V2 deployments, prefer the one with higher EID
                    current_eid = deployment.get('eid', 0)
                    existing_eid = v2_deployment.get('eid', 0)
                    if current_eid > existing_eid:
                        v2_deployment = deployment
        
        if not native_chain_id:
            skipped_chains.append(f"{chain_key} (no chainId)")
        elif not v2_deployment:
            skipped_chains.append(f"{chain_key} (no v2 deployment)")
        else:
            # Check required fields
            required_fields = ['endpointV2', 'sendUln302', 'receiveUln302', 'executor']
            missing_fields = []
            for field in required_fields:
                if field not in v2_deployment or not v2_deployment[field].get('address'):
                    missing_fields.append(field)
            
            if missing_fields:
                skipped_chains.append(f"{chain_key} (missing: {', '.join(missing_fields)})")
            else:
                registered_count += 1
    
    print(f"Registered {registered_count} chains in LZProtocol")
    if skipped_chains:
        print(f"Skipped {len(skipped_chains)} chains:")
        for chain in skipped_chains:
            print(f"  - {chain}")
    
    # Generate and write LZWorkers
    workers_content = generate_lz_workers(chains_processed, metadata)
    with open(workers_file, 'w') as f:
        f.write(workers_content)
    
    print(f"\nGenerated {workers_file}")
    
    # Count DVNs registered
    dvn_count = 0
    dvn_chain_count = 0
    for chain_key in chains_processed:
        chain_data = metadata.get(chain_key, {})
        dvns = chain_data.get('dvns', {})
        
        for address, dvn_info in dvns.items():
            if (not dvn_info.get('deprecated', False) and 
                not dvn_info.get('lzReadCompatible', False) and
                dvn_info.get('canonicalName')):
                dvn_count += 1
                dvn_chain_count += 1
    
    print(f"Registered DVNs across {len(chains_processed)} chains")
    
    # Generate Stargate files if requested
    if include_stargate:
        stargate_data = fetch_stargate_metadata(include_testnet=include_testnet)
        
        # Generate STGAddresses.sol
        stg_addresses_content = generate_stargate_addresses(stargate_data, metadata)
        with open(stg_addresses_file, 'w') as f:
            f.write(stg_addresses_content)
        
        mainnet_count = len(stargate_data.get('mainnet', []))
        testnet_count = len(stargate_data.get('testnet', []))
        print(f"\nGenerated {stg_addresses_file}")
        print(f"Processed {mainnet_count} mainnet assets, {testnet_count} testnet assets")
        
        # Generate STGProtocol.sol
        stg_protocol_content = generate_stg_protocol(stargate_data, metadata)
        with open(stg_protocol_file, 'w') as f:
            f.write(stg_protocol_content)
        
        print(f"\nGenerated {stg_protocol_file}")

def main():
    """Main entry point."""
    import argparse
    
    parser = argparse.ArgumentParser(description='Generate LayerZero V2 contracts from metadata')
    parser.add_argument('-o', '--output', default='src/generated/LZAddresses.sol',
                        help='Output file name for address book (default: src/generated/LZAddresses.sol)')
    parser.add_argument('-p', '--protocol', default='src/generated/LZProtocol.sol',
                        help='Output file name for protocol addresses (default: src/generated/LZProtocol.sol)')
    parser.add_argument('-w', '--workers', default='src/generated/LZWorkers.sol',
                        help='Output file name for worker addresses (default: src/generated/LZWorkers.sol)')
    parser.add_argument('--stg-addresses', default='src/generated/STGAddresses.sol',
                        help='Output file name for Stargate addresses (default: src/generated/STGAddresses.sol)')
    parser.add_argument('--stg-protocol', default='src/generated/STGProtocol.sol',
                        help='Output file name for Stargate protocol (default: src/generated/STGProtocol.sol)')
    parser.add_argument('-c', '--chains', nargs='+',
                        help='Filter to specific chains (e.g., base-mainnet arbitrum-mainnet)')
    parser.add_argument('--no-testnet', action='store_true',
                        help='Exclude testnet chains (testnets are included by default)')
    parser.add_argument('--no-stargate', action='store_true',
                        help='Skip Stargate address generation')
    
    args = parser.parse_args()
    
    generate_contracts(
        output_file=args.output,
        protocol_file=args.protocol,
        workers_file=args.workers,
        stg_addresses_file=args.stg_addresses,
        stg_protocol_file=args.stg_protocol,
        chain_filter=args.chains,
        include_testnet=not args.no_testnet,
        include_stargate=not args.no_stargate
    )

if __name__ == "__main__":
    main()
