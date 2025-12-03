// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title ISTGProtocol
/// @notice Interface for retrieving Stargate pool and OFT addresses
/// @dev Naming convention:
///      - get{Object}()              → Primary lookup (by chain name for Stargate)
///      - get{Object}By{Identifier}  → Single item by specific identifier
///      - get{Objects}For{Scope}     → Multiple items for a scope
///      - is{Identifier}Supported()  → Boolean support check
///      - {object}Exists()           → Existence check
///
///      All Stargate contracts (StargatePool and StargateOFT) implement the IOFT interface
interface ISTGProtocol {
    /*//////////////////////////////////////////////////////////////
                                 STRUCTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Stargate contract type
    enum StargateType {
        POOL, // StargatePool - native asset chains with deep liquidity (lock/unlock)
        OFT // StargateOFT - Hydra chains with minted representations (mint/burn)

    }

    /// @notice Stargate asset information
    struct StargateAsset {
        address oft; // The IOFT contract (StargatePool or StargateOFT)
        address token; // Underlying ERC20 or address(0) for native
        string symbol; // e.g., "USDC", "USDC.e", "ETH"
        uint8 decimals; // Token decimals
        uint8 sharedDecimals; // LayerZero shared decimals for cross-chain
        StargateType stargateType;
        bool exists; // Whether this asset is registered
    }

    /*//////////////////////////////////////////////////////////////
                          ASSET LOOKUPS
    //////////////////////////////////////////////////////////////*/

    /// @notice Get Stargate asset by chain name and symbol (primary lookup)
    /// @param chainName The Stargate chain name (e.g., "arbitrum", "base")
    /// @param symbol The asset symbol (e.g., "USDC", "ETH")
    /// @return asset The Stargate asset information
    function getAsset(string memory chainName, string memory symbol) external view returns (StargateAsset memory asset);

    /// @notice Get Stargate asset by EID and symbol
    /// @param eid The LayerZero endpoint ID
    /// @param symbol The asset symbol
    /// @return asset The Stargate asset information
    function getAssetByEid(uint32 eid, string memory symbol) external view returns (StargateAsset memory asset);

    /// @notice Get Stargate asset by chain ID and symbol
    /// @param chainId The native chain ID (e.g., 42161 for Arbitrum)
    /// @param symbol The asset symbol
    /// @return asset The Stargate asset information
    function getAssetByChainId(uint256 chainId, string memory symbol) external view returns (StargateAsset memory asset);

    /*//////////////////////////////////////////////////////////////
                      ALL ASSETS FOR A CHAIN
    //////////////////////////////////////////////////////////////*/

    /// @notice Get all Stargate assets for a chain by chain name
    /// @param chainName The Stargate chain name
    /// @return assets Array of all Stargate assets on the chain
    function getAssetsForChainName(string memory chainName) external view returns (StargateAsset[] memory assets);

    /// @notice Get all Stargate assets for a chain by EID
    /// @param eid The LayerZero endpoint ID
    /// @return assets Array of all Stargate assets on the chain
    function getAssetsForEid(uint32 eid) external view returns (StargateAsset[] memory assets);

    /// @notice Get all Stargate assets for a chain by chain ID
    /// @param chainId The native chain ID
    /// @return assets Array of all Stargate assets on the chain
    function getAssetsForChainId(uint256 chainId) external view returns (StargateAsset[] memory assets);

    /*//////////////////////////////////////////////////////////////
                        TOKEN MESSAGING
    //////////////////////////////////////////////////////////////*/

    /// @notice Get TokenMessaging address by chain name (primary lookup)
    /// @param chainName The Stargate chain name
    /// @return tokenMessaging The TokenMessaging contract address
    function getTokenMessaging(string memory chainName) external view returns (address tokenMessaging);

    /// @notice Get TokenMessaging address by EID
    /// @param eid The LayerZero endpoint ID
    /// @return tokenMessaging The TokenMessaging contract address
    function getTokenMessagingByEid(uint32 eid) external view returns (address tokenMessaging);

    /// @notice Get TokenMessaging address by chain ID
    /// @param chainId The native chain ID
    /// @return tokenMessaging The TokenMessaging contract address
    function getTokenMessagingByChainId(uint256 chainId) external view returns (address tokenMessaging);

    /*//////////////////////////////////////////////////////////////
                        CHAIN NAME LOOKUPS
    //////////////////////////////////////////////////////////////*/

    /// @notice Get Stargate chain name by EID
    /// @param eid The LayerZero endpoint ID
    /// @return chainName The Stargate chain name
    function getChainNameByEid(uint32 eid) external view returns (string memory chainName);

    /// @notice Get Stargate chain name by chain ID
    /// @param chainId The native chain ID
    /// @return chainName The Stargate chain name
    function getChainNameByChainId(uint256 chainId) external view returns (string memory chainName);

    /*//////////////////////////////////////////////////////////////
                          EXISTENCE CHECKS
    //////////////////////////////////////////////////////////////*/

    /// @notice Check if asset exists by chain name
    /// @param chainName The Stargate chain name
    /// @param symbol The asset symbol
    /// @return exists True if the asset is registered
    function assetExists(string memory chainName, string memory symbol) external view returns (bool exists);

    /// @notice Check if asset exists by EID
    /// @param eid The LayerZero endpoint ID
    /// @param symbol The asset symbol
    /// @return exists True if the asset is registered
    function assetExistsByEid(uint32 eid, string memory symbol) external view returns (bool exists);

    /// @notice Check if asset exists by chain ID
    /// @param chainId The native chain ID
    /// @param symbol The asset symbol
    /// @return exists True if the asset is registered
    function assetExistsByChainId(uint256 chainId, string memory symbol) external view returns (bool exists);

    /*//////////////////////////////////////////////////////////////
                          SUPPORT CHECKS
    //////////////////////////////////////////////////////////////*/

    /// @notice Check if an EID is supported by Stargate
    /// @param eid The LayerZero endpoint ID
    /// @return supported True if EID has Stargate deployments
    function isEidSupported(uint32 eid) external view returns (bool supported);

    /// @notice Check if a chain ID is supported by Stargate
    /// @param chainId The native chain ID
    /// @return supported True if chain ID has Stargate deployments
    function isChainIdSupported(uint256 chainId) external view returns (bool supported);

    /// @notice Check if a chain name is supported by Stargate
    /// @param chainName The Stargate chain name
    /// @return supported True if chain name has Stargate deployments
    function isChainNameSupported(string memory chainName) external view returns (bool supported);

    /*//////////////////////////////////////////////////////////////
                          HYDRA CHECKS
    //////////////////////////////////////////////////////////////*/

    /// @notice Check if asset is StargateOFT (Hydra) by chain name
    /// @param chainName The Stargate chain name
    /// @param symbol The asset symbol
    /// @return isHydra True if the asset is a StargateOFT (Hydra chain)
    function isHydraChain(string memory chainName, string memory symbol) external view returns (bool isHydra);

    /// @notice Check if asset is StargateOFT (Hydra) by EID
    /// @param eid The LayerZero endpoint ID
    /// @param symbol The asset symbol
    /// @return isHydra True if the asset is a StargateOFT
    function isHydraChainByEid(uint32 eid, string memory symbol) external view returns (bool isHydra);

    /// @notice Check if asset is StargateOFT (Hydra) by chain ID
    /// @param chainId The native chain ID
    /// @param symbol The asset symbol
    /// @return isHydra True if the asset is a StargateOFT
    function isHydraChainByChainId(uint256 chainId, string memory symbol) external view returns (bool isHydra);

    /*//////////////////////////////////////////////////////////////
                            DISCOVERY
    //////////////////////////////////////////////////////////////*/

    /// @notice Get all supported asset symbols across all chains
    /// @return symbols Array of all unique asset symbols
    function getSupportedSymbols() external view returns (string[] memory symbols);

    /// @notice Get all supported Stargate chain names
    /// @return chainNames Array of all chain names with Stargate deployments
    function getSupportedChainNames() external view returns (string[] memory chainNames);

}
