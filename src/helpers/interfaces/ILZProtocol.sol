// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title ILZProtocol
/// @notice Interface for retrieving LayerZero protocol addresses
interface ILZProtocol {
    struct ProtocolAddresses {
        address endpointV2;
        address sendUln302;
        address receiveUln302;
        address blockedMessageLib;
        address executor;
        uint256 chainId;
        string chainName;
        string[] rpcUrls;
        bool exists;
    }

    struct FullDeploymentInfo {
        // Chain metadata
        uint32 eid;
        uint256 chainId;
        string chainName;
        string[] rpcUrls;
        
        // Core protocol
        address endpointV2;
        address sendUln302;
        address receiveUln302;
        address blockedMessageLib;
        address executor;
        
        // Workers
        address[] allDVNs;           // All available DVNs addresses
        string[] allDVNNames;        // All available DVN names
        
        // Metadata
        bool exists;
    }

    struct PathwayInfo {
        FullDeploymentInfo source;
        FullDeploymentInfo destination;
        bool connected; // Basic check if both exist
    }
    
    /// @notice Get protocol addresses for a specific EID
    /// @param eid The endpoint ID
    /// @return addresses The protocol addresses for the chain
    function getProtocolAddresses(uint32 eid) external view returns (ProtocolAddresses memory addresses);
    
    /// @notice Check if a chain is supported
    /// @param eid The endpoint ID
    /// @return supported Whether the chain is supported
    function isChainSupported(uint32 eid) external view returns (bool supported);
    
    /// @notice Get all supported EIDs
    /// @return eids Array of supported endpoint IDs
    function getSupportedEids() external view returns (uint32[] memory eids);
    
    /// @notice Get EID by chain name
    /// @param chainName The name of the chain (e.g., "ethereum-mainnet")
    /// @return eid The endpoint ID for the chain
    function getEidByChainName(string memory chainName) external view returns (uint32 eid);
    
    /// @notice Get chain name by EID (reverse lookup)
    /// @param eid The endpoint ID
    /// @return chainName The name of the chain
    function getChainNameByEid(uint32 eid) external view returns (string memory chainName);
    
    /// @notice Get chain name by chain ID (reverse lookup)
    /// @param chainId The native chain ID
    /// @return chainName The name of the chain
    function getChainNameByChainId(uint256 chainId) external view returns (string memory chainName);
    
    /// @notice Get EID by chain ID (uint256 variant)
    /// @param chainId The native chain ID (e.g., 42161 for Arbitrum)
    /// @return eid The endpoint ID for the chain
    function getEidByChainId(uint256 chainId) external view returns (uint32 eid);
    
    /// @notice Get EID by chain ID (uint32 variant)
    /// @param chainId The native chain ID as uint32
    /// @return eid The endpoint ID for the chain
    function getEidByChainId(uint32 chainId) external view returns (uint32 eid);
    
    /// @notice Get EID from chain ID (alias for getEidByChainId, kept for compatibility)
    /// @param chainId The native chain ID (e.g., 42161 for Arbitrum)
    /// @return eid The endpoint ID for the chain
    function getEidFromChainId(uint256 chainId) external view returns (uint32 eid);
    
    /// @notice Get EID from chain ID (uint32 variant, alias for getEidByChainId)
    /// @param chainId The native chain ID as uint32
    /// @return eid The endpoint ID for the chain
    function getEidFromChainId(uint32 chainId) external view returns (uint32 eid);
    
    /// @notice Check if a chain ID is supported
    /// @param chainId The native chain ID to check
    /// @return supported Whether the chain ID is supported
    function isSupportedChainId(uint32 chainId) external view returns (bool supported);
    
    /// @notice Check if a chain ID is supported (uint256 variant)
    /// @param chainId The native chain ID to check
    /// @return supported Whether the chain ID is supported
    function isSupportedChainId(uint256 chainId) external view returns (bool supported);
    
    /// @notice Get current chain's EID using block.chainid
    /// @return eid The EID for the current chain
    function forkingValidChainID() external view returns (uint32 eid);
    
    /// @notice Get protocol addresses by chain name
    /// @param chainName The name of the chain
    /// @return addresses The protocol addresses for the chain
    function getProtocolAddresses(string memory chainName) external view returns (ProtocolAddresses memory addresses);

    /// @notice Get full deployment info by chain name
    /// @param chainName The name of the chain
    /// @return info The full deployment info including DVNs
    function getFullDeploymentInfo(string memory chainName) external view returns (FullDeploymentInfo memory info);

    /// @notice Get full deployment info by EID
    /// @param eid The endpoint ID
    /// @return info The full deployment info including DVNs
    function getFullDeploymentInfo(uint32 eid) external view returns (FullDeploymentInfo memory info);

    /// @notice Get pathway info for source and destination chains
    /// @param srcChain The source chain name
    /// @param dstChain The destination chain name
    /// @return info The pathway info containing source and dest details
    function getPathwayInfo(string memory srcChain, string memory dstChain) external view returns (PathwayInfo memory info);
}

