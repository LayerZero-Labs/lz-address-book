// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";

import {LZProtocol} from "../src/generated/LZProtocol.sol";
import {LZAddressContext} from "../src/helpers/LZAddressContext.sol";
import {DVNValidator} from "../src/helpers/DVNValidator.sol";
import {STGProtocol, ISTGProtocol} from "../src/generated/STGProtocol.sol";
import {ChainStage} from "../src/utils/ChainStage.sol";
import {ILZProtocol} from "../src/helpers/interfaces/ILZProtocol.sol";
import {IDVNValidator} from "../src/helpers/interfaces/IDVNValidator.sol";

contract AddressBookV2Test is Test {
    LZProtocol protocol;
    LZAddressContext context;
    DVNValidator validator;
    STGProtocol stg;

    function setUp() public {
        protocol = new LZProtocol();
        context = new LZAddressContext();
        validator = new DVNValidator();
        stg = new STGProtocol();
    }

    // ============================================
    // PROTOCOL TESTS
    // ============================================

    function testGetFullDeploymentInfo() public view {
        uint32 eid = 30110; // Arbitrum
        ILZProtocol.FullDeploymentInfo memory info = protocol.getFullDeploymentInfo(eid);

        assertEq(info.eid, eid);
        assertEq(info.chainName, "arbitrum-mainnet");
        assertTrue(info.allDVNs.length > 0, "Should have DVNs");
        assertTrue(info.allDVNNames.length > 0, "Should have DVN names");
        assertEq(info.allDVNs.length, info.allDVNNames.length, "DVN arrays mismatch");
    }

    function testPathwayInfo() public view {
        ILZProtocol.PathwayInfo memory info = protocol.getPathwayInfo("arbitrum-mainnet", "base-mainnet");

        assertTrue(info.connected, "Pathway should be connected");
        assertEq(info.source.chainName, "arbitrum-mainnet");
        assertEq(info.destination.chainName, "base-mainnet");
        assertEq(info.source.eid, 30110);
        assertEq(info.destination.eid, 30184);
    }

    // ============================================
    // CONTEXT TESTS
    // ============================================

    function testContextManagement() public {
        context.setChainByEid(30184); // Base
        assertEq(context.getCurrentChainName(), "base-mainnet");

        address ep = context.getEndpointV2();
        assertTrue(ep != address(0), "Endpoint should not be zero");
    }

    function testContextByChainName() public {
        context.setChain("arbitrum-mainnet");
        assertEq(context.getCurrentEID(), 30110);
        assertTrue(context.getEndpointV2() != address(0));
    }

    function testContextByChainId() public {
        context.setChainByChainId(42161); // Arbitrum chain ID
        assertEq(context.getCurrentChainName(), "arbitrum-mainnet");
    }

    function testGetLibraries() public {
        context.setChain("arbitrum-mainnet");

        address sendLib = context.getSendUln302();
        address receiveLib = context.getReceiveUln302();
        address executor = context.getExecutor();

        assertTrue(sendLib != address(0), "SendLib should be set");
        assertTrue(receiveLib != address(0), "ReceiveLib should be set");
        assertTrue(executor != address(0), "Executor should be set");
    }

    function testGetDVNFor() public view {
        address arbLz = context.getDVNForChainName("LayerZero Labs", "arbitrum-mainnet");
        address baseLz = context.getDVNForChainName("LayerZero Labs", "base-mainnet");

        assertTrue(arbLz != address(0), "Arbitrum DVN should exist");
        assertTrue(baseLz != address(0), "Base DVN should exist");
        assertTrue(arbLz != baseLz, "DVN addresses differ per chain");
    }

    function testGetEidCrossChain() public view {
        uint32 arbEid = context.getEidForChainName("arbitrum-mainnet");
        uint32 baseEid = context.getEidForChainName("base-mainnet");

        assertEq(arbEid, 30110);
        assertEq(baseEid, 30184);
    }

    function testRpcUrls() public {
        context.setChain("arbitrum-mainnet");
        string[] memory rpcs = context.getRpcUrls();
        string memory primary = context.getPrimaryRpcUrl();

        if (rpcs.length > 0) {
            assertEq(primary, rpcs[0]);
        } else {
            assertEq(bytes(primary).length, 0);
        }
    }

    function testAddressToBytes32() public view {
        address addr = 0x1234567890123456789012345678901234567890;
        bytes32 b = context.addressToBytes32(addr);
        address recovered = context.bytes32ToAddress(b);

        assertEq(recovered, addr);
    }

    function testGetCurrentChainId() public {
        context.setChain("arbitrum-mainnet");
        uint256 chainId = context.getCurrentChainId();
        assertEq(chainId, 42161, "Arbitrum chain ID should be 42161");

        context.setChain("base-mainnet");
        chainId = context.getCurrentChainId();
        assertEq(chainId, 8453, "Base chain ID should be 8453");
    }

    function testGetExecutorFor() public view {
        address arbExecutor = context.getExecutorForChainName("arbitrum-mainnet");
        address baseExecutor = context.getExecutorForChainName("base-mainnet");

        assertTrue(arbExecutor != address(0), "Arbitrum executor should exist");
        assertTrue(baseExecutor != address(0), "Base executor should exist");
    }

    function testIsChainSupported() public view {
        assertTrue(context.isChainNameSupported("arbitrum-mainnet"), "arbitrum-mainnet should be supported");
        assertTrue(context.isChainNameSupported("base-mainnet"), "base-mainnet should be supported");
        assertFalse(context.isChainNameSupported("fake-chain"), "fake-chain should not be supported");

        assertTrue(context.isEidSupported(30110), "EID 30110 should be supported");
        assertFalse(context.isEidSupported(99999), "EID 99999 should not be supported");

        assertTrue(context.isChainIdSupported(42161), "Chain ID 42161 should be supported");
        assertFalse(context.isChainIdSupported(999999), "Chain ID 999999 should not be supported");
    }

    function testDVNDiscovery() public view {
        // Test that we can discover available DVNs
        string[] memory allDVNs = context.getAvailableDVNs();
        assertTrue(allDVNs.length > 0, "Should have available DVNs");

        // Check that LayerZero Labs is in the list
        bool foundLZ = false;
        for (uint256 i = 0; i < allDVNs.length; i++) {
            if (_eq(allDVNs[i], "LayerZero Labs")) {
                foundLZ = true;
                break;
            }
        }
        assertTrue(foundLZ, "LayerZero Labs should be in available DVNs");
    }

    function testDVNsForCurrentChain() public {
        context.setChain("arbitrum-mainnet");
        (string[] memory names, address[] memory addresses) = context.getDVNsForCurrentChain();

        assertTrue(names.length > 0, "Should have DVNs on Arbitrum");
        assertEq(names.length, addresses.length, "Names and addresses should match");

        // All addresses should be non-zero
        for (uint256 i = 0; i < addresses.length; i++) {
            assertTrue(addresses[i] != address(0), "DVN address should not be zero");
        }
    }

    function testDVNsForChain() public view {
        (string[] memory names, address[] memory addresses) = context.getDVNsForChainName("base-mainnet");

        assertTrue(names.length > 0, "Should have DVNs on Base");
        assertEq(names.length, addresses.length, "Names and addresses should match");
    }

    function testIsDVNAvailable() public {
        context.setChain("arbitrum-mainnet");
        assertTrue(context.isDVNAvailable("LayerZero Labs"), "LayerZero Labs should be available");
        assertFalse(context.isDVNAvailable("NonExistentDVN"), "NonExistentDVN should not be available");
    }

    function testGetDVNRevertsOnNotFound() public {
        context.setChain("arbitrum-mainnet");
        vm.expectRevert("DVN not found on arbitrum-mainnet: NonExistentDVN");
        context.getDVNByName("NonExistentDVN");
    }

    function testGetDVNsBatch() public {
        context.setChain("arbitrum-mainnet");

        string[] memory dvnNames = new string[](2);
        dvnNames[0] = "LayerZero Labs";
        dvnNames[1] = "Nethermind";

        address[] memory addresses = context.getDVNs(dvnNames);

        assertEq(addresses.length, 2, "Should return 2 addresses");
        assertTrue(addresses[0] != address(0), "LayerZero Labs address should not be zero");
        assertTrue(addresses[1] != address(0), "Nethermind address should not be zero");
    }

    function testGetDVNsBatchRevertsOnNotFound() public {
        context.setChain("arbitrum-mainnet");

        string[] memory dvnNames = new string[](2);
        dvnNames[0] = "LayerZero Labs";
        dvnNames[1] = "NonExistentDVN";

        vm.expectRevert("DVN not found on arbitrum-mainnet: NonExistentDVN");
        context.getDVNs(dvnNames);
    }

    function testGetSupportedChainNames() public view {
        string[] memory chainNames = context.getSupportedChainNames();

        assertTrue(chainNames.length > 0, "Should have supported chains");

        // Check that some known chains are in the list
        bool foundArbitrum = false;
        bool foundBase = false;
        for (uint256 i = 0; i < chainNames.length; i++) {
            if (_eq(chainNames[i], "arbitrum-mainnet")) foundArbitrum = true;
            if (_eq(chainNames[i], "base-mainnet")) foundBase = true;
        }
        assertTrue(foundArbitrum, "arbitrum-mainnet should be in supported chains");
        assertTrue(foundBase, "base-mainnet should be in supported chains");
    }

    function testGetSupportedEids() public view {
        uint32[] memory eids = context.getSupportedEids();

        assertTrue(eids.length > 0, "Should have supported EIDs");

        // Check that some known EIDs are in the list
        bool foundArbitrum = false;
        bool foundBase = false;
        for (uint256 i = 0; i < eids.length; i++) {
            if (eids[i] == 30110) foundArbitrum = true;
            if (eids[i] == 30184) foundBase = true;
        }
        assertTrue(foundArbitrum, "EID 30110 (Arbitrum) should be in supported EIDs");
        assertTrue(foundBase, "EID 30184 (Base) should be in supported EIDs");
    }

    function testGetSendLibFor() public view {
        address arbSendLib = context.getSendLibForChainName("arbitrum-mainnet");
        address baseSendLib = context.getSendLibForChainName("base-mainnet");

        assertTrue(arbSendLib != address(0), "Arbitrum send lib should exist");
        assertTrue(baseSendLib != address(0), "Base send lib should exist");
    }

    function testGetReceiveLibFor() public view {
        address arbReceiveLib = context.getReceiveLibForChainName("arbitrum-mainnet");
        address baseReceiveLib = context.getReceiveLibForChainName("base-mainnet");

        assertTrue(arbReceiveLib != address(0), "Arbitrum receive lib should exist");
        assertTrue(baseReceiveLib != address(0), "Base receive lib should exist");
    }

    function testImprovedErrorMessages() public {
        // Test improved error message for unsupported chain name
        vm.expectRevert("Chain not supported: fake-chain");
        context.setChain("fake-chain");
    }

    function testImprovedErrorMessageForEid() public {
        // Test improved error message for unsupported EID
        vm.expectRevert("EID not supported: 99999");
        context.setChainByEid(99999);
    }

    function testImprovedErrorMessageForChainId() public {
        // Test improved error message for unsupported chain ID
        vm.expectRevert("Chain ID not supported: 999999");
        context.setChainByChainId(999999);
    }

    function testImprovedErrorMessageForContextNotSet() public {
        // Create fresh context without setting chain
        LZAddressContext freshCtx = new LZAddressContext();
        vm.expectRevert("Chain context not set. Call setChain(), setChainByEid(), or setChainByChainId() first.");
        freshCtx.getEndpointV2();
    }

    // ============================================
    // DVN VALIDATOR TESTS
    // ============================================

    function testDVNValidator() public view {
        bool valid = validator.isDVNAvailableOnBothByEid("LayerZero Labs", 30110, 30184);
        assertTrue(valid, "LayerZero Labs should be on both Arbitrum and Base");

        valid = validator.isDVNAvailableOnBothByEid("NonExistentDVN", 30110, 30184);
        assertFalse(valid, "NonExistentDVN should not be available");
    }

    function testDetailedDVNAvailability() public view {
        IDVNValidator.DVNAvailability memory details =
            validator.getDVNAvailability("LayerZero Labs", "arbitrum-mainnet", "base-mainnet");

        assertEq(details.dvnName, "LayerZero Labs");
        assertTrue(details.availableOnSource);
        assertTrue(details.availableOnDest);
        assertTrue(details.sourceAddress != address(0));
        assertTrue(details.destAddress != address(0));
    }

    function testGetCommonDVNs() public view {
        string[] memory common = validator.getCommonDVNs("arbitrum-mainnet", "base-mainnet");
        assertTrue(common.length > 0, "Should find common DVNs");

        bool foundLz = false;
        for (uint256 i = 0; i < common.length; i++) {
            if (_eq(common[i], "LayerZero Labs")) {
                foundLz = true;
                break;
            }
        }
        assertTrue(foundLz, "LayerZero Labs should be common");
    }

    // ============================================
    // CHAIN STAGE TESTS
    // ============================================

    function testChainStage() public view {
        uint32[] memory mainnets = ChainStage.getAllMainnets(protocol);
        assertTrue(mainnets.length > 0, "Should have mainnets");

        bool found = false;
        for (uint256 i = 0; i < mainnets.length; i++) {
            if (mainnets[i] == 30101) found = true;
        }
        assertTrue(found, "Ethereum Mainnet should be in mainnets");

        uint32[] memory testnets = ChainStage.getAllTestnets(protocol);
        assertTrue(testnets.length > 0, "Should have testnets");
    }

    // ============================================
    // REVERSE DVN LOOKUP TESTS
    // ============================================

    function testReverseDVNLookup() public {
        context.setChain("arbitrum-mainnet");

        // Get DVN address by name
        address lzLabsDVN = context.getDVNByName("LayerZero Labs");
        assertTrue(lzLabsDVN != address(0), "DVN address should not be zero");

        // Reverse lookup - get name from address
        string memory dvnName = context.getDVNName(lzLabsDVN);
        assertTrue(_eq(dvnName, "LayerZero Labs"), "Should resolve to LayerZero Labs");
    }

    function testReverseDVNLookupCrossChain() public {
        context.setChain("arbitrum-mainnet");

        // Get DVN address
        address lzLabsDVN = context.getDVNByName("LayerZero Labs");

        // Cross-chain reverse lookup (without changing context)
        string memory dvnName = context.getDVNNameForChainName(lzLabsDVN, "arbitrum-mainnet");
        assertTrue(_eq(dvnName, "LayerZero Labs"), "Cross-chain lookup should work");
    }

    function testReverseDVNLookupRevertsOnNotFound() public {
        context.setChain("arbitrum-mainnet");

        // Random address that is not a DVN
        address randomAddr = address(0x1234567890123456789012345678901234567890);

        vm.expectRevert();
        context.getDVNName(randomAddr);
    }

    // ============================================
    // STARGATE PROTOCOL TESTS
    // ============================================

    function testStargateGetAsset() public view {
        // Get USDC on Arbitrum
        ISTGProtocol.StargateAsset memory usdc = stg.getAsset("arbitrum-mainnet", "USDC");

        assertTrue(usdc.exists, "Asset should exist");
        assertTrue(usdc.oft != address(0), "OFT address should not be zero");
        assertTrue(usdc.token != address(0), "Token address should not be zero");
        assertTrue(_eq(usdc.symbol, "USDC"), "Symbol should be USDC");
        assertEq(usdc.decimals, 6, "USDC should have 6 decimals");
        assertTrue(usdc.stargateType == ISTGProtocol.StargateType.POOL, "Arbitrum USDC should be a Pool");
    }

    function testStargateGetAssetsForChain() public view {
        ISTGProtocol.StargateAsset[] memory assets = stg.getAssetsForChainName("arbitrum-mainnet");

        assertTrue(assets.length > 0, "Should have at least one asset");

        // Check that all assets exist
        for (uint256 i = 0; i < assets.length; i++) {
            assertTrue(assets[i].exists, "Each asset should exist");
            assertTrue(assets[i].oft != address(0), "Each asset should have OFT address");
        }
    }

    function testStargateGetTokenMessaging() public view {
        address tokenMessaging = stg.getTokenMessaging("arbitrum-mainnet");
        assertTrue(tokenMessaging != address(0), "TokenMessaging should not be zero");
    }

    function testStargateGetSupportedSymbols() public view {
        string[] memory symbols = stg.getSupportedSymbols();
        assertTrue(symbols.length > 0, "Should have supported symbols");

        // Check that USDC is in the list
        bool foundUSDC = false;
        for (uint256 i = 0; i < symbols.length; i++) {
            if (_eq(symbols[i], "USDC")) {
                foundUSDC = true;
                break;
            }
        }
        assertTrue(foundUSDC, "USDC should be in supported symbols");
    }

    function testStargateGetSupportedChains() public view {
        string[] memory chains = stg.getSupportedChainNames();
        assertTrue(chains.length > 0, "Should have supported chains");

        // Check that arbitrum-mainnet is in the list
        bool foundArbitrum = false;
        for (uint256 i = 0; i < chains.length; i++) {
            if (_eq(chains[i], "arbitrum-mainnet")) {
                foundArbitrum = true;
                break;
            }
        }
        assertTrue(foundArbitrum, "Arbitrum should be in supported chains");
    }

    function testStargateAssetExists() public view {
        assertTrue(stg.assetExists("arbitrum-mainnet", "USDC"), "USDC should exist on Arbitrum");
        assertFalse(stg.assetExists("arbitrum-mainnet", "FAKE_TOKEN"), "FAKE_TOKEN should not exist");
    }

    function testStargateIsHydraChain() public view {
        // Arbitrum USDC is a Pool, not a Hydra OFT
        assertFalse(stg.isHydraChain("arbitrum-mainnet", "USDC"), "Arbitrum USDC should not be Hydra");

        // Check if bera exists and is Hydra
        if (stg.assetExists("bera-mainnet", "USDC.e")) {
            assertTrue(stg.isHydraChain("bera-mainnet", "USDC.e"), "Bera USDC.e should be Hydra");
        }
    }

    function testStargateGetAssetByEid() public view {
        // Arbitrum EID is 30110
        ISTGProtocol.StargateAsset memory usdc = stg.getAssetByEid(30110, "USDC");

        assertTrue(usdc.exists, "Asset should exist");
        assertTrue(_eq(usdc.symbol, "USDC"), "Symbol should be USDC");
    }

    function testStargateGetAssetByChainId() public view {
        // Arbitrum chain ID is 42161
        ISTGProtocol.StargateAsset memory usdc = stg.getAssetByChainId(42161, "USDC");

        assertTrue(usdc.exists, "Asset should exist");
        assertTrue(_eq(usdc.symbol, "USDC"), "Symbol should be USDC");
    }

    function testStargateChainNameResolution() public view {
        // Test EID to chain name
        string memory chainFromEid = stg.getChainNameByEid(30110);
        assertTrue(_eq(chainFromEid, "arbitrum-mainnet"), "EID 30110 should resolve to arbitrum-mainnet");

        // Test chain ID to chain name
        string memory chainFromId = stg.getChainNameByChainId(42161);
        assertTrue(_eq(chainFromId, "arbitrum-mainnet"), "Chain ID 42161 should resolve to arbitrum-mainnet");
    }

    function testStargateEidAndChainIdSupport() public view {
        assertTrue(stg.isEidSupported(30110), "Arbitrum EID should be supported");
        assertTrue(stg.isChainIdSupported(42161), "Arbitrum chain ID should be supported");
        assertFalse(stg.isEidSupported(99999), "Invalid EID should not be supported");
        assertFalse(stg.isChainIdSupported(99999), "Invalid chain ID should not be supported");
    }

    // ============================================
    // HELPERS
    // ============================================

    function _eq(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}
