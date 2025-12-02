// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";

// Import the generated address libraries
import "../../src/generated/LZAddresses.sol";

// Import helper contracts
import {LZProtocol, ILZProtocol} from "../../src/generated/LZProtocol.sol";
import {LZWorkers, ILZWorkers} from "../../src/generated/LZWorkers.sol";

// Import LayerZero interfaces for testing
import {ILayerZeroEndpointV2} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {IMessageLib} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/IMessageLib.sol";

/// @title LayerZero Address Book Fork Tests
/// @notice Demonstrates how to use the address book in fork tests
/// @dev Verifies that addresses point to valid deployed contracts
contract LZAddressForkTest is Test {
    LZProtocol public protocolProvider;
    LZWorkers public workersRegistry;
    
    function setUp() public {
        // Deploy helper contracts
        protocolProvider = new LZProtocol();
        workersRegistry = new LZWorkers();
        
        // Make persistent to survive fork switching
        vm.makePersistent(address(protocolProvider));
        vm.makePersistent(address(workersRegistry));
    }
    
    // ============================================
    // ETHEREUM MAINNET FORK TESTS
    // ============================================
    
    /// @notice Test Ethereum mainnet endpoint is valid
    function testFork_ethereumEndpoint() public {
        string memory rpc = _getRpc("ETHEREUM_MAINNET_RPC_URL", "https://eth.llamarpc.com");
        vm.createSelectFork(rpc);
        
        // Get endpoint address
        address endpoint = address(LayerZeroV2EthereumMainnet.ENDPOINT_V2);
        
        // Verify contract exists
        uint256 codeSize;
        assembly {
            codeSize := extcodesize(endpoint)
        }
        assertGt(codeSize, 0, "Endpoint should have code");
        
        // Verify it's the correct interface
        ILayerZeroEndpointV2 endpointContract = ILayerZeroEndpointV2(endpoint);
        uint32 eid = endpointContract.eid();
        assertEq(eid, LayerZeroV2EthereumMainnet.EID, "EID should match");
        
        console.log("Ethereum Mainnet Endpoint verified:");
        console.log("  Address:", endpoint);
        console.log("  EID:", eid);
    }
    
    /// @notice Test Ethereum mainnet message libraries are valid
    function testFork_ethereumMessageLibs() public {
        string memory rpc = _getRpc("ETHEREUM_MAINNET_RPC_URL", "https://eth.llamarpc.com");
        vm.createSelectFork(rpc);
        
        address sendLib = address(LayerZeroV2EthereumMainnet.SEND_ULN_302);
        address receiveLib = address(LayerZeroV2EthereumMainnet.RECEIVE_ULN_302);
        
        // Verify contracts exist
        uint256 sendSize;
        uint256 receiveSize;
        assembly {
            sendSize := extcodesize(sendLib)
            receiveSize := extcodesize(receiveLib)
        }
        assertGt(sendSize, 0, "Send library should have code");
        assertGt(receiveSize, 0, "Receive library should have code");
        
        // Verify they implement IMessageLib
        IMessageLib sendLibContract = IMessageLib(sendLib);
        IMessageLib receiveLibContract = IMessageLib(receiveLib);
        
        // Check they support the correct interface
        assertTrue(sendLibContract.supportsInterface(type(IMessageLib).interfaceId), "Send lib should support IMessageLib");
        assertTrue(receiveLibContract.supportsInterface(type(IMessageLib).interfaceId), "Receive lib should support IMessageLib");
        
        console.log("Ethereum Mainnet Message Libraries verified:");
        console.log("  Send ULN 302:", sendLib);
        console.log("  Receive ULN 302:", receiveLib);
    }
    
    /// @notice Test Ethereum DVNs are valid contracts
    function testFork_ethereumDVNs() public {
        string memory rpc = _getRpc("ETHEREUM_MAINNET_RPC_URL", "https://eth.llamarpc.com");
        vm.createSelectFork(rpc);
        
        address lzLabsDVN = LayerZeroV2DVNEthereumMainnet.DVN_LAYERZERO_LABS;
        
        // Verify contract exists
        uint256 codeSize;
        assembly {
            codeSize := extcodesize(lzLabsDVN)
        }
        assertGt(codeSize, 0, "LayerZero Labs DVN should have code");
        
        console.log("LayerZero Labs DVN on Ethereum verified:", lzLabsDVN);
    }
    
    // ============================================
    // ARBITRUM MAINNET FORK TESTS
    // ============================================
    
    /// @notice Test Arbitrum mainnet addresses using helper contract
    function testFork_arbitrumViaHelper() public {
        string memory rpc = _getRpc("ARBITRUM_MAINNET_RPC_URL", "https://arb1.arbitrum.io/rpc");
        vm.createSelectFork(rpc);
        
        // Get addresses using helper
        ILZProtocol.ProtocolAddresses memory addresses = protocolProvider.getProtocolAddresses("arbitrum-mainnet");
        
        // Verify endpoint
        ILayerZeroEndpointV2 endpoint = ILayerZeroEndpointV2(addresses.endpointV2);
        uint32 eid = endpoint.eid();
        assertEq(eid, 30110, "Arbitrum EID should be 30110");
        
        // Verify we're on the right chain
        assertEq(block.chainid, 42161, "Should be on Arbitrum");
        
        console.log("Arbitrum Mainnet verified via helper:");
        console.log("  Endpoint:", addresses.endpointV2);
        console.log("  On-chain EID:", eid);
    }
    
    /// @notice Test getting DVN addresses on Arbitrum
    function testFork_arbitrumDVNs() public {
        string memory rpc = _getRpc("ARBITRUM_MAINNET_RPC_URL", "https://arb1.arbitrum.io/rpc");
        vm.createSelectFork(rpc);
        
        // Get DVN addresses
        string[] memory dvnNames = new string[](2);
        dvnNames[0] = "LayerZero Labs";
        dvnNames[1] = "Nethermind";
        
        address[] memory dvnAddresses = workersRegistry.getDVNAddresses("arbitrum-mainnet", dvnNames);
        
        // Verify they have code
        for (uint256 i = 0; i < dvnAddresses.length; i++) {
            uint256 codeSize;
            assembly {
                codeSize := extcodesize(mload(add(add(dvnAddresses, 0x20), mul(i, 0x20))))
            }
            assertGt(codeSize, 0, string.concat(dvnNames[i], " DVN should have code"));
            
            console.log(dvnNames[i], "on Arbitrum:", dvnAddresses[i]);
        }
    }
    
    // ============================================
    // BASE MAINNET FORK TESTS
    // ============================================
    
    /// @notice Test Base mainnet addresses
    function testFork_baseMainnet() public {
        string memory rpc = _getRpc("BASE_MAINNET_RPC_URL", "https://mainnet.base.org");
        vm.createSelectFork(rpc);
        
        // Access directly from library
        address endpoint = address(LayerZeroV2BaseMainnet.ENDPOINT_V2);
        
        // Verify
        ILayerZeroEndpointV2 endpointContract = ILayerZeroEndpointV2(endpoint);
        uint32 eid = endpointContract.eid();
        assertEq(eid, LayerZeroV2BaseMainnet.EID, "Base EID should match");
        assertEq(block.chainid, 8453, "Should be on Base");
        
        console.log("Base Mainnet verified:");
        console.log("  Endpoint:", endpoint);
        console.log("  EID:", eid);
    }
    
    // ============================================
    // CROSS-CHAIN CONSISTENCY TESTS
    // ============================================
    
    /// @notice Test that the same DVN has different addresses on different chains
    function testFork_dvnAddressesDifferAcrossChains() public {
        // Get LayerZero Labs DVN address on Ethereum
        string memory ethRpc = _getRpc("ETHEREUM_MAINNET_RPC_URL", "https://eth.llamarpc.com");
        vm.createSelectFork(ethRpc);
        address ethDVN = workersRegistry.getDVNAddressByChainName("LayerZero Labs", "ethereum-mainnet");
        
        // Get LayerZero Labs DVN address on Arbitrum
        string memory arbRpc = _getRpc("ARBITRUM_MAINNET_RPC_URL", "https://arb1.arbitrum.io/rpc");
        vm.createSelectFork(arbRpc);
        address arbDVN = workersRegistry.getDVNAddressByChainName("LayerZero Labs", "arbitrum-mainnet");
        
        // They should be different
        assertNotEq(ethDVN, arbDVN, "LayerZero Labs DVN should have different addresses on different chains");
        
        // But both should have code
        uint256 ethCodeSize;
        uint256 arbCodeSize;
        
        vm.createSelectFork(ethRpc);
        assembly {
            ethCodeSize := extcodesize(ethDVN)
        }
        
        vm.createSelectFork(arbRpc);
        assembly {
            arbCodeSize := extcodesize(arbDVN)
        }
        
        assertGt(ethCodeSize, 0, "Ethereum DVN should have code");
        assertGt(arbCodeSize, 0, "Arbitrum DVN should have code");
        
        console.log("LayerZero Labs DVN addresses:");
        console.log("  Ethereum:", ethDVN);
        console.log("  Arbitrum:", arbDVN);
    }
    
    // ============================================
    // PRACTICAL USAGE DEMONSTRATION
    // ============================================
    
    /// @notice Demonstrate a practical use case: configuring an OApp
    /// @dev This shows how you would use the address book in a real deployment script
    function testFork_practicalUsage_OAppConfiguration() public {
        string memory rpc = _getRpc("ETHEREUM_MAINNET_RPC_URL", "https://eth.llamarpc.com");
        vm.createSelectFork(rpc);
        
        // Scenario: You're deploying an OApp on Ethereum and need to configure it
        
        // 1. Get protocol addresses
        ILZProtocol.ProtocolAddresses memory ethAddresses = protocolProvider.getProtocolAddresses("ethereum-mainnet");
        
        // 2. Get DVN addresses for security configuration
        string[] memory dvnNames = new string[](3);
        dvnNames[0] = "LayerZero Labs";
        dvnNames[1] = "Nethermind";
        dvnNames[2] = "Horizen";
        
        address[] memory dvnAddresses = workersRegistry.getDVNAddresses("ethereum-mainnet", dvnNames);
        
        // 3. Verify all addresses are valid
        assertNotEq(ethAddresses.endpointV2, address(0), "Endpoint should be set");
        assertEq(dvnAddresses.length, 3, "Should have 3 DVN addresses");
        
        console.log("\n=== OApp Configuration Example ===");
        console.log("Endpoint:", ethAddresses.endpointV2);
        console.log("DVNs for security config:");
        for (uint256 i = 0; i < dvnNames.length; i++) {
            console.log("  -", dvnNames[i], ":", dvnAddresses[i]);
        }
        console.log("Send Library:", ethAddresses.sendUln302);
        console.log("Receive Library:", ethAddresses.receiveUln302);
        console.log("==================================\n");
    }

    function _getRpc(string memory envKey, string memory fallbackUrl) internal view returns (string memory) {
        try vm.envString(envKey) returns (string memory url) {
            if (bytes(url).length > 0) return url;
        } catch {}
        return fallbackUrl;
    }
}

