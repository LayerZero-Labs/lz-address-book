// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title IDVNValidator
/// @notice Interface for validating DVN availability across chains
interface IDVNValidator {
    struct DVNAvailability {
        string dvnName;
        bool availableOnSource;
        bool availableOnDest;
        address sourceAddress;
        address destAddress;
    }
    
    /// @notice Check if a DVN is available on both chains (by Name)
    function isDVNAvailableOnBoth(
        string memory dvnName,
        string memory srcChain,
        string memory dstChain
    ) external view returns (bool available);

    /// @notice Check if a DVN is available on both chains (by EID)
    function isDVNAvailableOnBothByEid(
        string memory dvnName,
        uint32 srcEid,
        uint32 dstEid
    ) external view returns (bool available);

    /// @notice Check if a DVN is available on both chains (by ChainID)
    function isDVNAvailableOnBothByChainId(
        string memory dvnName,
        uint256 srcChainId,
        uint256 dstChainId
    ) external view returns (bool available);
    
    /// @notice Get availability info for a DVN across a pathway (by Name)
    function getDVNAvailability(
        string memory dvnName,
        string memory srcChain,
        string memory dstChain
    ) external view returns (DVNAvailability memory details);

    /// @notice Get availability info for a DVN across a pathway (by EID)
    function getDVNAvailabilityByEid(
        string memory dvnName,
        uint32 srcEid,
        uint32 dstEid
    ) external view returns (DVNAvailability memory details);

    /// @notice Get availability info for a DVN across a pathway (by ChainID)
    function getDVNAvailabilityByChainId(
        string memory dvnName,
        uint256 srcChainId,
        uint256 dstChainId
    ) external view returns (DVNAvailability memory details);
    
    /// @notice Validate a list of DVNs for a pathway (by Name)
    function validateDVNsForPathway(
        string[] memory dvnNames,
        string memory srcChain,
        string memory dstChain
    ) external view returns (
        bool allAvailable,
        DVNAvailability[] memory details
    );

    /// @notice Validate a list of DVNs for a pathway (by EID)
    function validateDVNsForPathwayByEid(
        string[] memory dvnNames,
        uint32 srcEid,
        uint32 dstEid
    ) external view returns (
        bool allAvailable,
        DVNAvailability[] memory details
    );

    /// @notice Validate a list of DVNs for a pathway (by ChainID)
    function validateDVNsForPathwayByChainId(
        string[] memory dvnNames,
        uint256 srcChainId,
        uint256 dstChainId
    ) external view returns (
        bool allAvailable,
        DVNAvailability[] memory details
    );
    
    /// @notice Get all DVNs available on BOTH chains (by Name)
    function getCommonDVNs(
        string memory srcChain,
        string memory dstChain
    ) external view returns (string[] memory dvnNames);

    /// @notice Get all DVNs available on BOTH chains (by EID)
    function getCommonDVNsByEid(
        uint32 srcEid,
        uint32 dstEid
    ) external view returns (string[] memory dvnNames);

    /// @notice Get all DVNs available on BOTH chains (by ChainID)
    function getCommonDVNsByChainId(
        uint256 srcChainId,
        uint256 dstChainId
    ) external view returns (string[] memory dvnNames);
}

