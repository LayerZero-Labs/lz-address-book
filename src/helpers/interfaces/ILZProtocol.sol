// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title ILZProtocol
/// @notice Interface for retrieving LayerZero protocol addresses
/// @dev Naming convention:
///      - get{Object}()              → Primary lookup (by EID for LZ protocol)
///      - get{Object}By{Identifier}  → Single item by specific identifier
///      - get{Objects}For{Scope}     → Multiple items for a scope
///      - is{Identifier}Supported()  → Boolean support check
interface ILZProtocol {
    /*//////////////////////////////////////////////////////////////
                                 STRUCTS
    //////////////////////////////////////////////////////////////*/

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
        address[] allDVNs;
        string[] allDVNNames;
        // Metadata
        bool exists;
    }

    struct PathwayInfo {
        FullDeploymentInfo source;
        FullDeploymentInfo destination;
        bool connected;
    }

    /*//////////////////////////////////////////////////////////////
                          PROTOCOL ADDRESSES
    //////////////////////////////////////////////////////////////*/

    /// @notice Get protocol addresses by EID (primary lookup)
    /// @param eid The LayerZero endpoint ID
    /// @return addresses The protocol addresses for the chain
    function getProtocolAddresses(uint32 eid) external view returns (ProtocolAddresses memory addresses);

    /// @notice Get protocol addresses by chain name
    /// @param chainName The chain name (e.g., "arbitrum-mainnet")
    /// @return addresses The protocol addresses for the chain
    function getProtocolAddressesByChainName(string memory chainName)
        external
        view
        returns (ProtocolAddresses memory addresses);

    /// @notice Get protocol addresses by native chain ID
    /// @param chainId The native chain ID (e.g., 42161 for Arbitrum)
    /// @return addresses The protocol addresses for the chain
    function getProtocolAddressesByChainId(uint256 chainId)
        external
        view
        returns (ProtocolAddresses memory addresses);

    /*//////////////////////////////////////////////////////////////
                          FULL DEPLOYMENT INFO
    //////////////////////////////////////////////////////////////*/

    /// @notice Get full deployment info by EID (primary lookup)
    /// @param eid The LayerZero endpoint ID
    /// @return info The full deployment info including DVNs
    function getFullDeploymentInfo(uint32 eid) external view returns (FullDeploymentInfo memory info);

    /// @notice Get full deployment info by chain name
    /// @param chainName The chain name
    /// @return info The full deployment info including DVNs
    function getFullDeploymentInfoByChainName(string memory chainName)
        external
        view
        returns (FullDeploymentInfo memory info);

    /// @notice Get full deployment info by native chain ID
    /// @param chainId The native chain ID
    /// @return info The full deployment info including DVNs
    function getFullDeploymentInfoByChainId(uint256 chainId) external view returns (FullDeploymentInfo memory info);

    /*//////////////////////////////////////////////////////////////
                            PATHWAY INFO
    //////////////////////////////////////////////////////////////*/

    /// @notice Get pathway info by chain names
    /// @param srcChainName The source chain name
    /// @param dstChainName The destination chain name
    /// @return info The pathway info containing source and destination details
    function getPathwayInfo(string memory srcChainName, string memory dstChainName)
        external
        view
        returns (PathwayInfo memory info);

    /// @notice Get pathway info by EIDs
    /// @param srcEid The source endpoint ID
    /// @param dstEid The destination endpoint ID
    /// @return info The pathway info containing source and destination details
    function getPathwayInfoByEid(uint32 srcEid, uint32 dstEid) external view returns (PathwayInfo memory info);

    /*//////////////////////////////////////////////////////////////
                            EID LOOKUPS
    //////////////////////////////////////////////////////////////*/

    /// @notice Get EID by chain name
    /// @param chainName The chain name (e.g., "ethereum-mainnet")
    /// @return eid The LayerZero endpoint ID
    function getEidByChainName(string memory chainName) external view returns (uint32 eid);

    /// @notice Get EID by native chain ID
    /// @param chainId The native chain ID (e.g., 42161 for Arbitrum)
    /// @return eid The LayerZero endpoint ID
    function getEidByChainId(uint256 chainId) external view returns (uint32 eid);

    /*//////////////////////////////////////////////////////////////
                         CHAIN NAME LOOKUPS
    //////////////////////////////////////////////////////////////*/

    /// @notice Get chain name by EID
    /// @param eid The LayerZero endpoint ID
    /// @return chainName The chain name
    function getChainNameByEid(uint32 eid) external view returns (string memory chainName);

    /// @notice Get chain name by native chain ID
    /// @param chainId The native chain ID
    /// @return chainName The chain name
    function getChainNameByChainId(uint256 chainId) external view returns (string memory chainName);

    /*//////////////////////////////////////////////////////////////
                          SUPPORT CHECKS
    //////////////////////////////////////////////////////////////*/

    /// @notice Check if an EID is supported
    /// @param eid The LayerZero endpoint ID
    /// @return supported Whether the EID is supported
    function isEidSupported(uint32 eid) external view returns (bool supported);

    /// @notice Check if a chain ID is supported
    /// @param chainId The native chain ID
    /// @return supported Whether the chain ID is supported
    function isChainIdSupported(uint256 chainId) external view returns (bool supported);

    /// @notice Check if a chain name is supported
    /// @param chainName The chain name
    /// @return supported Whether the chain name is supported
    function isChainNameSupported(string memory chainName) external view returns (bool supported);

    /*//////////////////////////////////////////////////////////////
                            DISCOVERY
    //////////////////////////////////////////////////////////////*/

    /// @notice Get all supported EIDs
    /// @return eids Array of supported LayerZero endpoint IDs
    function getSupportedEids() external view returns (uint32[] memory eids);

    /// @notice Get all supported chain names
    /// @return chainNames Array of supported chain names
    function getSupportedChainNames() external view returns (string[] memory chainNames);

}
