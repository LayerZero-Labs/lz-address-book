// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";
import {OFTMock} from "../../src/mocks/OFTMock.sol";
import {SendParam, OFTReceipt} from "@layerzerolabs/oft-evm/contracts/oft/interfaces/IOFT.sol";
import {MessagingFee, MessagingReceipt} from "@layerzerolabs/oft-evm/contracts/oft/OFTCore.sol";
import {OptionsBuilder} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";
import {Origin} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {OFTMsgCodec} from "@layerzerolabs/oft-evm/contracts/oft/libs/OFTMsgCodec.sol";
import {VmSafe} from "forge-std/Vm.sol";
import {LZUtils} from "../../src/utils/LZUtils.sol";

/// @title MyOFT Unit Test Example
/// @notice Example demonstrating LayerZero business logic testing with mocked endpoints
/// @dev Shows how to test OApp business logic without network dependencies
/// @dev This is a REFERENCE IMPLEMENTATION - copy and adapt for your own OApp
contract MyOftTest is Test {
    using OptionsBuilder for bytes;
    
    OFTMock aOFT;
    OFTMock bOFT;
    address mockEndpoint;
    address owner;
    address userA;
    address userB;
    
    // Chain constants (arbitrary EIDs for unit tests)
    uint32 constant A_EID = 1;
    uint32 constant B_EID = 2;
    
    function setUp() public {
        owner = makeAddr("owner");
        userA = makeAddr("userA");
        userB = makeAddr("userB");
        
        mockEndpoint = makeAddr("mockEndpoint");
        
        // Mock the setDelegate call that OApp constructor makes
        vm.mockCall(
            mockEndpoint,
            abi.encodeWithSignature("setDelegate(address)", owner),
            abi.encode()
        );
        
        // Deploy OFTs with mocked endpoint
        vm.prank(owner);
        aOFT = new OFTMock("Chain A OFT", "aOFT", mockEndpoint, owner);
        
        vm.prank(owner);
        bOFT = new OFTMock("Chain B OFT", "bOFT", mockEndpoint, owner);
        
        // Set up peers for LayerZero initialization checks
        vm.prank(owner);
        aOFT.setPeer(B_EID, LZUtils.addressToBytes32(address(bOFT)));
        
        vm.prank(owner);
        bOFT.setPeer(A_EID, LZUtils.addressToBytes32(address(aOFT)));
        
        // Give userA tokens to send
        aOFT.mint(userA, 100 ether);
    }

    // ============ CORE LAYERZERO FLOW TESTS ============
    // These demonstrate the key patterns for testing LayerZero OApps

    /// @notice Test OFT.send() with mocked endpoint - KEY PATTERN FOR TEAMS
    /// @dev Shows how to test your OApp's send() entry point while mocking endpoint.send()
    /// @dev GENERALIZATION: Replace OFTMock with YOUR contract, mock YOUR endpoint.send() calls
    function test_lzSend() public {
        uint256 tokensToSend = 1 ether;
        
        // 1. Create send parameters (adapt to YOUR OApp's send method signature)
        SendParam memory sendParam = SendParam({
            dstEid: B_EID,
            to: LZUtils.addressToBytes32(userB),
            amountLD: tokensToSend,
            minAmountLD: tokensToSend,
            extraOptions: OptionsBuilder.newOptions().addExecutorLzReceiveOption(200_000, 0),
            composeMsg: hex"",
            oftCmd: hex""
        });
        
        // 2. Mock the endpoint.send() call - CRITICAL PATTERN FOR ALL TEAMS
        // This allows YOUR OApp.send() to work without real LayerZero infrastructure
        MessagingReceipt memory mockReceipt = MessagingReceipt({
            guid: bytes32(uint256(1)),
            nonce: 1,
            fee: MessagingFee({nativeFee: 0.01 ether, lzTokenFee: 0})
        });
        
        // Mock endpoint.send() - use this EXACT pattern for YOUR endpoint
        vm.mockCall(
            mockEndpoint,
            0.01 ether, // msg.value that YOUR OApp will send
            abi.encodeWithSignature("send((uint32,bytes32,bytes,bytes,bool),address)"),
            abi.encode(mockReceipt)
        );
        
        // 3. Test YOUR actual OApp.send() call - THE REAL ENTRY POINT
        uint256 balanceBefore = aOFT.balanceOf(userA);
        uint256 totalSupplyBefore = aOFT.totalSupply();
        
        vm.deal(userA, 1 ether);
        vm.prank(userA);
        
        // Call YOUR OApp.send() method - this is what users call in production
        (MessagingReceipt memory receipt, OFTReceipt memory oftReceipt) = aOFT.send{value: 0.01 ether}(
            sendParam,
            MessagingFee({nativeFee: 0.01 ether, lzTokenFee: 0}),
            payable(userA)
        );
        
        // 4. Verify YOUR business logic executed correctly
        // Adapt these assertions to test YOUR contract's state changes
        assertEq(aOFT.balanceOf(userA), balanceBefore - tokensToSend, "Tokens should be burned");
        assertEq(aOFT.totalSupply(), totalSupplyBefore - tokensToSend, "Total supply should decrease");
        assertEq(oftReceipt.amountSentLD, tokensToSend, "Should send exact amount");
        assertEq(oftReceipt.amountReceivedLD, tokensToSend, "Should receive exact amount");
        assertEq(receipt.guid, mockReceipt.guid, "Should return mocked receipt");
        
        console.log("[PASS] OFT.send() with mocked endpoint: Business logic executed correctly");
        console.log("  -> Tokens burned: ", tokensToSend / 1e18, "tokens");
        console.log("  -> Endpoint called successfully (mocked)");
    }

    /// @notice Test LayerZero receive flow: endpoint.lzReceive -> OApp business logic
    /// @dev Shows how to test the complete receive side including message parsing
    /// @dev GENERALIZATION: Adapt the message format and business logic to YOUR OApp
    function test_lzReceive() public {
        uint256 tokensToReceive = 3 ether;
        
        // 1. Simulate LayerZero message (what endpoint delivers to YOUR OApp)
        // Adapt this message encoding to match YOUR OApp's expected format
        uint64 amountSD = bOFT.toSD(tokensToReceive);
        (bytes memory message,) = OFTMsgCodec.encode(
            LZUtils.addressToBytes32(userB),  // Recipient
            amountSD,                  // Amount in shared decimals
            hex""                      // No compose message
        );
        
        // 2. Create origin (what LayerZero provides) - standard for all OApps
        Origin memory origin = Origin({
            srcEid: A_EID,
            sender: LZUtils.addressToBytes32(address(aOFT)),
            nonce: 1
        });
        
        // 3. Test the receive flow - simulate endpoint calling YOUR OApp
        uint256 balanceBefore = bOFT.balanceOf(userB);
        uint256 totalSupplyBefore = bOFT.totalSupply();
        
        // Simulate endpoint calling YOUR OApp.lzReceive() - standard pattern
        vm.prank(mockEndpoint);
        bOFT.lzReceive(
            origin,
            bytes32(uint256(1)), // guid
            message,
            address(0),          // executor
            hex""               // extra data
        );
        
        // 4. Verify YOUR business logic executed correctly
        // Adapt these assertions to test YOUR contract's state changes
        assertEq(bOFT.balanceOf(userB), balanceBefore + tokensToReceive, "Tokens should be minted to recipient");
        assertEq(bOFT.totalSupply(), totalSupplyBefore + tokensToReceive, "Total supply should increase");
        
        console.log("[PASS] Receive Flow: lzReceive() correctly processes message and mints tokens");
    }

    // ============ SUPPORTING BUSINESS LOGIC TESTS ============

    /// @notice Test complete send and receive pattern
    function test_lzSendAndReceive() public {
        uint256 tokensToTransfer = 2 ether;
        uint128 LZ_RECEIVE_GAS = 200_000;
        
        // ========== SEND SIDE ==========
        SendParam memory sendParam = SendParam({
            dstEid: B_EID,
            to: LZUtils.addressToBytes32(userB),
            amountLD: tokensToTransfer,
            minAmountLD: tokensToTransfer,
            extraOptions: OptionsBuilder.newOptions().addExecutorLzReceiveOption(LZ_RECEIVE_GAS, 0),
            composeMsg: hex"",
            oftCmd: hex""
        });
        
        MessagingReceipt memory mockReceipt = MessagingReceipt({
            guid: bytes32(uint256(1)),
            nonce: 1,
            fee: MessagingFee({nativeFee: 0.01 ether, lzTokenFee: 0})
        });
        
        vm.mockCall(
            mockEndpoint,
            0.01 ether,
            abi.encodeWithSignature("send((uint32,bytes32,bytes,bytes,bool),address)"),
            abi.encode(mockReceipt)
        );
        
        uint256 sourceBalanceBefore = aOFT.balanceOf(userA);
        
        vm.deal(userA, 1 ether);
        vm.prank(userA);
        aOFT.send{value: 0.01 ether}(
            sendParam,
            MessagingFee({nativeFee: 0.01 ether, lzTokenFee: 0}),
            payable(userA)
        );
        
        assertEq(aOFT.balanceOf(userA), sourceBalanceBefore - tokensToTransfer, "Tokens burned on send");
        
        // ========== RECEIVE SIDE ==========
        uint64 amountSD = bOFT.toSD(tokensToTransfer);
        (bytes memory message,) = OFTMsgCodec.encode(
            LZUtils.addressToBytes32(userB),
            amountSD,
            hex""
        );
        
        Origin memory origin = Origin({
            srcEid: A_EID,
            sender: LZUtils.addressToBytes32(address(aOFT)),
            nonce: 1
        });
        
        uint256 destBalanceBefore = bOFT.balanceOf(userB);
        
        vm.prank(mockEndpoint);
        bOFT.lzReceive(origin, bytes32(uint256(1)), message, address(0), hex"");

        VmSafe.Gas memory gasUsed = vm.lastCallGas();
        assertLt(gasUsed.gasTotalUsed, LZ_RECEIVE_GAS, "Should use less than LZ_RECEIVE_GAS");

        assertEq(bOFT.balanceOf(userB), destBalanceBefore + tokensToTransfer, "Tokens minted on receive");
        
        console.log("[PASS] Complete LayerZero Flow validated");
    }

    /// @notice Test OFT send business logic: token burn
    function test_lzSendBurn() public {
        uint256 tokensToSend = 10 ether;
        uint256 balanceBefore = aOFT.balanceOf(userA);
        
        vm.prank(userA);
        (uint256 amountDebitedLD,) = aOFT.debit(tokensToSend, tokensToSend, B_EID);
        
        assertEq(amountDebitedLD, tokensToSend, "Should debit exact amount");
        assertEq(aOFT.balanceOf(userA), balanceBefore - tokensToSend, "User balance should decrease");
        
        console.log("[PASS] Send Business Logic: Correctly burns tokens");
    }
    
    /// @notice Test OFT receive business logic: token mint
    function test_lzReceiveMint() public {
        uint256 tokensToReceive = 5 ether;
        uint256 balanceBefore = bOFT.balanceOf(userB);
        
        uint256 amountReceivedLD = bOFT.credit(userB, tokensToReceive, A_EID);
        
        assertEq(amountReceivedLD, tokensToReceive, "Should receive exact amount");
        assertEq(bOFT.balanceOf(userB), balanceBefore + tokensToReceive, "User balance should increase");
        
        console.log("[PASS] Receive Business Logic: Correctly mints tokens");
    }
}

