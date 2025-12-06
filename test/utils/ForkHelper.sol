// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";
import {LZAddressContext} from "../../src/helpers/LZAddressContext.sol";
import {ILZProtocol} from "../../src/generated/LZProtocol.sol";

/// @title Fork Helper
/// @notice Abstract contract adding robust fork creation capabilities to tests
/// @dev Centralizes RPC fallback logic using Foundry config, env vars, and address book metadata
abstract contract ForkHelper is Test {
    LZAddressContext internal _forkHelperCtx;

    function setUpForkHelper() internal {
        _forkHelperCtx = new LZAddressContext();
    }

    /// @notice Creates a fork and returns the fork ID
    /// @dev Tries: 1. foundry.toml/env (vm.rpcUrl), 2. Address Book metadata
    /// @param chainName The standardized chain name (e.g., "arbitrum-mainnet")
    /// @return forkId The ID of the created fork, or 0 if failed (and test skipped)
    function _createFork(string memory chainName) internal returns (uint256) {
        // Ensure context is initialized
        if (address(_forkHelperCtx) == address(0)) {
            setUpForkHelper();
        }

        // 1. Try foundry.toml [rpc_endpoints] or environment variable
        // vm.rpcUrl() handles both: checks config first, then env var matching the key
        try vm.rpcUrl(chainName) returns (string memory url) {
            if (bytes(url).length > 0) {
                try vm.createFork(url) returns (uint256 forkId) {
                    return forkId;
                } catch {
                    console.log("Failed to create fork with foundry.toml/env RPC for", chainName);
                }
            }
        } catch {}

        // 2. Try address book metadata
        // We use the context to look up all registered RPCs for this chain
        try _forkHelperCtx.getProtocolAddressesForChainName(chainName) returns (
            ILZProtocol.ProtocolAddresses memory addrs
        ) {
            string[] memory rpcUrls = addrs.rpcUrls;
            for (uint256 i = 0; i < rpcUrls.length; i++) {
                if (bytes(rpcUrls[i]).length > 0) {
                    try vm.createFork(rpcUrls[i]) returns (uint256 forkId) {
                        return forkId;
                    } catch {
                        console.log("Failed to create fork with Address Book RPC:", rpcUrls[i]);
                    }
                }
            }
        } catch {}

        // 3. No working RPC found - skip test gracefully
        console.log("Skipping test: No working RPC found for", chainName);
        vm.skip(true);
        return 0;
    }

    /// @notice Creates and selects a fork in one step
    /// @dev Specialized version for tests that just need to "be" on a chain (like LZAddressForkTest)
    /// @param chainName The standardized chain name (e.g., "arbitrum-mainnet")
    /// @param envKey Optional specific env var key to check first (e.g., "ETHEREUM_MAINNET_RPC_URL")
    /// @param fallbackUrl Optional hardcoded fallback URL
    function _createSelectFork(string memory chainName, string memory envKey, string memory fallbackUrl) internal {
        // Ensure context is initialized
        if (address(_forkHelperCtx) == address(0)) {
            setUpForkHelper();
        }

        // 1. Try specific environment variable if provided
        if (bytes(envKey).length > 0) {
            try vm.envString(envKey) returns (string memory url) {
                if (bytes(url).length > 0) {
                    try vm.createSelectFork(url) {
                        return;
                    } catch {
                        console.log("Failed to create fork with env var", envKey);
                    }
                }
            } catch {}
        }

        // 2. Try standard vm.rpcUrl (foundry.toml)
        try vm.rpcUrl(chainName) returns (string memory url) {
            if (bytes(url).length > 0) {
                try vm.createSelectFork(url) {
                    return;
                } catch {
                    console.log("Failed to create fork with foundry.toml RPC for", chainName);
                }
            }
        } catch {}

        // 3. Try provided fallback URL
        if (bytes(fallbackUrl).length > 0) {
            try vm.createSelectFork(fallbackUrl) {
                return;
            } catch {
                console.log("Failed to create fork with fallback URL:", fallbackUrl);
            }
        }

        // 4. Try address book metadata
        try _forkHelperCtx.getProtocolAddressesForChainName(chainName) returns (
            ILZProtocol.ProtocolAddresses memory addrs
        ) {
            string[] memory rpcUrls = addrs.rpcUrls;
            for (uint256 i = 0; i < rpcUrls.length; i++) {
                if (bytes(rpcUrls[i]).length > 0) {
                    try vm.createSelectFork(rpcUrls[i]) {
                        return;
                    } catch {
                        console.log("Failed to create fork with Address Book RPC:", rpcUrls[i]);
                    }
                }
            }
        } catch {}

        // 5. No working RPC found - skip test gracefully
        console.log("Skipping test: No working RPC found for", chainName);
        vm.skip(true);
    }
}

