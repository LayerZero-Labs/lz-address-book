// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title ILZProtocol
/// @notice Interface for retrieving LayerZero protocol addresses
interface ILZProtocol {
    struct ProtocolAddresses {
        address endpointV2;
        address sendUln302;
        address receiveUln302;
        address executor;
        uint256 chainId;
        string chainName;
        bool exists;
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
    
    /// @notice Get EID from chain ID (conversion semantics)
    /// @param chainId The native chain ID (e.g., 42161 for Arbitrum)
    /// @return eid The endpoint ID for the chain
    function getEidFromChainId(uint256 chainId) external view returns (uint32 eid);
    
    /// @notice Get EID from chain ID (uint32 variant)
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
}

