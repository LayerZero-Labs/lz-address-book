// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title LZUtils
/// @notice Pure utility functions for LayerZero development
/// @dev Provides address conversion helpers for LayerZero peer setting
///
/// Usage:
///   using LZUtils for address;
///   bytes32 peer = myAddress.addressToBytes32();
library LZUtils {
    /// @notice Convert address to bytes32 for LayerZero peer setting
    /// @param addr The address to convert
    /// @return The address as bytes32 (left-padded with zeros)
    function addressToBytes32(address addr) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(addr)));
    }

    /// @notice Convert bytes32 back to address
    /// @param b The bytes32 to convert
    /// @return The bytes32 as address (takes lower 20 bytes)
    function bytes32ToAddress(bytes32 b) internal pure returns (address) {
        return address(uint160(uint256(b)));
    }

    /// @notice Check if an address is zero
    /// @param addr The address to check
    /// @return True if address is zero
    function isZeroAddress(address addr) internal pure returns (bool) {
        return addr == address(0);
    }
}
