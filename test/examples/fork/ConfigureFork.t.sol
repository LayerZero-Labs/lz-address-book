// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";
import {LZAddressContext} from "../../../src/helpers/LZAddressContext.sol";
import {ILayerZeroEndpointV2} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {SetConfigParam} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/IMessageLibManager.sol";
import {UlnConfig} from "@layerzerolabs/lz-evm-messagelib-v2/contracts/uln/UlnBase.sol";
import {ExecutorConfig} from "@layerzerolabs/lz-evm-messagelib-v2/contracts/SendLibBase.sol";
import {OFTMock} from "../../../src/mocks/OFTMock.sol";

/// @title Configure Fork Tests
/// @notice Tests bidirectional OApp configuration using all three context methods
/// @dev Validates that configs are applied correctly on real mainnet forks
contract ConfigureForkTest is Test {
    LZAddressContext ctx;
    
    // Forks
    uint256 forkA;
    uint256 forkB;
    
    // OApps deployed on each chain
    OFTMock oappA;
    OFTMock oappB;
    
    // Shared config params
    uint64 constant CONFIRMATIONS = 15;
    uint8 constant REQUIRED_DVN_COUNT = 2;
    uint32 constant MAX_MESSAGE_SIZE = 10000;

    function setUp() public {
        ctx = new LZAddressContext();
        ctx.makePersistent(vm);
        
        // Create forks
        forkA = vm.createFork(_getRpc("arbitrum-mainnet"));
        forkB = vm.createFork(_getRpc("base-mainnet"));
        
        // Deploy OApp on Chain A
        vm.selectFork(forkA);
        ctx.setChain("arbitrum-mainnet");
        oappA = new OFTMock("Test OFT", "tOFT", ctx.getEndpoint(), address(this));
        vm.makePersistent(address(oappA));
        
        // Deploy OApp on Chain B
        vm.selectFork(forkB);
        ctx.setChain("base-mainnet");
        oappB = new OFTMock("Test OFT", "tOFT", ctx.getEndpoint(), address(this));
        vm.makePersistent(address(oappB));
    }

    // ============================================
    // TEST: Configure by Chain Name
    // ============================================
    
    function testFork_configureByChainName() public {
        string memory chainA = "arbitrum-mainnet";
        string memory chainB = "base-mainnet";
        
        console.log("\n=== Configure by Chain Name ===");
        
        // Configure Chain A
        vm.selectFork(forkA);
        ctx.setChain(chainA);  // <-- Set by NAME
        
        _configureChain(ctx, address(oappA), ctx.getEid(chainB));
        console.log("[OK] Chain A configured:", chainA);
        
        // Configure Chain B
        vm.selectFork(forkB);
        ctx.setChain(chainB);  // <-- Set by NAME
        
        _configureChain(ctx, address(oappB), ctx.getEid(chainA));
        console.log("[OK] Chain B configured:", chainB);
        
        // Verify configs were applied
        _verifyConfig(chainA, chainB);
    }

    // ============================================
    // TEST: Configure by EID
    // ============================================
    
    function testFork_configureByEid() public {
        uint32 eidA = 30110;  // Arbitrum
        uint32 eidB = 30184;  // Base
        
        console.log("\n=== Configure by EID ===");
        
        // Configure Chain A
        vm.selectFork(forkA);
        ctx.setChainByEid(eidA);  // <-- Set by EID
        
        string memory chainA = ctx.getCurrentChainName();
        assertEq(chainA, "arbitrum-mainnet", "EID should resolve to arbitrum-mainnet");
        
        _configureChain(ctx, address(oappA), eidB);
        console.log("[OK] Chain A configured via EID:", eidA);
        
        // Configure Chain B
        vm.selectFork(forkB);
        ctx.setChainByEid(eidB);  // <-- Set by EID
        
        string memory chainB = ctx.getCurrentChainName();
        assertEq(chainB, "base-mainnet", "EID should resolve to base-mainnet");
        
        _configureChain(ctx, address(oappB), eidA);
        console.log("[OK] Chain B configured via EID:", eidB);
        
        // Verify configs were applied
        _verifyConfig("arbitrum-mainnet", "base-mainnet");
    }

    // ============================================
    // TEST: Configure by Chain ID
    // ============================================
    
    function testFork_configureByChainId() public {
        uint256 chainIdA = 42161;  // Arbitrum
        uint256 chainIdB = 8453;   // Base
        
        console.log("\n=== Configure by Chain ID ===");
        
        // Configure Chain A
        vm.selectFork(forkA);
        ctx.setChainByChainId(chainIdA);  // <-- Set by Chain ID
        
        string memory chainA = ctx.getCurrentChainName();
        assertEq(chainA, "arbitrum-mainnet", "Chain ID should resolve to arbitrum-mainnet");
        
        uint32 eidA = ctx.getCurrentEID();
        uint32 eidB = ctx.getEid("base-mainnet");
        
        _configureChain(ctx, address(oappA), eidB);
        console.log("[OK] Chain A configured via chainId:", chainIdA);
        
        // Configure Chain B
        vm.selectFork(forkB);
        ctx.setChainByChainId(chainIdB);  // <-- Set by Chain ID
        
        string memory chainB = ctx.getCurrentChainName();
        assertEq(chainB, "base-mainnet", "Chain ID should resolve to base-mainnet");
        
        _configureChain(ctx, address(oappB), eidA);
        console.log("[OK] Chain B configured via chainId:", chainIdB);
        
        // Verify configs were applied
        _verifyConfig("arbitrum-mainnet", "base-mainnet");
    }

    // ============================================
    // HELPER: Configure a chain (send + receive)
    // ============================================
    
    function _configureChain(
        LZAddressContext _ctx,
        address oapp,
        uint32 remoteEid
    ) internal {
        ILayerZeroEndpointV2 endpoint = ILayerZeroEndpointV2(_ctx.getEndpoint());
        address sendLib = _ctx.getSendLib();
        address receiveLib = _ctx.getReceiveLib();
        address executor = _ctx.getExecutor();
        
        // Get local DVNs
        string memory localChain = _ctx.getCurrentChainName();
        address[] memory dvns = _getSortedDVNs(_ctx, localChain);
        
        // Build ULN config
        UlnConfig memory ulnConfig = UlnConfig({
            confirmations: CONFIRMATIONS,
            requiredDVNCount: REQUIRED_DVN_COUNT,
            optionalDVNCount: 0,
            optionalDVNThreshold: 0,
            requiredDVNs: dvns,
            optionalDVNs: new address[](0)
        });
        
        ExecutorConfig memory execConfig = ExecutorConfig({
            maxMessageSize: MAX_MESSAGE_SIZE,
            executor: executor
        });
        
        // Set SEND config
        SetConfigParam[] memory sendParams = new SetConfigParam[](2);
        sendParams[0] = SetConfigParam(remoteEid, 1, abi.encode(execConfig));
        sendParams[1] = SetConfigParam(remoteEid, 2, abi.encode(ulnConfig));
        endpoint.setConfig(oapp, sendLib, sendParams);
        
        // Set RECEIVE config
        SetConfigParam[] memory recvParams = new SetConfigParam[](1);
        recvParams[0] = SetConfigParam(remoteEid, 2, abi.encode(ulnConfig));
        endpoint.setConfig(oapp, receiveLib, recvParams);
    }

    // ============================================
    // HELPER: Verify config symmetry
    // ============================================
    
    function _verifyConfig(string memory chainA, string memory chainB) internal {
        // Verify Chain A endpoint is live
        vm.selectFork(forkA);
        ctx.setChain(chainA);
        address endpointA = ctx.getEndpoint();
        uint256 codeSizeA;
        assembly { codeSizeA := extcodesize(endpointA) }
        assertGt(codeSizeA, 0, "Chain A endpoint should be deployed");
        
        // Verify Chain B endpoint is live
        vm.selectFork(forkB);
        ctx.setChain(chainB);
        address endpointB = ctx.getEndpoint();
        uint256 codeSizeB;
        assembly { codeSizeB := extcodesize(endpointB) }
        assertGt(codeSizeB, 0, "Chain B endpoint should be deployed");
        
        // Verify OApps are deployed
        vm.selectFork(forkA);
        assertGt(address(oappA).code.length, 0, "OApp A should be deployed");
        
        vm.selectFork(forkB);
        assertGt(address(oappB).code.length, 0, "OApp B should be deployed");
        
        console.log("[PASS] Bidirectional config verified");
    }

    // ============================================
    // HELPERS
    // ============================================
    
    function _getRpc(string memory chainName) internal view returns (string memory) {
        // Try foundry.toml first
        try vm.rpcUrl(chainName) returns (string memory url) {
            if (bytes(url).length > 0) return url;
        } catch {}
        
        // Fall back to address book
        string memory rpc = ctx.getProtocolAddressesFor(chainName).rpcUrls.length > 0
            ? ctx.getProtocolAddressesFor(chainName).rpcUrls[0]
            : "";
        require(bytes(rpc).length > 0, string.concat("No RPC for ", chainName));
        return rpc;
    }
    
    function _getSortedDVNs(LZAddressContext _ctx, string memory chain) internal view returns (address[] memory) {
        address lz = _ctx.getDVNFor("LayerZero Labs", chain);
        address nm = _ctx.getDVNFor("Nethermind", chain);
        
        address[] memory dvns = new address[](2);
        (dvns[0], dvns[1]) = lz < nm ? (lz, nm) : (nm, lz);
        return dvns;
    }
}

