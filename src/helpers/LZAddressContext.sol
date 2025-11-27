// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {ILZAddressContext} from "./interfaces/ILZAddressContext.sol";
import {ILZProtocol} from "./interfaces/ILZProtocol.sol";
import {ILZWorkers} from "./interfaces/ILZWorkers.sol";
import {LZProtocol} from "./LZProtocol.sol";
import {Vm} from "forge-std/Vm.sol";

/// @title LZAddressContext
/// @notice Stateful helper for managing LayerZero chain context
/// @dev Set a chain once, then access all LayerZero addresses implicitly
///
/// Usage:
///   LZAddressContext ctx = new LZAddressContext();
///   ctx.makePersistent(vm);  // For fork tests
///   ctx.setChain("arbitrum-mainnet");
///   address endpoint = ctx.getEndpoint();
///   address dvn = ctx.getDVN("LayerZero Labs");
///
/// Discovery:
///   string[] memory dvns = ctx.getAvailableDVNs();  // All DVN names
///   (string[] memory names, address[] memory addrs) = ctx.getDVNsForCurrentChain();
contract LZAddressContext is ILZAddressContext {
    LZProtocol public immutable protocol;
    
    uint32 private _currentEid;
    string private _currentChainName;
    
    /// @notice Create a new context
    constructor() {
        protocol = new LZProtocol();
    }
    
    /// @notice Make all internal contracts persistent across fork switches
    /// @dev Call this once after creating the context for fork tests
    /// @param vm The Foundry VM instance
    function makePersistent(Vm vm) external {
        vm.makePersistent(address(this));
        vm.makePersistent(address(protocol));
        vm.makePersistent(address(protocol.workers()));
    }
    
    // ============================================
    // Chain Context Setters
    // ============================================
    
    /// @notice Set the current chain context by name
    function setChain(string memory chainName) public {
        require(protocol.isChainSupportedByName(chainName), string.concat("Chain not supported: ", chainName));
        _currentChainName = chainName;
        _currentEid = protocol.getEidByChainName(chainName);
    }

    /// @notice Set the current chain context by EID
    function setChainByEid(uint32 eid) public {
        require(protocol.isChainSupported(eid), string.concat("EID not supported: ", _uint32ToString(eid)));
        _currentEid = eid;
        ILZProtocol.ProtocolAddresses memory addr = protocol.getProtocolAddresses(eid);
        _currentChainName = addr.chainName;
    }

    /// @notice Set the current chain context by chain ID
    function setChainByChainId(uint256 chainId) public {
        // Check if chain is supported first for better error message
        uint32 eid = _tryGetEidFromChainId(chainId);
        require(eid != 0, string.concat("Chain ID not supported: ", _uint256ToString(chainId)));
        setChainByEid(eid);
    }
    
    /// @dev Try to get EID from chain ID, returns 0 if not found
    function _tryGetEidFromChainId(uint256 chainId) private view returns (uint32) {
        try protocol.getEidFromChainId(chainId) returns (uint32 eid) {
            return eid;
        } catch {
            return 0;
        }
    }

    // ============================================
    // Chain Context Getters (current chain)
    // ============================================

    /// @notice Get the current chain name
    function getCurrentChainName() external view returns (string memory) {
        _requireChainSet();
        return _currentChainName;
    }

    /// @notice Get the current chain EID
    function getCurrentEID() external view returns (uint32) {
        _requireChainSet();
        return _currentEid;
    }

    /// @notice Get the current chain's native chain ID
    function getCurrentChainId() external view returns (uint256) {
        _requireChainSet();
        return protocol.getProtocolAddresses(_currentEid).chainId;
    }

    /// @notice Get the Endpoint V2 address for the current chain
    function getEndpoint() external view returns (address) {
        _requireChainSet();
        return protocol.getProtocolAddresses(_currentEid).endpointV2;
    }

    /// @notice Get the Send Library address for the current chain
    function getSendLib() external view returns (address) {
        _requireChainSet();
        return protocol.getProtocolAddresses(_currentEid).sendUln302;
    }
    
    /// @notice Get the Receive Library address for the current chain
    function getReceiveLib() external view returns (address) {
        _requireChainSet();
        return protocol.getProtocolAddresses(_currentEid).receiveUln302;
    }
    
    /// @notice Get the Executor address for the current chain
    function getExecutor() external view returns (address) {
        _requireChainSet();
        return protocol.getProtocolAddresses(_currentEid).executor;
    }

    /// @notice Get all available RPC URLs for the current chain, sorted by rank
    function getRpcUrls() external view returns (string[] memory) {
        _requireChainSet();
        return protocol.getProtocolAddresses(_currentEid).rpcUrls;
    }

    /// @notice Get the primary (highest ranked) RPC URL for the current chain
    /// @dev Returns empty string if no RPC available
    function getPrimaryRpcUrl() external view returns (string memory) {
        _requireChainSet();
        string[] memory rpcs = protocol.getProtocolAddresses(_currentEid).rpcUrls;
        if (rpcs.length > 0) {
            return rpcs[0];
        }
        return "";
    }

    /// @notice Get all protocol addresses for the current chain
    function getProtocolAddresses() external view returns (ILZProtocol.ProtocolAddresses memory) {
        _requireChainSet();
        return protocol.getProtocolAddresses(_currentEid);
    }

    /// @notice Get full deployment info for the current chain
    function getFullDeploymentInfo() external view returns (ILZProtocol.FullDeploymentInfo memory) {
        _requireChainSet();
        return protocol.getFullDeploymentInfo(_currentEid);
    }
    
    /// @notice Get DVN address by name for the current chain
    /// @param dvnName The canonical name of the DVN (e.g., "LayerZero Labs")
    /// @return dvnAddress The address of the DVN on the current chain
    /// @dev Reverts if DVN not found on current chain. Use getAvailableDVNs() to discover DVN names.
    function getDVN(string memory dvnName) external view returns (address dvnAddress) {
        _requireChainSet();
        // Check existence first to provide better error message
        require(
            protocol.workers().dvnExists(dvnName, _currentEid), 
            string.concat("DVN not found on ", _currentChainName, ": ", dvnName)
        );
        return protocol.workers().getDVNAddress(dvnName, _currentEid);
    }
    
    /// @notice Get the LZWorkers registry
    /// @return The workers registry instance
    function workers() external view returns (ILZWorkers) {
        return ILZWorkers(address(protocol.workers()));
    }
    
    // ============================================
    // DVN Discovery
    // ============================================
    
    /// @notice Get all available DVN names across all chains
    /// @return dvnNames Array of all DVN names (e.g., "LayerZero Labs", "Nethermind", etc.)
    function getAvailableDVNs() external view returns (string[] memory dvnNames) {
        return protocol.workers().getAvailableDVNs();
    }
    
    /// @notice Get all DVNs available on the current chain
    /// @return names Array of DVN names available on current chain
    /// @return addresses Array of corresponding DVN addresses
    function getDVNsForCurrentChain() external view returns (string[] memory names, address[] memory addresses) {
        _requireChainSet();
        return protocol.workers().getDVNsForChain(_currentEid);
    }
    
    /// @notice Get all DVNs available on a specific chain
    /// @param chainName The chain name
    /// @return names Array of DVN names
    /// @return addresses Array of corresponding DVN addresses
    function getDVNsForChain(string memory chainName) external view returns (string[] memory names, address[] memory addresses) {
        return protocol.workers().getDVNsForChainByName(chainName);
    }
    
    /// @notice Get multiple DVN addresses by name for the current chain
    /// @param dvnNames Array of DVN names to look up
    /// @return addresses Array of corresponding DVN addresses
    /// @dev Reverts if any DVN is not found on current chain
    function getDVNs(string[] memory dvnNames) external view returns (address[] memory addresses) {
        _requireChainSet();
        addresses = new address[](dvnNames.length);
        for (uint256 i = 0; i < dvnNames.length; i++) {
            require(
                protocol.workers().dvnExists(dvnNames[i], _currentEid),
                string.concat("DVN not found on ", _currentChainName, ": ", dvnNames[i])
            );
            addresses[i] = protocol.workers().getDVNAddress(dvnNames[i], _currentEid);
        }
    }
    
    // ============================================
    // Chain Discovery
    // ============================================
    
    /// @notice Get all supported chain names
    /// @return chainNames Array of all supported chain names (e.g., "arbitrum-mainnet", "base-mainnet", etc.)
    function getSupportedChainNames() external view returns (string[] memory chainNames) {
        uint32[] memory eids = protocol.getSupportedEids();
        chainNames = new string[](eids.length);
        for (uint256 i = 0; i < eids.length; i++) {
            chainNames[i] = protocol.getProtocolAddresses(eids[i]).chainName;
        }
    }
    
    /// @notice Get all supported EIDs
    /// @return eids Array of all supported LayerZero endpoint IDs
    function getSupportedEids() external view returns (uint32[] memory eids) {
        return protocol.getSupportedEids();
    }
    
    // ============================================
    // Cross-Chain Helpers (no context switch needed)
    // ============================================
    
    /// @notice Get EID for any chain by name (doesn't change context)
    /// @param chainName The chain name (e.g., "base-mainnet")
    /// @return eid The endpoint ID
    function getEid(string memory chainName) external view returns (uint32) {
        return protocol.getEidByChainName(chainName);
    }
    
    /// @notice Get endpoint address for any chain (doesn't change context)
    /// @param chainName The chain name
    /// @return endpoint The endpoint address
    function getEndpointFor(string memory chainName) external view returns (address) {
        return protocol.getProtocolAddresses(chainName).endpointV2;
    }
    
    /// @notice Get executor address for any chain (doesn't change context)
    /// @param chainName The chain name
    /// @return executor The executor address
    function getExecutorFor(string memory chainName) external view returns (address) {
        return protocol.getProtocolAddresses(chainName).executor;
    }
    
    /// @notice Get send library address for any chain (doesn't change context)
    /// @param chainName The chain name
    /// @return sendLib The SendUln302 address
    function getSendLibFor(string memory chainName) external view returns (address) {
        return protocol.getProtocolAddresses(chainName).sendUln302;
    }
    
    /// @notice Get receive library address for any chain (doesn't change context)
    /// @param chainName The chain name
    /// @return receiveLib The ReceiveUln302 address
    function getReceiveLibFor(string memory chainName) external view returns (address) {
        return protocol.getProtocolAddresses(chainName).receiveUln302;
    }
    
    /// @notice Get DVN address for any chain (doesn't change context)
    /// @param dvnName The DVN name
    /// @param chainName The chain name
    /// @return dvnAddress The DVN address (address(0) if not found)
    function getDVNFor(string memory dvnName, string memory chainName) external view returns (address) {
        return protocol.workers().getDVNAddressByChainName(dvnName, chainName);
    }
    
    /// @notice Get protocol addresses for any chain (doesn't change context)
    /// @param chainName The chain name
    /// @return addresses The protocol addresses
    function getProtocolAddressesFor(string memory chainName) external view returns (ILZProtocol.ProtocolAddresses memory) {
        return protocol.getProtocolAddresses(chainName);
    }
    
    // ============================================
    // Validation Helpers
    // ============================================
    
    /// @notice Check if a chain is supported by name
    function isChainSupported(string memory chainName) external view returns (bool) {
        return protocol.isChainSupportedByName(chainName);
    }
    
    /// @notice Check if a chain is supported by EID
    function isChainSupportedByEid(uint32 eid) external view returns (bool) {
        return protocol.isChainSupported(eid);
    }
    
    /// @notice Check if a chain is supported by chain ID
    function isChainSupportedByChainId(uint256 chainId) external view returns (bool) {
        try protocol.getEidFromChainId(chainId) returns (uint32 eid) {
            return eid != 0;
        } catch {
            return false;
        }
    }
    
    /// @notice Check if a DVN is available on the current chain
    /// @param dvnName The DVN name to check
    /// @return True if DVN is available on current chain
    function isDVNAvailable(string memory dvnName) external view returns (bool) {
        _requireChainSet();
        return protocol.workers().dvnExists(dvnName, _currentEid);
    }
    
    // ============================================
    // Reverse DVN Lookup (address -> name)
    // ============================================
    
    /// @notice Get DVN provider name from address on current chain
    /// @dev Useful for resolving on-chain UlnConfig.requiredDVNs back to provider names
    /// @param dvnAddress The DVN contract address
    /// @return name The DVN provider name (e.g., "LayerZero Labs")
    function getDVNName(address dvnAddress) external view returns (string memory name) {
        _requireChainSet();
        return protocol.workers().getDVNNameByAddress(dvnAddress, _currentEid);
    }
    
    /// @notice Get DVN provider name from address on any chain
    /// @param dvnAddress The DVN contract address
    /// @param chainName The chain name
    /// @return name The DVN provider name
    function getDVNNameFor(address dvnAddress, string memory chainName) external view returns (string memory name) {
        return protocol.workers().getDVNNameByAddressAndChain(dvnAddress, chainName);
    }
    
    // ============================================
    // Utility Helpers
    // ============================================
    
    /// @notice Convert address to bytes32 for LayerZero peer setting
    function addressToBytes32(address addr) external pure returns (bytes32) {
        return bytes32(uint256(uint160(addr)));
    }
    
    /// @notice Convert bytes32 back to address
    function bytes32ToAddress(bytes32 b) external pure returns (address) {
        return address(uint160(uint256(b)));
    }
    
    // ============================================
    // Internal Helpers
    // ============================================
    
    function _requireChainSet() private view {
        require(_currentEid != 0, "Chain context not set. Call setChain(), setChainByEid(), or setChainByChainId() first.");
    }
    
    function _uint32ToString(uint32 value) private pure returns (string memory) {
        return _uint256ToString(uint256(value));
    }
    
    function _uint256ToString(uint256 value) private pure returns (string memory) {
        if (value == 0) return "0";
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }
}
