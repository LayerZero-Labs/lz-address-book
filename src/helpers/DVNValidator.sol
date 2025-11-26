// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {IDVNValidator} from "./interfaces/IDVNValidator.sol";
import {LZProtocol} from "./LZProtocol.sol";
import {LZWorkers} from "./LZWorkers.sol";

/// @title DVNValidator
/// @notice Helper to validate DVN availability across chains
contract DVNValidator is IDVNValidator {
    LZWorkers public immutable workers;
    LZProtocol public immutable protocol;

    /// @notice Create a new DVN validator
    constructor() {
        protocol = new LZProtocol();
        workers = protocol.workers();
    }

    // --- isDVNAvailableOnBoth ---

    function _isDVNAvailableOnBoth(
        string memory dvnName,
        uint32 srcEid,
        uint32 dstEid
    ) internal view returns (bool available) {
        bool srcExists = workers.dvnExists(dvnName, srcEid);
        bool dstExists = workers.dvnExists(dvnName, dstEid);
        return srcExists && dstExists;
    }

    /// @notice Check if a DVN is available on both chains (by Name)
    function isDVNAvailableOnBoth(
        string memory dvnName,
        string memory srcChain,
        string memory dstChain
    ) public view override returns (bool available) {
        uint32 srcEid = protocol.getEidByChainName(srcChain);
        uint32 dstEid = protocol.getEidByChainName(dstChain);
        return _isDVNAvailableOnBoth(dvnName, srcEid, dstEid);
    }

    /// @notice Check if a DVN is available on both chains (by ChainID)
    function isDVNAvailableOnBothByChainId(
        string memory dvnName,
        uint256 srcChainId,
        uint256 dstChainId
    ) public view override returns (bool available) {
        uint32 srcEid = protocol.getEidFromChainId(srcChainId);
        uint32 dstEid = protocol.getEidFromChainId(dstChainId);
        return _isDVNAvailableOnBoth(dvnName, srcEid, dstEid);
    }

    /// @notice Check if a DVN is available on both chains (by EID)
    function isDVNAvailableOnBothByEid(
        string memory dvnName,
        uint32 srcEid,
        uint32 dstEid
    ) public view override returns (bool available) {
        return _isDVNAvailableOnBoth(dvnName, srcEid, dstEid);
    }
    
    // --- getDVNAvailability ---

    function _getDVNAvailability(
        string memory dvnName,
        uint32 srcEid,
        uint32 dstEid
    ) internal view returns (DVNAvailability memory details) {
        bool srcExists = workers.dvnExists(dvnName, srcEid);
        bool dstExists = workers.dvnExists(dvnName, dstEid);
        
        address srcAddr = srcExists ? workers.getDVNAddress(dvnName, srcEid) : address(0);
        address dstAddr = dstExists ? workers.getDVNAddress(dvnName, dstEid) : address(0);
        
        return DVNAvailability({
            dvnName: dvnName,
            availableOnSource: srcExists,
            availableOnDest: dstExists,
            sourceAddress: srcAddr,
            destAddress: dstAddr
        });
    }

    /// @notice Get availability info for a DVN across a pathway (by Name)
    function getDVNAvailability(
        string memory dvnName,
        string memory srcChain,
        string memory dstChain
    ) public view override returns (DVNAvailability memory details) {
        uint32 srcEid = protocol.getEidByChainName(srcChain);
        uint32 dstEid = protocol.getEidByChainName(dstChain);
        return _getDVNAvailability(dvnName, srcEid, dstEid);
    }

    /// @notice Get availability info for a DVN across a pathway (by ChainID)
    function getDVNAvailabilityByChainId(
        string memory dvnName,
        uint256 srcChainId,
        uint256 dstChainId
    ) public view override returns (DVNAvailability memory details) {
        uint32 srcEid = protocol.getEidFromChainId(srcChainId);
        uint32 dstEid = protocol.getEidFromChainId(dstChainId);
        return _getDVNAvailability(dvnName, srcEid, dstEid);
    }

    /// @notice Get availability info for a DVN across a pathway (by EID)
    function getDVNAvailabilityByEid(
        string memory dvnName,
        uint32 srcEid,
        uint32 dstEid
    ) public view override returns (DVNAvailability memory details) {
        return _getDVNAvailability(dvnName, srcEid, dstEid);
    }
    
    // --- validateDVNsForPathway ---

    /// @notice Validate a list of DVNs for a pathway (by Name)
    function validateDVNsForPathway(
        string[] memory dvnNames,
        string memory srcChain,
        string memory dstChain
    ) external view override returns (
        bool allAvailable,
        DVNAvailability[] memory details
    ) {
        uint32 srcEid = protocol.getEidByChainName(srcChain);
        uint32 dstEid = protocol.getEidByChainName(dstChain);
        return validateDVNsForPathwayByEid(dvnNames, srcEid, dstEid);
    }

    /// @notice Validate a list of DVNs for a pathway (by ChainID)
    function validateDVNsForPathwayByChainId(
        string[] memory dvnNames,
        uint256 srcChainId,
        uint256 dstChainId
    ) external view override returns (
        bool allAvailable,
        DVNAvailability[] memory details
    ) {
        uint32 srcEid = protocol.getEidFromChainId(srcChainId);
        uint32 dstEid = protocol.getEidFromChainId(dstChainId);
        return validateDVNsForPathwayByEid(dvnNames, srcEid, dstEid);
    }

    /// @notice Validate a list of DVNs for a pathway (by EID)
    function validateDVNsForPathwayByEid(
        string[] memory dvnNames,
        uint32 srcEid,
        uint32 dstEid
    ) public view override returns (
        bool allAvailable,
        DVNAvailability[] memory details
    ) {
        details = new DVNAvailability[](dvnNames.length);
        allAvailable = true;
        
        for (uint i = 0; i < dvnNames.length; i++) {
            details[i] = _getDVNAvailability(dvnNames[i], srcEid, dstEid);
            if (!details[i].availableOnSource || !details[i].availableOnDest) {
                allAvailable = false;
            }
        }
    }
    
    // --- getCommonDVNs ---

    function _getCommonDVNs(
        uint32 srcEid,
        uint32 dstEid
    ) internal view returns (string[] memory dvnNames) {
        string[] memory allDvns = workers.getAvailableDVNs();
        
        // First pass: count matches
        uint256 count = 0;
        for (uint i = 0; i < allDvns.length; i++) {
            if (_isDVNAvailableOnBoth(allDvns[i], srcEid, dstEid)) {
                count++;
            }
        }
        
        // Second pass: fill array
        dvnNames = new string[](count);
        uint256 idx = 0;
        for (uint i = 0; i < allDvns.length; i++) {
            if (_isDVNAvailableOnBoth(allDvns[i], srcEid, dstEid)) {
                dvnNames[idx] = allDvns[i];
                idx++;
            }
        }
    }

    /// @notice Get all DVNs available on BOTH chains (by Name)
    function getCommonDVNs(
        string memory srcChain,
        string memory dstChain
    ) external view override returns (string[] memory dvnNames) {
        uint32 srcEid = protocol.getEidByChainName(srcChain);
        uint32 dstEid = protocol.getEidByChainName(dstChain);
        return _getCommonDVNs(srcEid, dstEid);
    }

    /// @notice Get all DVNs available on BOTH chains (by ChainID)
    function getCommonDVNsByChainId(
        uint256 srcChainId,
        uint256 dstChainId
    ) external view override returns (string[] memory dvnNames) {
        uint32 srcEid = protocol.getEidFromChainId(srcChainId);
        uint32 dstEid = protocol.getEidFromChainId(dstChainId);
        return _getCommonDVNs(srcEid, dstEid);
    }

    /// @notice Get all DVNs available on BOTH chains (by EID)
    function getCommonDVNsByEid(
        uint32 srcEid,
        uint32 dstEid
    ) public view override returns (string[] memory dvnNames) {
        return _getCommonDVNs(srcEid, dstEid);
    }
}
