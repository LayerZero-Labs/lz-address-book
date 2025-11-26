// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {LZAddressContext} from "../../src/helpers/LZAddressContext.sol";
import {ILayerZeroEndpointV2} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {SetConfigParam} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/IMessageLibManager.sol";
import {UlnConfig} from "@layerzerolabs/lz-evm-messagelib-v2/contracts/uln/UlnBase.sol";
import {ExecutorConfig} from "@layerzerolabs/lz-evm-messagelib-v2/contracts/SendLibBase.sol";

/// @title Configure OApp by Native Chain ID
/// @notice Tutorial: Bidirectional OApp configuration using native chain IDs
/// @dev Shows how SendUlnConfig on Chain A must match ReceiveUlnConfig on Chain B
///
/// Common Chain IDs:
///   - Ethereum:  1        - Arbitrum:  42161
///   - Base:      8453     - Optimism:  10
///   - Polygon:   137      - Avalanche: 43114
///
/// For bidirectional messaging (A ↔ B), you need:
///   Chain A: SendConfig(A→B) + ReceiveConfig(B→A)
///   Chain B: SendConfig(B→A) + ReceiveConfig(A→B)
contract ConfigureByChainId is Script {
    function run() external {
        // =============================================
        // STEP 1: Define your two chains by Chain ID
        // =============================================
        uint256 chainIdA = 42161;  // Arbitrum
        uint256 chainIdB = 8453;   // Base
        address oapp = 0x1234567890123456789012345678901234567890;
        
        // Shared config parameters (MUST match on both sides of each pathway)
        uint64 confirmations = 15;
        uint8 requiredDVNCount = 2;
        uint32 maxMessageSize = 10000;
        
        // =============================================
        // STEP 2: Create context and resolve chain info
        // =============================================
        LZAddressContext ctx = new LZAddressContext();
        
        // Resolve chain names and EIDs from chain IDs
        ctx.setChainByChainId(chainIdA);
        string memory chainA = ctx.getCurrentChainName();
        uint32 eidA = ctx.getCurrentEID();
        
        ctx.setChainByChainId(chainIdB);
        string memory chainB = ctx.getCurrentChainName();
        uint32 eidB = ctx.getCurrentEID();
        
        console.log("=== Bidirectional Config by Chain ID ===");
        console.log("Chain A:", chainIdA, "->", chainA, "(EID:", eidA, ")");
        console.log("Chain B:", chainIdB, "->", chainB, "(EID:", eidB, ")");
        console.log("OApp:", oapp);
        console.log("");
        
        vm.startBroadcast();
        
        // =============================================
        // STEP 3: Configure Chain A
        // =============================================
        ctx.setChainByChainId(chainIdA);
        
        address endpointA = ctx.getEndpoint();
        address sendLibA = ctx.getSendLib();
        address receiveLibA = ctx.getReceiveLib();
        address executorA = ctx.getExecutor();
        address[] memory dvnsA = _getSortedDVNs(ctx, chainA);
        
        console.log("--- Chain A (chainId:", chainIdA, ") ---");
        console.log("Endpoint:", endpointA);
        
        // A → B: SEND config on Chain A
        UlnConfig memory ulnConfigAtoB = UlnConfig({
            confirmations: confirmations,
            requiredDVNCount: requiredDVNCount,
            optionalDVNCount: 0,
            optionalDVNThreshold: 0,
            requiredDVNs: dvnsA,
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
        console.log("[OK] SendConfig(A->B)");
        
        // B → A: RECEIVE config on Chain A
        UlnConfig memory recvUlnA = UlnConfig({
            confirmations: confirmations,
            requiredDVNCount: requiredDVNCount,
            optionalDVNCount: 0,
            optionalDVNThreshold: 0,
            requiredDVNs: dvnsA,
            optionalDVNs: new address[](0)
        });
        
        SetConfigParam[] memory recvParamsA = new SetConfigParam[](1);
        recvParamsA[0] = SetConfigParam(eidB, 2, abi.encode(recvUlnA));
        
        ILayerZeroEndpointV2(endpointA).setConfig(oapp, receiveLibA, recvParamsA);
        console.log("[OK] ReceiveConfig(B->A)");
        
        // =============================================
        // STEP 4: Configure Chain B
        // =============================================
        ctx.setChainByChainId(chainIdB);
        
        address endpointB = ctx.getEndpoint();
        address sendLibB = ctx.getSendLib();
        address receiveLibB = ctx.getReceiveLib();
        address executorB = ctx.getExecutor();
        address[] memory dvnsB = _getSortedDVNs(ctx, chainB);
        
        console.log("");
        console.log("--- Chain B (chainId:", chainIdB, ") ---");
        console.log("Endpoint:", endpointB);
        
        // B → A: SEND config on Chain B
        UlnConfig memory ulnConfigBtoA = UlnConfig({
            confirmations: confirmations,      // Must match ReceiveConfig(B→A) on Chain A
            requiredDVNCount: requiredDVNCount,
            optionalDVNCount: 0,
            optionalDVNThreshold: 0,
            requiredDVNs: dvnsB,
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
        console.log("[OK] SendConfig(B->A)");
        
        // A → B: RECEIVE config on Chain B
        UlnConfig memory recvUlnB = UlnConfig({
            confirmations: confirmations,      // Must match SendConfig(A→B) on Chain A
            requiredDVNCount: requiredDVNCount,
            optionalDVNCount: 0,
            optionalDVNThreshold: 0,
            requiredDVNs: dvnsB,
            optionalDVNs: new address[](0)
        });
        
        SetConfigParam[] memory recvParamsB = new SetConfigParam[](1);
        recvParamsB[0] = SetConfigParam(eidA, 2, abi.encode(recvUlnB));
        
        ILayerZeroEndpointV2(endpointB).setConfig(oapp, receiveLibB, recvParamsB);
        console.log("[OK] ReceiveConfig(A->B)");
        
        vm.stopBroadcast();
        
        console.log("");
        console.log("=== Configuration Complete ===");
    }
    
    function _getSortedDVNs(LZAddressContext ctx, string memory chain) internal view returns (address[] memory) {
        address lz = ctx.getDVNFor("LayerZero Labs", chain);
        address nm = ctx.getDVNFor("Nethermind", chain);
        
        address[] memory dvns = new address[](2);
        (dvns[0], dvns[1]) = lz < nm ? (lz, nm) : (nm, lz);
        return dvns;
    }
}
