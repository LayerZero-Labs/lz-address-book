// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {LZAddressContext} from "../../src/helpers/LZAddressContext.sol";
import {ILayerZeroEndpointV2} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {SetConfigParam} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/IMessageLibManager.sol";
import {UlnConfig} from "@layerzerolabs/lz-evm-messagelib-v2/contracts/uln/UlnBase.sol";
import {ExecutorConfig} from "@layerzerolabs/lz-evm-messagelib-v2/contracts/SendLibBase.sol";

/// @title Configure OApp by Chain Name
/// @notice Tutorial: Bidirectional OApp configuration using chain names
/// @dev Shows how SendUlnConfig on Chain A must match ReceiveUlnConfig on Chain B
///
/// For bidirectional messaging (A ↔ B), you need:
///   Chain A: SendConfig(A→B) + ReceiveConfig(B→A)
///   Chain B: SendConfig(B→A) + ReceiveConfig(A→B)
///
/// IMPORTANT: SendConfig(A→B) params must match ReceiveConfig(A→B) params
///            (same confirmations, DVN count, threshold - but different DVN addresses per chain)
contract ConfigureByChainName is Script {
    function run() external {
        // =============================================
        // STEP 1: Define your two chains by NAME
        // =============================================
        string memory chainA = "arbitrum-mainnet";
        string memory chainB = "base-mainnet";
        address oapp = 0x1234567890123456789012345678901234567890;
        
        // Shared config parameters (MUST match on both sides of each pathway)
        uint64 confirmations = 15;
        uint8 requiredDVNCount = 2;
        uint32 maxMessageSize = 10000;
        
        // =============================================
        // STEP 2: Create context
        // =============================================
        LZAddressContext ctx = new LZAddressContext();
        
        console.log("=== Bidirectional Config by Chain Name ===");
        console.log("Chain A:", chainA);
        console.log("Chain B:", chainB);
        console.log("OApp:", oapp);
        console.log("");
        
        vm.startBroadcast();
        
        // =============================================
        // STEP 3: Configure Chain A
        // =============================================
        ctx.setChain(chainA);
        
        uint32 eidA = ctx.getCurrentEID();
        uint32 eidB = ctx.getEid(chainB);
        
        address endpointA = ctx.getEndpoint();
        address sendLibA = ctx.getSendLib();
        address receiveLibA = ctx.getReceiveLib();
        address executorA = ctx.getExecutor();
        
        // DVN addresses on Chain A
        address[] memory dvnsA = _getSortedDVNs(ctx, chainA);
        
        console.log("--- Chain A:", chainA, "---");
        console.log("EID:", eidA);
        console.log("Endpoint:", endpointA);
        
        // A → B: Set SEND config on Chain A
        UlnConfig memory ulnConfigAtoB = UlnConfig({
            confirmations: confirmations,
            requiredDVNCount: requiredDVNCount,
            optionalDVNCount: 0,
            optionalDVNThreshold: 0,
            requiredDVNs: dvnsA,  // Chain A's DVN addresses
            optionalDVNs: new address[](0)
        });
        
        ExecutorConfig memory execConfigA = ExecutorConfig({
            maxMessageSize: maxMessageSize,
            executor: executorA
        });
        
        SetConfigParam[] memory sendParamsA = new SetConfigParam[](2);
        sendParamsA[0] = SetConfigParam(eidB, 1, abi.encode(execConfigA));
        sendParamsA[1] = SetConfigParam(eidB, 2, abi.encode(ulnConfigAtoB));
        
        ILayerZeroEndpointV2(endpointA).setConfig(oapp, sendLibA, sendParamsA);
        console.log("[OK] SendConfig(A->B) on Chain A");
        
        // B → A: Set RECEIVE config on Chain A (matches SendConfig on Chain B)
        // Same params as ulnConfigAtoB but this is for RECEIVING from B
        UlnConfig memory ulnConfigBtoA_onA = UlnConfig({
            confirmations: confirmations,
            requiredDVNCount: requiredDVNCount,
            optionalDVNCount: 0,
            optionalDVNThreshold: 0,
            requiredDVNs: dvnsA,  // Chain A's DVN addresses (local DVNs verify inbound)
            optionalDVNs: new address[](0)
        });
        
        SetConfigParam[] memory recvParamsA = new SetConfigParam[](1);
        recvParamsA[0] = SetConfigParam(eidB, 2, abi.encode(ulnConfigBtoA_onA));
        
        ILayerZeroEndpointV2(endpointA).setConfig(oapp, receiveLibA, recvParamsA);
        console.log("[OK] ReceiveConfig(B->A) on Chain A");
        
        // =============================================
        // STEP 4: Configure Chain B
        // =============================================
        ctx.setChain(chainB);
        
        address endpointB = ctx.getEndpoint();
        address sendLibB = ctx.getSendLib();
        address receiveLibB = ctx.getReceiveLib();
        address executorB = ctx.getExecutor();
        
        // DVN addresses on Chain B
        address[] memory dvnsB = _getSortedDVNs(ctx, chainB);
        
        console.log("");
        console.log("--- Chain B:", chainB, "---");
        console.log("EID:", eidB);
        console.log("Endpoint:", endpointB);
        
        // B → A: Set SEND config on Chain B
        UlnConfig memory ulnConfigBtoA = UlnConfig({
            confirmations: confirmations,      // MUST match ReceiveConfig(B→A) on Chain A
            requiredDVNCount: requiredDVNCount,
            optionalDVNCount: 0,
            optionalDVNThreshold: 0,
            requiredDVNs: dvnsB,  // Chain B's DVN addresses
            optionalDVNs: new address[](0)
        });
        
        ExecutorConfig memory execConfigB = ExecutorConfig({
            maxMessageSize: maxMessageSize,
            executor: executorB
        });
        
        SetConfigParam[] memory sendParamsB = new SetConfigParam[](2);
        sendParamsB[0] = SetConfigParam(eidA, 1, abi.encode(execConfigB));
        sendParamsB[1] = SetConfigParam(eidA, 2, abi.encode(ulnConfigBtoA));
        
        ILayerZeroEndpointV2(endpointB).setConfig(oapp, sendLibB, sendParamsB);
        console.log("[OK] SendConfig(B->A) on Chain B");
        
        // A → B: Set RECEIVE config on Chain B (matches SendConfig on Chain A)
        UlnConfig memory ulnConfigAtoB_onB = UlnConfig({
            confirmations: confirmations,      // MUST match SendConfig(A→B) on Chain A
            requiredDVNCount: requiredDVNCount,
            optionalDVNCount: 0,
            optionalDVNThreshold: 0,
            requiredDVNs: dvnsB,  // Chain B's DVN addresses (local DVNs verify inbound)
            optionalDVNs: new address[](0)
        });
        
        SetConfigParam[] memory recvParamsB = new SetConfigParam[](1);
        recvParamsB[0] = SetConfigParam(eidA, 2, abi.encode(ulnConfigAtoB_onB));
        
        ILayerZeroEndpointV2(endpointB).setConfig(oapp, receiveLibB, recvParamsB);
        console.log("[OK] ReceiveConfig(A->B) on Chain B");
        
        vm.stopBroadcast();
        
        console.log("");
        console.log("=== Configuration Complete ===");
        console.log("A->B: SendConfig(A) params == ReceiveConfig(B) params");
        console.log("B->A: SendConfig(B) params == ReceiveConfig(A) params");
    }
    
    function _getSortedDVNs(LZAddressContext ctx, string memory chain) internal view returns (address[] memory) {
        address lz = ctx.getDVNFor("LayerZero Labs", chain);
        address nm = ctx.getDVNFor("Nethermind", chain);
        
        address[] memory dvns = new address[](2);
        (dvns[0], dvns[1]) = lz < nm ? (lz, nm) : (nm, lz);
        return dvns;
    }
}
