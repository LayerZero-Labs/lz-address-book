// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {LZProtocol} from "../generated/LZProtocol.sol";
import {ILZProtocol} from "../helpers/interfaces/ILZProtocol.sol";

/// @title ChainFamilies
/// @notice Utilities for grouping chains by type (Mainnet, Testnet, etc.)
library ChainFamilies {
    function getAllTestnets(LZProtocol protocol) internal view returns (uint32[] memory) {
        return _filterChains(protocol, "testnet");
    }

    function getAllMainnets(LZProtocol protocol) internal view returns (uint32[] memory) {
        return _filterChains(protocol, "mainnet");
    }

    function getAllSandboxes(LZProtocol protocol) internal view returns (uint32[] memory) {
        return _filterChains(protocol, "sandbox");
    }

    function _filterChains(LZProtocol protocol, string memory suffix) private view returns (uint32[] memory) {
        uint32[] memory allEids = protocol.getSupportedEids();

        // First pass: count matches
        uint256 count = 0;
        for (uint256 i = 0; i < allEids.length; i++) {
            ILZProtocol.ProtocolAddresses memory addr = protocol.getProtocolAddresses(allEids[i]);
            if (_contains(addr.chainName, suffix)) {
                count++;
            }
        }

        // Second pass: fill array
        uint32[] memory filtered = new uint32[](count);
        uint256 idx = 0;
        for (uint256 i = 0; i < allEids.length; i++) {
            ILZProtocol.ProtocolAddresses memory addr = protocol.getProtocolAddresses(allEids[i]);
            if (_contains(addr.chainName, suffix)) {
                filtered[idx] = allEids[i];
                idx++;
            }
        }

        return filtered;
    }

    /// @dev Check if a string contains a substring (internal use only)
    function _contains(string memory haystack, string memory needle) private pure returns (bool) {
        bytes memory h = bytes(haystack);
        bytes memory n = bytes(needle);
        if (h.length < n.length) return false;

        for (uint256 i = 0; i <= h.length - n.length; i++) {
            bool found = true;
            for (uint256 j = 0; j < n.length; j++) {
                if (h[i + j] != n[j]) {
                    found = false;
                    break;
                }
            }
            if (found) return true;
        }
        return false;
    }
}
