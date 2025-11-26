// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {ILZProtocol} from "./ILZProtocol.sol";
import {Vm} from "forge-std/Vm.sol";

/// @title ILZAddressContext
/// @notice Interface for stateful LayerZero address context management
/// @dev Primary API for accessing LayerZero addresses in Foundry scripts and tests
///
/// @custom:example Basic usage
/// ```solidity
/// LZAddressContext ctx = new LZAddressContext();
/// ctx.setChain("arbitrum-mainnet");
/// address endpoint = ctx.getEndpoint();
/// address dvn = ctx.getDVN("LayerZero Labs");
/// ```
///
/// @custom:example DVN Discovery
/// ```solidity
/// string[] memory allDVNs = ctx.getAvailableDVNs();
/// (string[] memory names, address[] memory addrs) = ctx.getDVNsForCurrentChain();
/// ```
///
/// @custom:example Chain Discovery
/// ```solidity
/// string[] memory chains = ctx.getSupportedChainNames();
/// uint32[] memory eids = ctx.getSupportedEids();
/// ```
interface ILZAddressContext {
    // ============================================
    // Setup & Persistence
    // ============================================

    /// @notice Make all internal contracts persistent across fork switches
    /// @param vm The Foundry VM instance
    function makePersistent(Vm vm) external;

    // ============================================
    // Chain Context Setters
    // ============================================

    /// @notice Set the current chain context by name
    /// @param chainName The name of the chain (e.g., "arbitrum-mainnet")
    function setChain(string memory chainName) external;

    /// @notice Set the current chain context by EID
    /// @param eid The endpoint ID
    function setChainByEid(uint32 eid) external;

    /// @notice Set the current chain context by chain ID
    /// @param chainId The native chain ID
    function setChainByChainId(uint256 chainId) external;

    // ============================================
    // Chain Context Getters (current chain)
    // ============================================

    /// @notice Get the current chain name
    function getCurrentChainName() external view returns (string memory);

    /// @notice Get the current chain EID
    function getCurrentEID() external view returns (uint32);

    /// @notice Get the current chain's native chain ID
    function getCurrentChainId() external view returns (uint256);

    /// @notice Get the Endpoint V2 address for the current chain
    function getEndpoint() external view returns (address);

    /// @notice Get the Send Library address for the current chain
    function getSendLib() external view returns (address);
    
    /// @notice Get the Receive Library address for the current chain
    function getReceiveLib() external view returns (address);
    
    /// @notice Get the Executor address for the current chain
    function getExecutor() external view returns (address);

    /// @notice Get all available RPC URLs for the current chain, sorted by rank
    function getRpcUrls() external view returns (string[] memory);

    /// @notice Get the primary (highest ranked) RPC URL for the current chain
    function getPrimaryRpcUrl() external view returns (string memory);

    /// @notice Get all protocol addresses for the current chain
    function getProtocolAddresses() external view returns (ILZProtocol.ProtocolAddresses memory);

    /// @notice Get full deployment info for the current chain
    function getFullDeploymentInfo() external view returns (ILZProtocol.FullDeploymentInfo memory);
    
    /// @notice Get DVN address by name for the current chain
    /// @param dvnName The canonical name of the DVN (e.g., "LayerZero Labs")
    /// @return dvnAddress The address of the DVN on the current chain
    function getDVN(string memory dvnName) external view returns (address dvnAddress);
    
    // ============================================
    // DVN Discovery & Batch Lookup
    // ============================================
    
    /// @notice Get all available DVN names across all chains
    /// @return dvnNames Array of all DVN names
    function getAvailableDVNs() external view returns (string[] memory dvnNames);
    
    /// @notice Get all DVNs available on the current chain
    /// @return names Array of DVN names
    /// @return addresses Array of corresponding DVN addresses
    function getDVNsForCurrentChain() external view returns (string[] memory names, address[] memory addresses);
    
    /// @notice Get all DVNs available on a specific chain
    /// @param chainName The chain name
    /// @return names Array of DVN names
    /// @return addresses Array of corresponding DVN addresses
    function getDVNsForChain(string memory chainName) external view returns (string[] memory names, address[] memory addresses);
    
    /// @notice Get multiple DVN addresses by name for the current chain
    /// @param dvnNames Array of DVN names to look up
    /// @return addresses Array of corresponding DVN addresses
    function getDVNs(string[] memory dvnNames) external view returns (address[] memory addresses);
    
    // ============================================
    // Chain Discovery
    // ============================================
    
    /// @notice Get all supported chain names
    /// @return chainNames Array of all supported chain names
    function getSupportedChainNames() external view returns (string[] memory chainNames);
    
    /// @notice Get all supported EIDs
    /// @return eids Array of all supported LayerZero endpoint IDs
    function getSupportedEids() external view returns (uint32[] memory eids);
    
    // ============================================
    // Cross-Chain Helpers (no context switch needed)
    // ============================================
    
    /// @notice Get EID for any chain by name
    function getEid(string memory chainName) external view returns (uint32);
    
    /// @notice Get endpoint address for any chain
    function getEndpointFor(string memory chainName) external view returns (address);
    
    /// @notice Get executor address for any chain
    function getExecutorFor(string memory chainName) external view returns (address);
    
    /// @notice Get send library address for any chain
    function getSendLibFor(string memory chainName) external view returns (address);
    
    /// @notice Get receive library address for any chain
    function getReceiveLibFor(string memory chainName) external view returns (address);
    
    /// @notice Get DVN address for any chain
    function getDVNFor(string memory dvnName, string memory chainName) external view returns (address);
    
    /// @notice Get protocol addresses for any chain
    function getProtocolAddressesFor(string memory chainName) external view returns (ILZProtocol.ProtocolAddresses memory);
    
    // ============================================
    // Validation Helpers
    // ============================================
    
    /// @notice Check if a chain is supported by name
    function isChainSupported(string memory chainName) external view returns (bool);
    
    /// @notice Check if a chain is supported by EID
    function isChainSupportedByEid(uint32 eid) external view returns (bool);
    
    /// @notice Check if a chain is supported by chain ID
    function isChainSupportedByChainId(uint256 chainId) external view returns (bool);
    
    /// @notice Check if a DVN is available on the current chain
    function isDVNAvailable(string memory dvnName) external view returns (bool);
    
    // ============================================
    // Utility Helpers
    // ============================================
    
    /// @notice Convert address to bytes32 for LayerZero peer setting
    function addressToBytes32(address addr) external pure returns (bytes32);
    
    /// @notice Convert bytes32 back to address
    function bytes32ToAddress(bytes32 b) external pure returns (address);
}
