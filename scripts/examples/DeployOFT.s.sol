// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {LZAddressContext} from "../../src/helpers/LZAddressContext.sol";

// Import your OFT contract here
// import {MyOFT} from "../../src/MyOFT.sol";

/// @title Deploy OFT Script
/// @notice Tutorial: Deploy an OFT contract to any LayerZero-supported chain
/// @dev Shows how to use LZAddressContext to get the endpoint address for deployment
///
/// Usage:
///   CHAIN_NAME=arbitrum-mainnet forge script scripts/examples/DeployOFT.s.sol \
///     --rpc-url arbitrum --broadcast
///
/// Or with private key:
///   CHAIN_NAME=arbitrum-mainnet PRIVATE_KEY=0x... forge script scripts/examples/DeployOFT.s.sol \
///     --rpc-url arbitrum --broadcast
///
/// Workflow:
/// 1. Deploy on each chain using this script
/// 2. Configure using ConfigureBy*.s.sol
/// 3. Set peers using SetPeers.s.sol
contract DeployOFTScript is Script {
    function run() external {
        // =============================================
        // STEP 1: Get chain from environment
        // =============================================
        string memory chainName = vm.envString("CHAIN_NAME");
        
        // =============================================
        // STEP 2: Create context and validate chain
        // =============================================
        LZAddressContext ctx = new LZAddressContext();
        
        require(ctx.isChainSupported(chainName), string.concat("Unsupported chain: ", chainName));
        ctx.setChain(chainName);
        
        address endpoint = ctx.getEndpoint();
        uint32 eid = ctx.getCurrentEID();
        
        console.log("\n=== Deploying OFT ===");
        console.log("Chain:", chainName);
        console.log("EID:", eid);
        console.log("Endpoint:", endpoint);
        console.log("=====================\n");
        
        // =============================================
        // STEP 3: Deploy your OFT
        // =============================================
        vm.startBroadcast();
        
        // Example deployment (uncomment and modify for your OFT):
        //
        // MyOFT oft = new MyOFT(
        //     "My Token",           // name
        //     "MTK",                // symbol
        //     endpoint,             // LayerZero endpoint
        //     msg.sender            // owner/delegate
        // );
        //
        // console.log("OFT deployed at:", address(oft));
        
        // Placeholder for demonstration
        console.log("// Uncomment the deployment code above and replace with your OFT");
        console.log("// Example:");
        console.log("// MyOFT oft = new MyOFT('My Token', 'MTK', endpoint, msg.sender);");
        
        vm.stopBroadcast();
        
        console.log("\n=== Deployment Complete ===");
        console.log("Next steps:");
        console.log("1. Deploy on other chains");
        console.log("2. Run ConfigureBy*.s.sol on each chain");
        console.log("3. Run SetPeers.s.sol on each chain");
        console.log("===========================\n");
    }
}

/// @title Deploy OFT Multi-Chain Script
/// @notice Deploy the same OFT to multiple chains in sequence
/// @dev Useful for deploying to all your target chains at once
///
/// Usage:
///   CHAINS=arbitrum-mainnet,base-mainnet,optimism-mainnet forge script \
///     scripts/examples/DeployOFT.s.sol:DeployOFTMultiChainScript --broadcast
contract DeployOFTMultiChainScript is Script {
    function run() external view {
        console.log("\n=== Multi-Chain OFT Deployment ===");
        console.log("");
        console.log("This script demonstrates the pattern for multi-chain deployment.");
        console.log("In practice, you would:");
        console.log("");
        console.log("1. Run DeployOFTScript on each chain separately:");
        console.log("   CHAIN_NAME=arbitrum-mainnet forge script DeployOFT.s.sol --rpc-url arb --broadcast");
        console.log("   CHAIN_NAME=base-mainnet forge script DeployOFT.s.sol --rpc-url base --broadcast");
        console.log("");
        console.log("2. Record each deployed address");
        console.log("");
        console.log("3. Configure each deployment using ConfigureBy*.s.sol");
        console.log("");
        console.log("4. Wire peers using SetPeers.s.sol");
        console.log("");
        console.log("=================================\n");
        
        // Show supported chains
        LZAddressContext ctx = new LZAddressContext();
        
        console.log("Example chains you can deploy to:");
        console.log("- arbitrum-mainnet (EID: 30110)");
        console.log("- base-mainnet (EID: 30184)");
        console.log("- optimism-mainnet (EID: 30111)");
        console.log("- ethereum-mainnet (EID: 30101)");
        console.log("- polygon-mainnet (EID: 30109)");
        console.log("- avalanche-mainnet (EID: 30106)");
        console.log("");
        
        // Validate a few chains
        string[3] memory chains = ["arbitrum-mainnet", "base-mainnet", "optimism-mainnet"];
        for (uint i = 0; i < chains.length; i++) {
            bool supported = ctx.isChainSupported(chains[i]);
            console.log(chains[i], supported ? "[SUPPORTED]" : "[NOT SUPPORTED]");
        }
    }
}

