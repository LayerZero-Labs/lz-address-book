// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {LZAddressContext} from "../../src/helpers/LZAddressContext.sol";
import {IOAppCore} from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppCore.sol";

/// @title SetPeers Script
/// @notice Tutorial: Wire peers between OApp deployments - FINAL configuration step
/// @dev This is the LAST step after deploying and configuring your OApp
///
/// Usage:
///   OAPP_ADDRESS=0x... PEER_CHAIN=base-mainnet PEER_ADDRESS=0x... \
///     forge script scripts/examples/SetPeers.s.sol --broadcast --rpc-url arbitrum
///
/// WARNING: This script opens the messaging channel!
/// - Run ConfigureBy*.s.sol BEFORE this script
/// - Once peers are set, the OApp can receive messages
/// - Ensure all security settings are correct before running
///
/// This script demonstrates:
/// 1. Using LZAddressContext to get EIDs for peer chains
/// 2. Converting addresses to bytes32 for cross-chain compatibility
/// 3. Setting peers to enable bidirectional messaging
contract SetPeersScript is Script {
    function run() external {
        // =============================================
        // STEP 1: Load environment variables
        // =============================================
        address oappAddress = vm.envAddress("OAPP_ADDRESS");
        string memory peerChain = vm.envString("PEER_CHAIN");
        address peerAddress = vm.envAddress("PEER_ADDRESS");
        
        // =============================================
        // STEP 2: Create context and get peer info
        // =============================================
        LZAddressContext ctx = new LZAddressContext();
        
        uint32 peerEid = ctx.getEid(peerChain);
        bytes32 peerBytes32 = ctx.addressToBytes32(peerAddress);
        
        console.log("\n=== Setting Peer ===");
        console.log("OApp:", oappAddress);
        console.log("Peer Chain:", peerChain);
        console.log("Peer EID:", peerEid);
        console.log("Peer Address:", peerAddress);
        console.log("====================\n");
        
        // =============================================
        // STEP 3: Set peer
        // =============================================
        vm.startBroadcast();
        
        IOAppCore(oappAddress).setPeer(peerEid, peerBytes32);
        
        vm.stopBroadcast();
        
        console.log("[SUCCESS] Peer set successfully!");
        console.log("\nThe messaging channel is now OPEN.");
        console.log("Your OApp can send/receive messages to/from", peerChain);
    }
}

