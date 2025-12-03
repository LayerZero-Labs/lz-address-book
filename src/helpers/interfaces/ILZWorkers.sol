// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title ILZWorkers
/// @notice Interface for retrieving LayerZero worker addresses (DVNs, executors) by canonical name
/// @dev Naming convention:
///      - get{Object}()              → Primary lookup (by EID for LZ workers)
///      - get{Object}By{Identifier}  → Single item by specific identifier
///      - get{Objects}For{Scope}     → Multiple items for a scope (e.g., all DVNs for a chain)
///      - {object}Exists()           → Existence check
interface ILZWorkers {
    /*//////////////////////////////////////////////////////////////
                        SINGLE DVN ADDRESS LOOKUP
    //////////////////////////////////////////////////////////////*/

    /// @notice Get DVN address by name and EID (primary lookup)
    /// @param dvnName The canonical DVN name (e.g., "LayerZero Labs")
    /// @param eid The LayerZero endpoint ID
    /// @return dvnAddress The DVN address on the specified chain
    function getDVNAddress(string memory dvnName, uint32 eid) external view returns (address dvnAddress);

    /// @notice Get DVN address by name and chain name
    /// @param dvnName The canonical DVN name
    /// @param chainName The chain name (e.g., "arbitrum-mainnet")
    /// @return dvnAddress The DVN address on the specified chain
    function getDVNAddressByChainName(string memory dvnName, string memory chainName)
        external
        view
        returns (address dvnAddress);

    /// @notice Get DVN address by name and native chain ID
    /// @param dvnName The canonical DVN name
    /// @param chainId The native chain ID (e.g., 42161 for Arbitrum)
    /// @return dvnAddress The DVN address on the specified chain
    function getDVNAddressByChainId(string memory dvnName, uint256 chainId) external view returns (address dvnAddress);

    /*//////////////////////////////////////////////////////////////
                      MULTIPLE DVN ADDRESSES LOOKUP
    //////////////////////////////////////////////////////////////*/

    /// @notice Get multiple DVN addresses by names and EID
    /// @param dvnNames Array of canonical DVN names
    /// @param eid The LayerZero endpoint ID
    /// @return addresses Array of DVN addresses (in same order as names)
    function getDVNAddresses(string[] memory dvnNames, uint32 eid) external view returns (address[] memory addresses);

    /// @notice Get multiple DVN addresses by names and chain name
    /// @param dvnNames Array of canonical DVN names
    /// @param chainName The chain name
    /// @return addresses Array of DVN addresses (in same order as names)
    function getDVNAddressesByChainName(string[] memory dvnNames, string memory chainName)
        external
        view
        returns (address[] memory addresses);

    /// @notice Get multiple DVN addresses by names and chain ID
    /// @param dvnNames Array of canonical DVN names
    /// @param chainId The native chain ID
    /// @return addresses Array of DVN addresses (in same order as names)
    function getDVNAddressesByChainId(string[] memory dvnNames, uint256 chainId)
        external
        view
        returns (address[] memory addresses);

    /*//////////////////////////////////////////////////////////////
                        ALL DVNS FOR A CHAIN
    //////////////////////////////////////////////////////////////*/

    /// @notice Get all DVNs for a chain by EID
    /// @param eid The LayerZero endpoint ID
    /// @return names Array of DVN canonical names
    /// @return addresses Array of corresponding DVN addresses
    function getDVNsForEid(uint32 eid) external view returns (string[] memory names, address[] memory addresses);

    /// @notice Get all DVNs for a chain by chain name
    /// @param chainName The chain name
    /// @return names Array of DVN canonical names
    /// @return addresses Array of corresponding DVN addresses
    function getDVNsForChainName(string memory chainName)
        external
        view
        returns (string[] memory names, address[] memory addresses);

    /// @notice Get all DVNs for a chain by chain ID
    /// @param chainId The native chain ID
    /// @return names Array of DVN canonical names
    /// @return addresses Array of corresponding DVN addresses
    function getDVNsForChainId(uint256 chainId)
        external
        view
        returns (string[] memory names, address[] memory addresses);

    /*//////////////////////////////////////////////////////////////
                      REVERSE LOOKUP (ADDRESS → NAME)
    //////////////////////////////////////////////////////////////*/

    /// @notice Get DVN name from address and EID
    /// @param dvnAddress The DVN contract address
    /// @param eid The LayerZero endpoint ID
    /// @return name The DVN provider name (e.g., "LayerZero Labs")
    function getDVNNameByAddress(address dvnAddress, uint32 eid) external view returns (string memory name);

    /// @notice Get DVN name from address and chain name
    /// @param dvnAddress The DVN contract address
    /// @param chainName The chain name
    /// @return name The DVN provider name
    function getDVNNameByAddressAndChainName(address dvnAddress, string memory chainName)
        external
        view
        returns (string memory name);

    /// @notice Get DVN name from address and chain ID
    /// @param dvnAddress The DVN contract address
    /// @param chainId The native chain ID
    /// @return name The DVN provider name
    function getDVNNameByAddressAndChainId(address dvnAddress, uint256 chainId)
        external
        view
        returns (string memory name);

    /*//////////////////////////////////////////////////////////////
                          EXISTENCE CHECKS
    //////////////////////////////////////////////////////////////*/

    /// @notice Check if a DVN exists on a chain by EID
    /// @param dvnName The canonical DVN name
    /// @param eid The LayerZero endpoint ID
    /// @return exists Whether the DVN exists on the chain
    function dvnExists(string memory dvnName, uint32 eid) external view returns (bool exists);

    /// @notice Check if a DVN exists on a chain by chain name
    /// @param dvnName The canonical DVN name
    /// @param chainName The chain name
    /// @return exists Whether the DVN exists on the chain
    function dvnExistsByChainName(string memory dvnName, string memory chainName) external view returns (bool exists);

    /// @notice Check if a DVN exists on a chain by chain ID
    /// @param dvnName The canonical DVN name
    /// @param chainId The native chain ID
    /// @return exists Whether the DVN exists on the chain
    function dvnExistsByChainId(string memory dvnName, uint256 chainId) external view returns (bool exists);

    /// @notice Check if a DVN address is registered on a chain
    /// @param dvnAddress The DVN contract address
    /// @param eid The LayerZero endpoint ID
    /// @return exists Whether the DVN address is registered
    function dvnAddressExists(address dvnAddress, uint32 eid) external view returns (bool exists);

    /*//////////////////////////////////////////////////////////////
                            DISCOVERY
    //////////////////////////////////////////////////////////////*/

    /// @notice Get all available DVN names (global across all chains)
    /// @return dvnNames Array of all registered DVN canonical names
    function getAvailableDVNs() external view returns (string[] memory dvnNames);
}
