// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {OFTMock} from "../../../src/mocks/OFTMock.sol";
import {LZTest} from "../../../src/framework/LZTest.sol";
import {LZUtils} from "../../../src/utils/LZUtils.sol";
import {ILZProtocol} from "../../../src/helpers/interfaces/ILZProtocol.sol";
import {VmSafe} from "forge-std/Vm.sol";
import {console} from "forge-std/console.sol";

// LayerZero imports
import {Origin, ILayerZeroEndpointV2} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {SendParam} from "@layerzerolabs/oft-evm/contracts/oft/interfaces/IOFT.sol";
import {MessagingFee, MessagingReceipt} from "@layerzerolabs/oft-evm/contracts/oft/OFTCore.sol";
import {OFTMsgCodec} from "@layerzerolabs/oft-evm/contracts/oft/libs/OFTMsgCodec.sol";
import {OptionsBuilder} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";

/// @title MyOFT Fork Test Example
/// @notice Example demonstrating cross-chain OFT testing using the LayerZero address book
/// @dev Shows how to use the address book for real fork-based testing
/// @dev This is a REFERENCE IMPLEMENTATION - copy and adapt for your own OApp
contract MyOFTForkTest is LZTest {
    using OptionsBuilder for bytes;
    using LZUtils for address;
    
    // ============================================
    // CONSTANTS & STATE VARIABLES
    // ============================================
    
    // Chain IDs (mainnet)
    uint256 constant CHAINID_ARBITRUM = 42161;
    uint256 constant CHAINID_BASE = 8453;
    
    // Chain names for the framework
    string constant ARBITRUM_MAINNET = "arbitrum-mainnet";
    string constant BASE_MAINNET = "base-mainnet";
    
    // Test actors
    address userA = makeAddr("userA");
    address userB = makeAddr("userB");
    
    // OFT contracts
    OFTMock arbOft;
    OFTMock baseOft;
    
    // Protocol addresses for cleaner access
    ILZProtocol.ProtocolAddresses arbProtocol;
    ILZProtocol.ProtocolAddresses baseProtocol;

    // ============================================
    // SETUP - Using LayerZero Address Book
    // ============================================

    /// @dev Deploy and configure OFTs using addresses from the address book
    function setUp() public {
        // 1. CREATE FORKS FOR BOTH CHAINS
        // The address book provides chain names that match environment variables
        createFork(ARBITRUM_MAINNET, vm.envString("ARBITRUM_MAINNET_RPC_URL"));
        createFork(BASE_MAINNET, vm.envString("BASE_MAINNET_RPC_URL"));

        // 2. GET PROTOCOL ADDRESSES FROM ADDRESS BOOK
        // This is the KEY BENEFIT - no hardcoding addresses!
        arbProtocol = LZUtils.getProtocol(protocolAddressProvider, ARBITRUM_MAINNET);
        baseProtocol = LZUtils.getProtocol(protocolAddressProvider, BASE_MAINNET);

        // 3. DEPLOY ARBITRUM OFT USING ADDRESS BOOK
        selectFork(ARBITRUM_MAINNET);
        assertEq(block.chainid, CHAINID_ARBITRUM);
        // Use endpoint address from address book
        arbOft = new OFTMock("Arbitrum OFT", "aOFT", arbProtocol.endpointV2, address(this));
        arbOft.mint(userA, 10 ether);

        // 4. DEPLOY BASE OFT USING ADDRESS BOOK
        selectFork(BASE_MAINNET);
        assertEq(block.chainid, CHAINID_BASE);
        // Use endpoint address from address book
        baseOft = new OFTMock("Base OFT", "bOFT", baseProtocol.endpointV2, address(this));

        // 5. CONFIGURE CROSS-CHAIN COMMUNICATION
        // The framework handles peer setting using address book
        wireOAppsBidirectional(
            ARBITRUM_MAINNET,
            BASE_MAINNET,
            address(arbOft),
            address(baseOft)
        );
        
        console.log("\n=== Setup Complete ===");
        console.log("Arbitrum OFT deployed at:", address(arbOft));
        console.log("Base OFT deployed at:", address(baseOft));
        console.log("Using Arbitrum endpoint:", arbProtocol.endpointV2);
        console.log("Using Base endpoint:", baseProtocol.endpointV2);
        console.log("====================\n");
    }

    // ============================================
    // TEST: Basic Send and Receive Flow
    // ============================================
    
    /// @notice Test cross-chain OFT transfer from Arbitrum to Base
    /// @dev This demonstrates the complete flow using real LayerZero infrastructure
    function testFork_sendAndReceive() public {
        uint256 tokensToSend = 1 ether;
        uint128 LZ_RECEIVE_GAS = 80_000;

        // ========== SEND SIDE (Arbitrum) ==========
        selectFork(ARBITRUM_MAINNET);
        
        // 1. Get destination EID from address book
        uint32 baseEid = LZUtils.getEid(protocolAddressProvider, BASE_MAINNET);
        
        // 2. Create send parameters
        SendParam memory sendParam = SendParam({
            dstEid: baseEid,
            to: LZUtils.addressToBytes32(userB),
            amountLD: tokensToSend,
            minAmountLD: tokensToSend,
            extraOptions: OptionsBuilder.newOptions().addExecutorLzReceiveOption(LZ_RECEIVE_GAS, 0),
            composeMsg: hex"",
            oftCmd: hex""
        });

        // 3. Get quote from real endpoint (from address book)
        MessagingFee memory fee = arbOft.quoteSend(sendParam, false);
        vm.deal(userA, fee.nativeFee);

        // 4. Check balances before send
        uint256 userABalanceBefore = arbOft.balanceOf(userA);
        assertEq(userABalanceBefore, 10 ether);

        // 5. Execute the send on Arbitrum
        vm.prank(userA);
        (MessagingReceipt memory receipt, ) = arbOft.send{value: fee.nativeFee}(
            sendParam, 
            fee, 
            payable(userA)
        );

        // 6. Verify tokens were burned on source chain
        assertEq(arbOft.balanceOf(userA), userABalanceBefore - tokensToSend);

        // ========== RECEIVE SIDE (Base) ==========
        selectFork(BASE_MAINNET);
        
        // 7. Check balance before receive
        uint256 userBBalanceBefore = baseOft.balanceOf(userB);
        assertEq(userBBalanceBefore, 0);
        
        // 8. Verify the endpoint is ready to receive
        uint32 arbEid = LZUtils.getEid(protocolAddressProvider, ARBITRUM_MAINNET);
        Origin memory origin = Origin({
            srcEid: arbEid,
            sender: LZUtils.addressToBytes32(address(arbOft)),
            nonce: 1
        });
        
        // Check endpoint (from address book) is initializable
        assertEq(ILayerZeroEndpointV2(baseProtocol.endpointV2).initializable(origin, address(baseOft)), true);

        // 9. Simulate the cross-chain message delivery
        uint64 amountSD = baseOft.toSD(tokensToSend);
        (bytes memory message,) = OFTMsgCodec.encode(
            LZUtils.addressToBytes32(userB),
            amountSD,
            hex""
        );

        Origin memory deliveryOrigin = Origin({
            srcEid: arbEid,
            sender: LZUtils.addressToBytes32(address(arbOft)),
            nonce: 1
        });

        // Simulate endpoint (from address book) calling lzReceive
        vm.prank(baseProtocol.endpointV2);
        baseOft.lzReceive(deliveryOrigin, receipt.guid, message, address(0), hex"");
        
        // 10. Check gas usage
        VmSafe.Gas memory gasUsed = vm.lastCallGas();
        assertLt(gasUsed.gasTotalUsed, LZ_RECEIVE_GAS, "Should use less than LZ_RECEIVE_GAS");

        // 11. Verify tokens were minted on destination chain
        assertEq(baseOft.balanceOf(userB), userBBalanceBefore + tokensToSend);
    }
    
    // ============================================
    // TEST: Address Book Integration
    // ============================================
    
    /// @notice Test that deployed contracts use correct addresses from address book
    function testFork_addressBookIntegration() public {
        // Verify Arbitrum OFT uses correct endpoint
        selectFork(ARBITRUM_MAINNET);
        address arbEndpoint = address(arbOft.endpoint());
        assertEq(arbEndpoint, arbProtocol.endpointV2, "Should use endpoint from address book");
        
        // Verify endpoint is the real contract
        uint256 codeSize;
        assembly {
            codeSize := extcodesize(arbEndpoint)
        }
        assertGt(codeSize, 0, "Endpoint should be deployed contract");
        
        // Verify Base OFT uses correct endpoint
        selectFork(BASE_MAINNET);
        address baseEndpoint = address(baseOft.endpoint());
        assertEq(baseEndpoint, baseProtocol.endpointV2, "Should use endpoint from address book");
        
        assembly {
            codeSize := extcodesize(baseEndpoint)
        }
        assertGt(codeSize, 0, "Endpoint should be deployed contract");
        
        console.log("[PASS] Address book integration verified");
    }
    
    /// @notice Test accessing DVN addresses from address book
    function testFork_dvnAccess() public {
        // Get DVN addresses from the address book
        address arbLzLabsDVN = getDVNAddress("LayerZero Labs", ARBITRUM_MAINNET);
        address baseLzLabsDVN = getDVNAddress("LayerZero Labs", BASE_MAINNET);
        
        // Verify DVNs are deployed contracts
        selectFork(ARBITRUM_MAINNET);
        uint256 arbCodeSize;
        assembly {
            arbCodeSize := extcodesize(arbLzLabsDVN)
        }
        assertGt(arbCodeSize, 0, "Arbitrum DVN should be deployed");
        
        selectFork(BASE_MAINNET);
        uint256 baseCodeSize;
        assembly {
            baseCodeSize := extcodesize(baseLzLabsDVN)
        }
        assertGt(baseCodeSize, 0, "Base DVN should be deployed");
        
        console.log("Arbitrum LayerZero Labs DVN:", arbLzLabsDVN);
        console.log("Base LayerZero Labs DVN:", baseLzLabsDVN);
        console.log("[PASS] DVN addresses verified from address book");
    }
}

