// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";

import {OFTMock} from "../../../src/mocks/OFTMock.sol";
import {LZAddressContext} from "../../../src/helpers/LZAddressContext.sol";

// LayerZero imports
import {Origin, ILayerZeroEndpointV2} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {SendParam} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {MessagingFee, MessagingReceipt} from "@layerzerolabs/oft-evm/contracts/OFTCore.sol";
import {OFTMsgCodec} from "@layerzerolabs/oft-evm/contracts/libs/OFTMsgCodec.sol";
import {OptionsBuilder} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";
import {IOAppCore} from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppCore.sol";
import {VmSafe} from "forge-std/Vm.sol";

/// @title MyOFT Fork Test Example
/// @notice Demonstrates cross-chain OFT testing using LZAddressContext
/// @dev This is a REFERENCE IMPLEMENTATION - copy and adapt for your own OApp
contract MyOFTForkTest is Test {
    using OptionsBuilder for bytes;
    
    // ============================================
    // The single entry point for all LZ addresses
    // ============================================
    LZAddressContext ctx;
    
    // Chain names
    string constant ARBITRUM = "arbitrum-mainnet";
    string constant BASE = "base-mainnet";
    
    // Fork IDs
    mapping(string => uint256) forks;
    
    // Test actors
    address userA = makeAddr("userA");
    address userB = makeAddr("userB");
    
    // OFT contracts
    OFTMock arbOft;
    OFTMock baseOft;

    // ============================================
    // SETUP
    // ============================================

    function setUp() public {
        // 1. CREATE CONTEXT - this is all you need
        ctx = new LZAddressContext();
        ctx.makePersistent(vm);  // Single call handles all internal contracts
        
        // 2. CREATE FORKS
        forks[ARBITRUM] = vm.createFork(_getRpc(ARBITRUM));
        forks[BASE] = vm.createFork(_getRpc(BASE));
        
        // 3. DEPLOY ON ARBITRUM
        vm.selectFork(forks[ARBITRUM]);
        ctx.setChain(ARBITRUM);
        arbOft = new OFTMock("Arbitrum OFT", "aOFT", ctx.getEndpoint(), address(this));
        arbOft.mint(userA, 10 ether);
        
        // 4. DEPLOY ON BASE
        vm.selectFork(forks[BASE]);
        ctx.setChain(BASE);
        baseOft = new OFTMock("Base OFT", "bOFT", ctx.getEndpoint(), address(this));
        
        // 5. WIRE PEERS (using context helpers)
        _wirePeers();
        
        console.log("\n=== Setup Complete ===");
        console.log("Arbitrum OFT:", address(arbOft));
        console.log("Base OFT:", address(baseOft));
        console.log("====================\n");
    }
    
    /// @dev Get RPC URL: foundry.toml → address book
    function _getRpc(string memory chainName) internal view returns (string memory) {
        // 1. Standard Foundry: check foundry.toml [rpc_endpoints]
        try vm.rpcUrl(chainName) returns (string memory url) {
            if (bytes(url).length > 0) return url;
        } catch {}
        
        // 2. Use address book metadata
        string memory rpc = ctx.getProtocolAddressesFor(chainName).rpcUrls.length > 0
            ? ctx.getProtocolAddressesFor(chainName).rpcUrls[0]
            : "";
        require(bytes(rpc).length > 0, string.concat("No RPC for ", chainName));
        return rpc;
    }
    
    function _wirePeers() internal {
        uint256 currentFork = vm.activeFork();
        
        // Set peer on Arbitrum
        vm.selectFork(forks[ARBITRUM]);
        uint32 baseEid = ctx.getEid(BASE);
        IOAppCore(address(arbOft)).setPeer(baseEid, ctx.addressToBytes32(address(baseOft)));
        
        // Set peer on Base
        vm.selectFork(forks[BASE]);
        uint32 arbEid = ctx.getEid(ARBITRUM);
        IOAppCore(address(baseOft)).setPeer(arbEid, ctx.addressToBytes32(address(arbOft)));
        
        vm.selectFork(currentFork);
    }

    // ============================================
    // TESTS
    // ============================================
    
    /// @notice Test cross-chain OFT transfer from Arbitrum to Base
    function testFork_sendAndReceive() public {
        uint256 tokensToSend = 1 ether;
        uint128 LZ_RECEIVE_GAS = 80_000;

        // ========== SEND SIDE (Arbitrum) ==========
        vm.selectFork(forks[ARBITRUM]);
        ctx.setChain(ARBITRUM);
        
        // Get destination EID using context
        uint32 baseEid = ctx.getEid(BASE);
        
        // Create send parameters
        SendParam memory sendParam = SendParam({
            dstEid: baseEid,
            to: ctx.addressToBytes32(userB),
            amountLD: tokensToSend,
            minAmountLD: tokensToSend,
            extraOptions: OptionsBuilder.newOptions().addExecutorLzReceiveOption(LZ_RECEIVE_GAS, 0),
            composeMsg: hex"",
            oftCmd: hex""
        });

        // Get quote and execute send
        MessagingFee memory fee = arbOft.quoteSend(sendParam, false);
        vm.deal(userA, fee.nativeFee);

        uint256 userABalanceBefore = arbOft.balanceOf(userA);
        assertEq(userABalanceBefore, 10 ether);

        vm.prank(userA);
        (MessagingReceipt memory receipt, ) = arbOft.send{value: fee.nativeFee}(
            sendParam, 
            fee, 
            payable(userA)
        );

        assertEq(arbOft.balanceOf(userA), userABalanceBefore - tokensToSend);

        // ========== RECEIVE SIDE (Base) ==========
        vm.selectFork(forks[BASE]);
        ctx.setChain(BASE);
        
        uint256 userBBalanceBefore = baseOft.balanceOf(userB);
        assertEq(userBBalanceBefore, 0);
        
        // Verify endpoint is ready
        uint32 arbEid = ctx.getEid(ARBITRUM);
        Origin memory origin = Origin({
            srcEid: arbEid,
            sender: ctx.addressToBytes32(address(arbOft)),
            nonce: 1
        });
        
        assertEq(ILayerZeroEndpointV2(ctx.getEndpoint()).initializable(origin, address(baseOft)), true);

        // Simulate message delivery
        uint64 amountSD = baseOft.toSD(tokensToSend);
        (bytes memory message,) = OFTMsgCodec.encode(ctx.addressToBytes32(userB), amountSD, hex"");

        vm.prank(ctx.getEndpoint());
        baseOft.lzReceive(origin, receipt.guid, message, address(0), hex"");
        
        VmSafe.Gas memory gasUsed = vm.lastCallGas();
        assertLt(gasUsed.gasTotalUsed, LZ_RECEIVE_GAS);

        assertEq(baseOft.balanceOf(userB), userBBalanceBefore + tokensToSend);
    }
    
    /// @notice Test address book integration
    function testFork_addressBookIntegration() public {
        // Verify Arbitrum OFT uses correct endpoint
        vm.selectFork(forks[ARBITRUM]);
        ctx.setChain(ARBITRUM);
        
        address arbEndpoint = address(arbOft.endpoint());
        assertEq(arbEndpoint, ctx.getEndpoint(), "Should use endpoint from context");
        
        uint256 codeSize;
        assembly { codeSize := extcodesize(arbEndpoint) }
        assertGt(codeSize, 0, "Endpoint should be deployed");
        
        // Verify Base OFT
        vm.selectFork(forks[BASE]);
        ctx.setChain(BASE);
        
        address baseEndpoint = address(baseOft.endpoint());
        assertEq(baseEndpoint, ctx.getEndpoint(), "Should use endpoint from context");
        
        assembly { codeSize := extcodesize(baseEndpoint) }
        assertGt(codeSize, 0, "Endpoint should be deployed");
        
        console.log("[PASS] Address book integration verified");
    }
    
    /// @notice Test DVN access via context
    function testFork_dvnAccess() public {
        // Get DVN addresses using context (no need for separate registry)
        address arbLzLabsDVN = ctx.getDVNFor("LayerZero Labs", ARBITRUM);
        address baseLzLabsDVN = ctx.getDVNFor("LayerZero Labs", BASE);
        
        // Verify on Arbitrum
        vm.selectFork(forks[ARBITRUM]);
        uint256 arbCodeSize;
        assembly { arbCodeSize := extcodesize(arbLzLabsDVN) }
        assertGt(arbCodeSize, 0, "Arbitrum DVN should be deployed");
        
        // Verify on Base
        vm.selectFork(forks[BASE]);
        uint256 baseCodeSize;
        assembly { baseCodeSize := extcodesize(baseLzLabsDVN) }
        assertGt(baseCodeSize, 0, "Base DVN should be deployed");
        
        console.log("Arbitrum LayerZero Labs DVN:", arbLzLabsDVN);
        console.log("Base LayerZero Labs DVN:", baseLzLabsDVN);
        console.log("[PASS] DVN addresses verified");
    }
    
    /// @notice Demonstrate all three ways to set chain context
    function testFork_contextSettingMethods() public {
        // ========== METHOD 1: By Chain Name (most readable) ==========
        ctx.setChain("arbitrum-mainnet");
        address endpointByName = ctx.getEndpoint();
        uint32 eidByName = ctx.getCurrentEID();
        console.log("By name 'arbitrum-mainnet':");
        console.log("  Endpoint:", endpointByName);
        console.log("  EID:", eidByName);
        
        // ========== METHOD 2: By Chain ID (useful when you have block.chainid) ==========
        ctx.setChainByChainId(8453); // Base mainnet chain ID
        address endpointByChainId = ctx.getEndpoint();
        string memory chainNameByChainId = ctx.getCurrentChainName();
        console.log("By chainId 8453:");
        console.log("  Endpoint:", endpointByChainId);
        console.log("  Resolved chain name:", chainNameByChainId);
        
        // ========== METHOD 3: By EID (useful when working with LZ messages) ==========
        ctx.setChainByEid(30110); // Arbitrum mainnet EID
        address endpointByEid = ctx.getEndpoint();
        string memory chainNameByEid = ctx.getCurrentChainName();
        console.log("By EID 30110:");
        console.log("  Endpoint:", endpointByEid);
        console.log("  Resolved chain name:", chainNameByEid);
        
        // All methods should resolve to correct endpoints
        assertEq(endpointByName, endpointByEid, "Name and EID should resolve to same endpoint");
        assertEq(eidByName, 30110, "Arbitrum EID should be 30110");
        assertEq(chainNameByChainId, "base-mainnet", "Chain ID 8453 should resolve to base-mainnet");
        
        console.log("[PASS] All context setting methods work correctly");
    }
    
    // ============================================
    // HELPERS
    // ============================================
    
    function _eq(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}
