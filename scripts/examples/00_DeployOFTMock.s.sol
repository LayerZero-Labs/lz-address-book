// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";

import {LZAddressContext} from "../../src/helpers/LZAddressContext.sol";
import {OFTMock} from "../../src/mocks/OFTMock.sol";

/// @title DeployOFTMock
/// @notice Deploy OFTMock to multiple chains
/// @dev Run once per chain:
///
///   forge script 00_DeployOFTMock --rpc-url arbitrum --broadcast --account deployer
///   forge script 00_DeployOFTMock --rpc-url base --broadcast --account deployer
///
/// After deployment, copy the addresses into your configuration script
/// (e.g., 01a_ConfigureByChainId.s.sol)
contract DeployOFTMock is Script {
    function run() external {
        // ============================================================
        // CONFIGURATION - Modify these for your deployment
        // ============================================================

        // The delegate/owner of the OFT
        address delegate = 0x1111111111111111111111111111111111111111;

        // Token metadata
        string memory name = "My OFT";
        string memory symbol = "MOFT";

        // Get endpoint for current chain
        LZAddressContext ctx = new LZAddressContext();
        ctx.setChainByChainId(block.chainid);

        address endpoint = ctx.getEndpointV2();

        console.log("=== Deploying OFTMock ===");
        console.log("Chain ID:", block.chainid);
        console.log("Endpoint:", endpoint);
        console.log("Delegate:", delegate);
        console.log("");

        vm.startBroadcast();

        OFTMock oft = new OFTMock(name, symbol, endpoint, delegate);

        vm.stopBroadcast();

        console.log("OFTMock deployed:", address(oft));
        console.log("");
        console.log("Add to your 01_Configure script:");
        console.log("  oapp:", address(oft));
    }
}

