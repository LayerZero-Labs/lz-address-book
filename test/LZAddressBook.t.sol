// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";

// Import the generated address libraries
import "../src/generated/LZAddresses.sol";

// Import helper contracts
import {LZProtocol, ILZProtocol} from "../src/generated/LZProtocol.sol";
import {LZWorkers} from "../src/generated/LZWorkers.sol";

/// @title LayerZero Address Book Unit Tests
/// @notice Demonstrates how to use the LayerZero Address Book in unit tests
/// @dev Tests access patterns and data integrity without requiring network access
contract LZAddressBookTest is Test {
    LZProtocol public protocolProvider;
    LZWorkers public workersRegistry;

    function setUp() public {
        // Deploy helper contracts
        protocolProvider = new LZProtocol();
        workersRegistry = new LZWorkers();
    }

    // ============================================
    // BASIC LIBRARY ACCESS TESTS
    // ============================================

    /// @notice Test direct library access for Ethereum mainnet
    function test_directLibraryAccess_Ethereum() public pure {
        // Access addresses directly from generated libraries
        uint32 eid = LayerZeroV2EthereumMainnet.EID;
        uint256 chainId = LayerZeroV2EthereumMainnet.CHAIN_ID;
        address endpoint = address(LayerZeroV2EthereumMainnet.ENDPOINT_V2);

        // Verify values
        assertEq(eid, 30101, "Ethereum mainnet EID should be 30101");
        assertEq(chainId, 1, "Ethereum mainnet chain ID should be 1");
        assertNotEq(endpoint, address(0), "Endpoint address should not be zero");

        console.log("Ethereum Mainnet:");
        console.log("  EID:", eid);
        console.log("  Chain ID:", chainId);
        console.log("  Endpoint:", endpoint);
    }

    /// @notice Test direct library access for Arbitrum mainnet
    function test_directLibraryAccess_Arbitrum() public pure {
        uint32 eid = LayerZeroV2ArbitrumMainnet.EID;
        uint256 chainId = LayerZeroV2ArbitrumMainnet.CHAIN_ID;
        address endpoint = address(LayerZeroV2ArbitrumMainnet.ENDPOINT_V2);
        address sendLib = address(LayerZeroV2ArbitrumMainnet.SEND_ULN_302);
        address receiveLib = address(LayerZeroV2ArbitrumMainnet.RECEIVE_ULN_302);

        assertEq(eid, 30110, "Arbitrum mainnet EID should be 30110");
        assertEq(chainId, 42161, "Arbitrum mainnet chain ID should be 42161");
        assertNotEq(endpoint, address(0), "Endpoint address should not be zero");
        assertNotEq(sendLib, address(0), "Send library address should not be zero");
        assertNotEq(receiveLib, address(0), "Receive library address should not be zero");

        console.log("Arbitrum Mainnet:");
        console.log("  EID:", eid);
        console.log("  Endpoint:", endpoint);
        console.log("  Send ULN 302:", sendLib);
        console.log("  Receive ULN 302:", receiveLib);
    }

    /// @notice Test accessing DVN addresses
    function test_directDVNAccess_Ethereum() public pure {
        address lzLabsDVN = LayerZeroV2DVNEthereumMainnet.DVN_LAYERZERO_LABS;

        assertNotEq(lzLabsDVN, address(0), "LayerZero Labs DVN should not be zero");

        console.log("LayerZero Labs DVN on Ethereum:", lzLabsDVN);
    }

    // ============================================
    // PROTOCOL PROVIDER TESTS
    // ============================================

    /// @notice Test getting protocol addresses by EID
    function test_protocolProvider_getByEid() public view {
        uint32 baseEid = 30184; // Base mainnet

        ILZProtocol.ProtocolAddresses memory addresses = protocolProvider.getProtocolAddresses(baseEid);

        assertTrue(addresses.exists, "Base should be registered");
        assertEq(addresses.chainId, 8453, "Base chain ID should be 8453");
        assertNotEq(addresses.endpointV2, address(0), "Endpoint should not be zero");
        assertNotEq(addresses.sendUln302, address(0), "Send ULN should not be zero");
        assertNotEq(addresses.receiveUln302, address(0), "Receive ULN should not be zero");
        assertNotEq(addresses.executor, address(0), "Executor should not be zero");

        console.log("Base Mainnet Protocol Addresses:");
        console.log("  Endpoint V2:", addresses.endpointV2);
        console.log("  Send ULN 302:", addresses.sendUln302);
        console.log("  Receive ULN 302:", addresses.receiveUln302);
        console.log("  Executor:", addresses.executor);
    }

    /// @notice Test getting protocol addresses by chain name
    function test_protocolProvider_getByChainName() public view {
        ILZProtocol.ProtocolAddresses memory addresses =
            protocolProvider.getProtocolAddressesByChainName("optimism-mainnet");

        assertTrue(addresses.exists, "Optimism should be registered");
        assertEq(addresses.chainName, "optimism-mainnet", "Chain name should match");
        assertEq(addresses.chainId, 10, "Optimism chain ID should be 10");

        console.log("Optimism Mainnet via chain name:");
        console.log("  EID from chain ID:", protocolProvider.getEidByChainId(uint256(10)));
        console.log("  Endpoint:", addresses.endpointV2);
    }

    /// @notice Test EID to chain ID conversion
    function test_protocolProvider_eidConversion() public view {
        // Test various chains
        assertEq(protocolProvider.getEidByChainId(uint256(1)), 30101, "Ethereum EID");
        assertEq(protocolProvider.getEidByChainId(uint256(42161)), 30110, "Arbitrum EID");
        assertEq(protocolProvider.getEidByChainId(uint256(8453)), 30184, "Base EID");
        assertEq(protocolProvider.getEidByChainId(uint256(10)), 30111, "Optimism EID");
        assertEq(protocolProvider.getEidByChainId(uint256(137)), 30109, "Polygon EID");
    }

    /// @notice Test checking if chains are supported
    function test_protocolProvider_chainSupport() public view {
        // These should be supported
        assertTrue(protocolProvider.isEidSupported(30101), "Ethereum should be supported");
        assertTrue(protocolProvider.isEidSupported(30110), "Arbitrum should be supported");
        assertTrue(protocolProvider.isEidSupported(30184), "Base should be supported");

        assertTrue(protocolProvider.isChainIdSupported(uint256(1)), "Ethereum chain ID should be supported");
        assertTrue(protocolProvider.isChainIdSupported(uint256(42161)), "Arbitrum chain ID should be supported");
        assertTrue(protocolProvider.isChainIdSupported(uint256(8453)), "Base chain ID should be supported");

        // This should not be supported (random EID)
        assertFalse(protocolProvider.isEidSupported(99999), "Random EID should not be supported");
    }

    /// @notice Test getting all supported EIDs
    function test_protocolProvider_allEids() public view {
        uint32[] memory eids = protocolProvider.getSupportedEids();

        assertTrue(eids.length > 100, "Should have many supported chains");

        console.log("Total supported chains:", eids.length);
    }

    // ============================================
    // WORKERS REGISTRY TESTS
    // ============================================

    /// @notice Test getting DVN address by name and EID
    function test_workersRegistry_getDVNByEid() public view {
        uint32 ethereumEid = 30101;
        address lzLabsDVN = workersRegistry.getDVNAddress("LayerZero Labs", ethereumEid);

        assertNotEq(lzLabsDVN, address(0), "LayerZero Labs DVN should exist on Ethereum");

        console.log("LayerZero Labs DVN on Ethereum (via registry):", lzLabsDVN);
    }

    /// @notice Test getting DVN address by name and chain name
    function test_workersRegistry_getDVNByChainName() public view {
        address lzLabsDVN = workersRegistry.getDVNAddressByChainName("LayerZero Labs", "arbitrum-mainnet");

        assertNotEq(lzLabsDVN, address(0), "LayerZero Labs DVN should exist on Arbitrum");

        console.log("LayerZero Labs DVN on Arbitrum:", lzLabsDVN);
    }

    /// @notice Test getting multiple DVN addresses at once
    function test_workersRegistry_getMultipleDVNs() public view {
        string[] memory dvnNames = new string[](2);
        dvnNames[0] = "LayerZero Labs";
        dvnNames[1] = "Nethermind";

        address[] memory dvnAddresses = workersRegistry.getDVNAddressesByChainName(dvnNames, "base-mainnet");

        assertEq(dvnAddresses.length, 2, "Should return 2 addresses");
        assertNotEq(dvnAddresses[0], address(0), "LayerZero Labs DVN should not be zero");
        assertNotEq(dvnAddresses[1], address(0), "Nethermind DVN should not be zero");

        console.log("Base Mainnet DVNs:");
        console.log("  LayerZero Labs:", dvnAddresses[0]);
        console.log("  Nethermind:", dvnAddresses[1]);
    }

    /// @notice Test getting all DVNs for a specific chain
    function test_workersRegistry_getAllDVNsForChain() public view {
        (string[] memory names, address[] memory addresses) = workersRegistry.getDVNsForChainName("ethereum-mainnet");

        assertTrue(names.length > 0, "Ethereum should have DVNs");
        assertEq(names.length, addresses.length, "Names and addresses arrays should match");

        console.log("Ethereum Mainnet has", names.length, "DVNs");

        // Print first few DVNs
        uint256 count = names.length > 5 ? 5 : names.length;
        for (uint256 i = 0; i < count; i++) {
            console.log("  -", names[i], ":", addresses[i]);
        }
    }

    /// @notice Test getting all available DVN names
    function test_workersRegistry_allDVNNames() public view {
        string[] memory dvnNames = workersRegistry.getAvailableDVNs();

        assertTrue(dvnNames.length > 0, "Should have DVN names");

        console.log("Total unique DVNs:", dvnNames.length);

        // Print first few
        uint256 count = dvnNames.length > 10 ? 10 : dvnNames.length;
        console.log("First", count, "DVNs:");
        for (uint256 i = 0; i < count; i++) {
            console.log("  -", dvnNames[i]);
        }
    }

    /// @notice Test DVN existence check
    function test_workersRegistry_dvnExists() public view {
        uint32 ethereumEid = 30101;

        assertTrue(workersRegistry.dvnExists("LayerZero Labs", ethereumEid), "LayerZero Labs should exist on Ethereum");
        assertTrue(workersRegistry.dvnExists("Nethermind", ethereumEid), "Nethermind should exist on Ethereum");
        assertFalse(workersRegistry.dvnExists("NonexistentDVN", ethereumEid), "Nonexistent DVN should not exist");
    }

    // ============================================
    // DATA INTEGRITY TESTS
    // ============================================

    /// @notice Test that DATA_HASH is set for provenance tracking
    function test_dataHashExists() public pure {
        bytes32 dataHash = LZ_ADDRESSES_DATA_HASH;
        assertNotEq(dataHash, bytes32(0), "Data hash should be set for provenance tracking");

        console.log("LZ_ADDRESSES_DATA_HASH:");
        console.logBytes32(dataHash);
    }

    /// @notice Test consistency between direct library access and helper contracts
    function test_consistencyBetweenAccessMethods() public view {
        // Get Ethereum addresses via library
        address libraryEndpoint = address(LayerZeroV2EthereumMainnet.ENDPOINT_V2);
        uint32 libraryEid = LayerZeroV2EthereumMainnet.EID;

        // Get Ethereum addresses via helper
        ILZProtocol.ProtocolAddresses memory helperAddresses = protocolProvider.getProtocolAddresses(libraryEid);

        // They should match
        assertEq(libraryEndpoint, helperAddresses.endpointV2, "Library and helper endpoints should match");
    }
}

