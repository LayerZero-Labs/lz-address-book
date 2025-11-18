// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title ILZWorkers
/// @notice Interface for retrieving LayerZero worker addresses (DVNs, executors) by canonical name
interface ILZWorkers {
    /// @notice Get DVN address by canonical name and endpoint ID
    /// @param dvnName The canonical name of the DVN (e.g., "LayerZero Labs")
    /// @param eid The endpoint ID of the chain
    /// @return dvnAddress The address of the DVN on the specified chain
    function getDVNAddress(string memory dvnName, uint32 eid) external view returns (address dvnAddress);
    
    /// @notice Get DVN address by canonical name and chain name
    /// @param dvnName The canonical name of the DVN
    /// @param chainName The name of the chain (e.g., "ethereum-mainnet")
    /// @return dvnAddress The address of the DVN on the specified chain
    function getDVNAddressByChainName(string memory dvnName, string memory chainName) external view returns (address dvnAddress);
    
    /// @notice Check if a DVN exists on a specific chain
    /// @param dvnName The canonical name of the DVN
    /// @param eid The endpoint ID of the chain
    /// @return exists Whether the DVN exists on the specified chain
    function dvnExists(string memory dvnName, uint32 eid) external view returns (bool exists);
    
    /// @notice Get all available DVN names
    /// @return dvnNames Array of all registered DVN canonical names
    function getAvailableDVNs() external view returns (string[] memory dvnNames);
    
    /// @notice Get all DVN addresses for a specific chain
    /// @param eid The endpoint ID of the chain
    /// @return names Array of DVN canonical names
    /// @return addresses Array of corresponding DVN addresses
    function getDVNsForChain(uint32 eid) external view returns (string[] memory names, address[] memory addresses);
    
    /// @notice Get all DVN addresses for a specific chain by name
    /// @param chainName The name of the chain
    /// @return names Array of DVN canonical names
    /// @return addresses Array of corresponding DVN addresses
    function getDVNsForChainByName(string memory chainName) external view returns (string[] memory names, address[] memory addresses);
    
    /// @notice Get multiple DVN addresses by chain name (enhanced API with chainName first)
    /// @param chainName The name of the chain
    /// @param dvnNames Array of DVN canonical names to retrieve
    /// @return addresses Array of corresponding DVN addresses
    function getDVNAddresses(string memory chainName, string[] memory dvnNames) external view returns (address[] memory addresses);
}

