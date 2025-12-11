// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IOAppCore} from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppCore.sol";

/// @title TransferOwnership
/// @notice Transfer OApp ownership and endpoint delegate to a new address (e.g., multisig)
/// @dev Run on each chain where the OApp is deployed:
///
///   forge script 02_TransferOwnership --rpc-url arbitrum --broadcast --account deployer
///   forge script 02_TransferOwnership --rpc-url base --broadcast --account deployer
///
/// IMPORTANT: After transfer, only NEW_OWNER can call setPeer, setConfig, etc.
contract TransferOwnership is Script {
    function run() external {
        // ============================================================
        // CONFIGURATION - Modify these for your deployment
        // ============================================================

        // Your OApp address on this chain
        address oapp = 0x1111111111111111111111111111111111111111;

        // The new owner (e.g., your multisig)
        address newOwner = 0x2222222222222222222222222222222222222222;

        // ============================================================
        // EXECUTION
        // ============================================================

        console.log("=== Transferring Ownership ===");
        console.log("Chain ID:", block.chainid);
        console.log("OApp:", oapp);
        console.log("New Owner:", newOwner);
        console.log("");

        vm.startBroadcast();

        // 1. Set new delegate on endpoint (via OApp)
        // The delegate is authorized to call setConfig, setSendLibrary, etc.
        IOAppCore(oapp).setDelegate(newOwner);
        console.log("Endpoint delegate updated to:", newOwner);

        // 2. Transfer OApp ownership (Ownable pattern)
        Ownable(oapp).transferOwnership(newOwner);
        console.log("OApp ownership transferred to:", newOwner);

        vm.stopBroadcast();

        console.log("");
        console.log("=== Done ===");
        console.log("Only", newOwner, "can now configure this OApp");
    }
}
