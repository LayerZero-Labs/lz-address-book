// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";

import {LZProtocol} from "../src/helpers/LZProtocol.sol";
import {LZAddressContext} from "../src/helpers/LZAddressContext.sol";
import {DVNValidator} from "../src/helpers/DVNValidator.sol";
import {ChainFamilies} from "../src/utils/ChainFamilies.sol";
import {ILZProtocol} from "../src/helpers/interfaces/ILZProtocol.sol";
import {IDVNValidator} from "../src/helpers/interfaces/IDVNValidator.sol";

contract AddressBookV2Test is Test {
    LZProtocol protocol;
    LZAddressContext context;
    DVNValidator validator;

    function setUp() public {
        protocol = new LZProtocol();
        context = new LZAddressContext();
        validator = new DVNValidator();
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
        
        address ep = context.getEndpoint();
        assertTrue(ep != address(0), "Endpoint should not be zero");
    }

    function testContextByChainName() public {
        context.setChain("arbitrum-mainnet");
        assertEq(context.getCurrentEID(), 30110);
        assertTrue(context.getEndpoint() != address(0));
    }

    function testContextByChainId() public {
        context.setChainByChainId(42161); // Arbitrum chain ID
        assertEq(context.getCurrentChainName(), "arbitrum-mainnet");
    }

    function testGetLibraries() public {
        context.setChain("arbitrum-mainnet");
        
        address sendLib = context.getSendLib();
        address receiveLib = context.getReceiveLib();
        address executor = context.getExecutor();
        
        assertTrue(sendLib != address(0), "SendLib should be set");
        assertTrue(receiveLib != address(0), "ReceiveLib should be set");
        assertTrue(executor != address(0), "Executor should be set");
    }

    function testGetDVNFor() public view {
        address arbLz = context.getDVNFor("LayerZero Labs", "arbitrum-mainnet");
        address baseLz = context.getDVNFor("LayerZero Labs", "base-mainnet");
        
        assertTrue(arbLz != address(0), "Arbitrum DVN should exist");
        assertTrue(baseLz != address(0), "Base DVN should exist");
        assertTrue(arbLz != baseLz, "DVN addresses differ per chain");
    }

    function testGetEidCrossChain() public view {
        uint32 arbEid = context.getEid("arbitrum-mainnet");
        uint32 baseEid = context.getEid("base-mainnet");
        
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
        address arbExecutor = context.getExecutorFor("arbitrum-mainnet");
        address baseExecutor = context.getExecutorFor("base-mainnet");
        
        assertTrue(arbExecutor != address(0), "Arbitrum executor should exist");
        assertTrue(baseExecutor != address(0), "Base executor should exist");
    }

    function testIsChainSupported() public view {
        assertTrue(context.isChainSupported("arbitrum-mainnet"), "arbitrum-mainnet should be supported");
        assertTrue(context.isChainSupported("base-mainnet"), "base-mainnet should be supported");
        assertFalse(context.isChainSupported("fake-chain"), "fake-chain should not be supported");
        
        assertTrue(context.isChainSupportedByEid(30110), "EID 30110 should be supported");
        assertFalse(context.isChainSupportedByEid(99999), "EID 99999 should not be supported");
        
        assertTrue(context.isChainSupportedByChainId(42161), "Chain ID 42161 should be supported");
        assertFalse(context.isChainSupportedByChainId(999999), "Chain ID 999999 should not be supported");
    }

    function testDVNDiscovery() public view {
        // Test that we can discover available DVNs
        string[] memory allDVNs = context.getAvailableDVNs();
        assertTrue(allDVNs.length > 0, "Should have available DVNs");
        
        // Check that LayerZero Labs is in the list
        bool foundLZ = false;
        for (uint i = 0; i < allDVNs.length; i++) {
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
        for (uint i = 0; i < addresses.length; i++) {
            assertTrue(addresses[i] != address(0), "DVN address should not be zero");
        }
    }

    function testDVNsForChain() public view {
        (string[] memory names, address[] memory addresses) = context.getDVNsForChain("base-mainnet");
        
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
        context.getDVN("NonExistentDVN");
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
        for (uint i = 0; i < chainNames.length; i++) {
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
        for (uint i = 0; i < eids.length; i++) {
            if (eids[i] == 30110) foundArbitrum = true;
            if (eids[i] == 30184) foundBase = true;
        }
        assertTrue(foundArbitrum, "EID 30110 (Arbitrum) should be in supported EIDs");
        assertTrue(foundBase, "EID 30184 (Base) should be in supported EIDs");
    }

    function testGetSendLibFor() public view {
        address arbSendLib = context.getSendLibFor("arbitrum-mainnet");
        address baseSendLib = context.getSendLibFor("base-mainnet");
        
        assertTrue(arbSendLib != address(0), "Arbitrum send lib should exist");
        assertTrue(baseSendLib != address(0), "Base send lib should exist");
    }

    function testGetReceiveLibFor() public view {
        address arbReceiveLib = context.getReceiveLibFor("arbitrum-mainnet");
        address baseReceiveLib = context.getReceiveLibFor("base-mainnet");
        
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
        freshCtx.getEndpoint();
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
        IDVNValidator.DVNAvailability memory details = validator.getDVNAvailability(
            "LayerZero Labs", 
            "arbitrum-mainnet", 
            "base-mainnet"
        );
        
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
        for (uint i = 0; i < common.length; i++) {
            if (_eq(common[i], "LayerZero Labs")) {
                foundLz = true;
                break;
            }
        }
        assertTrue(foundLz, "LayerZero Labs should be common");
    }

    // ============================================
    // CHAIN FAMILIES TESTS
    // ============================================

    function testChainFamilies() public view {
        uint32[] memory mainnets = ChainFamilies.getAllMainnets(protocol);
        assertTrue(mainnets.length > 0, "Should have mainnets");
        
        bool found = false;
        for(uint i=0; i<mainnets.length; i++) {
            if(mainnets[i] == 30101) found = true;
        }
        assertTrue(found, "Ethereum Mainnet should be in mainnets family");
        
        uint32[] memory testnets = ChainFamilies.getAllTestnets(protocol);
        assertTrue(testnets.length > 0, "Should have testnets");
    }

    function testSandboxFamilies() public view {
        uint32[] memory sandboxes = ChainFamilies.getAllSandboxes(protocol);
        if (sandboxes.length > 0) {
            bool found = false;
            for(uint i=0; i<sandboxes.length; i++) {
                if (sandboxes[i] > 0) found = true;
            }
            assertTrue(found);
        }
    }

    // ============================================
    // HELPERS
    // ============================================

    function _eq(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}
