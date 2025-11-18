// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {ILZProtocol} from "../helpers/interfaces/ILZProtocol.sol";
import {Vm} from "forge-std/Vm.sol";

/// @title LZUtils
/// @notice Common utility functions for LayerZero development
/// @dev Provides frequently used helper functions to avoid code duplication
library LZUtils {
    
    // Forge VM for environment access
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));
    
    /// @notice Convert address to bytes32 for LayerZero peer setting
    /// @param addr The address to convert
    /// @return The address as bytes32
    function addressToBytes32(address addr) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(addr)));
    }
    
    /// @notice Convert bytes32 back to address
    /// @param b The bytes32 to convert
    /// @return The bytes32 as address
    function bytes32ToAddress(bytes32 b) internal pure returns (address) {
        return address(uint160(uint256(b)));
    }
    
    /// @notice Check if an address is zero
    /// @param addr The address to check
    /// @return True if address is zero
    function isZeroAddress(address addr) internal pure returns (bool) {
        return addr == address(0);
    }
    
    /// @notice Get EID for a chain name (helper for cleaner code)
    /// @param protocolProvider The protocol address provider
    /// @param chainName The chain name
    /// @return The endpoint ID for the chain
    function getEid(ILZProtocol protocolProvider, string memory chainName) internal view returns (uint32) {
        return protocolProvider.getEidByChainName(chainName);
    }
    
    /// @notice Get EID for a chain ID (helper for cleaner code)
    /// @param protocolProvider The protocol address provider
    /// @param chainId The chain ID (e.g., 42161 for Arbitrum)
    /// @return The endpoint ID for the chain
    function getEidFromChainId(ILZProtocol protocolProvider, uint256 chainId) internal view returns (uint32) {
        return protocolProvider.getEidFromChainId(chainId);
    }
    
    /// @notice Get protocol addresses for a chain (helper for cleaner code)
    /// @param protocolProvider The protocol address provider
    /// @param chainName The chain name
    /// @return The protocol addresses for the chain
    function getProtocol(ILZProtocol protocolProvider, string memory chainName) 
        internal 
        view 
        returns (ILZProtocol.ProtocolAddresses memory) 
    {
        return protocolProvider.getProtocolAddresses(getEid(protocolProvider, chainName));
    }
    
    /// @notice Get RPC URL for a chain dynamically using its name
    /// @param chainName The chain name (e.g., "arbitrum-mainnet")
    /// @return The RPC URL from environment variable
    function getRpcUrl(string memory chainName) internal view returns (string memory) {
        // Build the environment variable name dynamically
        // Convert "arbitrum-mainnet" to "ARBITRUM_MAINNET_RPC_URL"
        string memory envVarName = buildRpcEnvVarName(chainName);
        
        // Try to get the URL from environment
        try vm.envString(envVarName) returns (string memory url) {
            return url;
        } catch {
            // If not found, try the chain name directly as RPC alias in foundry.toml
            try vm.rpcUrl(chainName) returns (string memory url) {
                return url;
            } catch {
                revert(string.concat("No RPC URL found for chain: ", chainName, 
                    ". Set ", envVarName, " or add to foundry.toml"));
            }
        }
    }
    
    /// @notice Build environment variable name for RPC URL
    /// @param chainName The chain name (e.g., "arbitrum-mainnet")
    /// @return The environment variable name (e.g., "ARBITRUM_MAINNET_RPC_URL")
    function buildRpcEnvVarName(string memory chainName) internal pure returns (string memory) {
        // Convert to uppercase and replace hyphens with underscores
        bytes memory input = bytes(chainName);
        bytes memory output = new bytes(input.length + 8); // +8 for "_RPC_URL"
        
        for (uint i = 0; i < input.length; i++) {
            if (input[i] == "-") {
                output[i] = "_";
            } else if (input[i] >= "a" && input[i] <= "z") {
                // Convert to uppercase
                output[i] = bytes1(uint8(input[i]) - 32);
            } else {
                output[i] = input[i];
            }
        }
        
        // Append "_RPC_URL"
        bytes memory suffix = bytes("_RPC_URL");
        for (uint i = 0; i < suffix.length; i++) {
            output[input.length + i] = suffix[i];
        }
        
        // Resize to actual length
        assembly {
            mstore(output, add(mload(input), 8))
        }
        
        return string(output);
    }
}

