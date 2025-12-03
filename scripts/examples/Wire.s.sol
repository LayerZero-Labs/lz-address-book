// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {LZAddressContext} from "../../src/helpers/LZAddressContext.sol";
import {LZWireHelper} from "../../src/helpers/LZWireHelper.sol";

/// @title Wire OApp
/// @notice Configure pathway and set peer in one step (matches LZ Hardhat pattern)
/// @dev Uses LZWireHelper for the heavy lifting
///
/// This script:
/// - Auto-detects local chain from block.chainid
/// - Configures DVNs, executor, and libraries
/// - Sets peer to open the messaging channel
///
/// Usage:
///   LOCAL_OAPP=0x... REMOTE_CHAIN=base-mainnet REMOTE_OAPP=0x... \
///     forge script scripts/examples/Wire.s.sol --rpc-url arbitrum --broadcast
///
/// With custom confirmations:
///   LOCAL_OAPP=0x... REMOTE_CHAIN=base-mainnet REMOTE_OAPP=0x... CONFIRMATIONS=20 \
///     forge script scripts/examples/Wire.s.sol --rpc-url arbitrum --broadcast
contract WireScript is Script {
    function run() external {
        // Load environment
        address localOapp = vm.envAddress("LOCAL_OAPP");
        string memory remoteChain = vm.envString("REMOTE_CHAIN");
        address remoteOapp = vm.envAddress("REMOTE_OAPP");
        uint64 confirmations = uint64(vm.envOr("CONFIRMATIONS", uint256(15)));
        
        // Setup context and wire helper
        LZAddressContext ctx = new LZAddressContext();
        LZWireHelper wireHelper = new LZWireHelper(ctx);
        
        ctx.setChainByChainId(block.chainid);
        
        string memory localChain = ctx.getCurrentChainName();
        uint32 remoteEid = ctx.getEid(remoteChain);
        
        console.log("\n=== Wiring OApp ===");
        console.log("Local:", localChain);
        console.log("Local OApp:", localOapp);
        console.log("Remote:", remoteChain, "EID:", remoteEid);
        console.log("Remote OApp:", remoteOapp);
        console.log("Confirmations:", confirmations);
        console.log("===================\n");
        
        // Default DVNs
        string[] memory dvnNames = new string[](2);
        dvnNames[0] = "LayerZero Labs";
        dvnNames[1] = "Nethermind";
        
        vm.startBroadcast();
        
        wireHelper.wire(localOapp, remoteChain, remoteOapp, confirmations, dvnNames);
        
        vm.stopBroadcast();
        
        console.log("\n[SUCCESS] OApp wired to", remoteChain);
        console.log("Channel is now OPEN for messaging.\n");
    }
}

/// @title Wire OApp with Default Config
/// @notice Uses wireDefault() with LZ Labs + Nethermind, 15 confirmations
///
/// Usage:
///   LOCAL_OAPP=0x... REMOTE_CHAIN=base-mainnet REMOTE_OAPP=0x... \
///     forge script scripts/examples/Wire.s.sol:WireDefaultScript --rpc-url arbitrum --broadcast
contract WireDefaultScript is Script {
    function run() external {
        address localOapp = vm.envAddress("LOCAL_OAPP");
        string memory remoteChain = vm.envString("REMOTE_CHAIN");
        address remoteOapp = vm.envAddress("REMOTE_OAPP");
        
        LZAddressContext ctx = new LZAddressContext();
        LZWireHelper wireHelper = new LZWireHelper(ctx);
        
        ctx.setChainByChainId(block.chainid);
        
        string memory localChain = ctx.getCurrentChainName();
        uint32 remoteEid = ctx.getEid(remoteChain);
        
        console.log("\n=== Wiring OApp (Default Config) ===");
        console.log("Local:", localChain);
        console.log("Local OApp:", localOapp);
        console.log("Remote:", remoteChain, "EID:", remoteEid);
        console.log("Remote OApp:", remoteOapp);
        console.log("Config: LZ Labs + Nethermind, 15 confirmations");
        console.log("====================================\n");
        
        vm.startBroadcast();
        
        wireHelper.wireDefault(localOapp, remoteChain, remoteOapp);
        
        vm.stopBroadcast();
        
        console.log("[SUCCESS] OApp wired with default config\n");
    }
}

/// @title Wire OApp with Custom DVNs
/// @notice Wire with custom DVN list via DVNS environment variable
///
/// Usage:
///   LOCAL_OAPP=0x... REMOTE_CHAIN=base-mainnet REMOTE_OAPP=0x... \
///   DVNS="LayerZero Labs,Google Cloud,Nethermind" \
///     forge script scripts/examples/Wire.s.sol:WireCustomDVNsScript --rpc-url arbitrum --broadcast
contract WireCustomDVNsScript is Script {
    function run() external {
        address localOapp = vm.envAddress("LOCAL_OAPP");
        string memory remoteChain = vm.envString("REMOTE_CHAIN");
        address remoteOapp = vm.envAddress("REMOTE_OAPP");
        string memory dvnsInput = vm.envString("DVNS");
        uint64 confirmations = uint64(vm.envOr("CONFIRMATIONS", uint256(15)));
        
        LZAddressContext ctx = new LZAddressContext();
        LZWireHelper wireHelper = new LZWireHelper(ctx);
        
        ctx.setChainByChainId(block.chainid);
        
        string memory localChain = ctx.getCurrentChainName();
        string[] memory dvnNames = _parseDVNs(dvnsInput);
        
        console.log("\n=== Wiring OApp (Custom DVNs) ===");
        console.log("Local:", localChain);
        console.log("Local OApp:", localOapp);
        console.log("Remote:", remoteChain);
        console.log("Remote OApp:", remoteOapp);
        console.log("DVN count:", dvnNames.length);
        console.log("Confirmations:", confirmations);
        console.log("================================\n");
        
        vm.startBroadcast();
        
        wireHelper.wire(localOapp, remoteChain, remoteOapp, confirmations, dvnNames);
        
        vm.stopBroadcast();
        
        console.log("[SUCCESS] OApp wired with custom DVNs\n");
    }
    
    /// @dev Parse comma-separated DVN names
    function _parseDVNs(string memory input) internal pure returns (string[] memory) {
        bytes memory inputBytes = bytes(input);
        
        uint256 count = 1;
        for (uint256 i = 0; i < inputBytes.length; i++) {
            if (inputBytes[i] == ",") count++;
        }
        
        string[] memory result = new string[](count);
        uint256 start = 0;
        uint256 idx = 0;
        
        for (uint256 i = 0; i <= inputBytes.length; i++) {
            if (i == inputBytes.length || inputBytes[i] == ",") {
                bytes memory substr = new bytes(i - start);
                for (uint256 j = start; j < i; j++) {
                    substr[j - start] = inputBytes[j];
                }
                result[idx++] = string(substr);
                start = i + 1;
            }
        }
        return result;
    }
}
