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
///   DEPLOYER=0xYourAddress forge script DeployOFTMock --rpc-url arbitrum-mainnet --account deployer --broadcast
///   DEPLOYER=0xYourAddress forge script DeployOFTMock --rpc-url base-mainnet --account deployer --broadcast
///   DEPLOYER=0xYourAddress forge script DeployOFTMock --rpc-url optimism-mainnet --account deployer --broadcast
///
/// After deployment, copy the addresses into your configuration script
/// (e.g., ConfigureByChainId.s.sol, ConfigureByChainName.s.sol, or ConfigureByEid.s.sol)
contract DeployOFTMock is Script {
    function run() external {
        // Get deployer from environment variable
        address deployer = vm.envAddress("DEPLOYER");

        // Token configuration
        string memory name = "My OFT";
        string memory symbol = "MOFT";

        // Get endpoint for current chain
        LZAddressContext ctx = new LZAddressContext();
        ctx.setChainByChainId(block.chainid);

        address endpoint = ctx.getEndpoint();

        console.log("=== Deploying OFTMock ===");
        console.log("Chain ID:", block.chainid);
        console.log("Endpoint:", endpoint);
        console.log("Deployer:", deployer);
        console.log("");

        vm.startBroadcast(deployer);

        OFTMock oft = new OFTMock(name, symbol, endpoint, deployer);

        vm.stopBroadcast();

        console.log("OFTMock deployed to:", address(oft));
        console.log("");
        console.log("Add this to your configuration script:");
        console.log("  chainId:", block.chainid);
        console.log("  oapp:", address(oft));
    }
}

