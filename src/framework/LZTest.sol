// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {LZAddressContext} from "../helpers/LZAddressContext.sol";
import {LZWireHelper} from "../helpers/LZWireHelper.sol";
import {ILZProtocol} from "../helpers/interfaces/ILZProtocol.sol";
import {OptionsBuilder} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";
import {IOAppCore} from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppCore.sol";

/// @title LayerZero Test Base
/// @notice Base contract for LayerZero fork tests with helpful utilities
/// @dev Provides fork management, address book integration, and wiring helpers
///
/// Usage:
///   contract MyTest is LZTest {
///       function setUp() public {
///           createAndSelectFork("arbitrum-mainnet", "https://arb1.arbitrum.io/rpc");
///           MyOApp arbOapp = new MyOApp(ctx.getEndpoint(), address(this));
///           
///           createAndSelectFork("base-mainnet", "https://mainnet.base.org");
///           MyOApp baseOapp = new MyOApp(ctx.getEndpoint(), address(this));
///           
///           // Wire with full config (pathways + peers)
///           wireOApps("arbitrum-mainnet", "base-mainnet", address(arbOapp), address(baseOapp));
///       }
///   }
abstract contract LZTest is Test {
    using OptionsBuilder for bytes;
    
    /// @notice Address context for reading LayerZero addresses
    LZAddressContext public ctx;
    
    /// @notice Wire helper for configuring OApps
    LZWireHelper public wireHelper;
    
    /// @notice Fork IDs by chain name
    mapping(string => uint256) public chainForks;
    
    /// @notice Track which forks have been created
    mapping(string => bool) public forkCreated;
    
    constructor() {
        ctx = new LZAddressContext();
        wireHelper = new LZWireHelper(ctx);
        
        // Make persistent across forks
        vm.makePersistent(address(ctx));
        vm.makePersistent(address(ctx.protocol()));
        vm.makePersistent(address(ctx.protocol().workers()));
        vm.makePersistent(address(wireHelper));
    }
    
    // ============================================
    // Fork Management
    // ============================================
    
    /// @notice Create a fork for a chain
    /// @param chainName Chain name (e.g., "arbitrum-mainnet")
    /// @param rpcUrl RPC URL for the chain
    /// @return forkId Fork ID
    function createFork(string memory chainName, string memory rpcUrl) internal returns (uint256 forkId) {
        forkId = vm.createFork(rpcUrl);
        chainForks[chainName] = forkId;
        forkCreated[chainName] = true;
        return forkId;
    }
    
    /// @notice Select a previously created fork and set context
    /// @param chainName Chain name
    function selectFork(string memory chainName) internal {
        require(forkCreated[chainName], string.concat("Fork not created: ", chainName));
        vm.selectFork(chainForks[chainName]);
        ctx.setChain(chainName);
    }
    
    /// @notice Create a fork using RPC from address book
    /// @param chainName Chain name
    /// @return forkId Fork ID
    function createForkFromAddressBook(string memory chainName) internal returns (uint256 forkId) {
        string memory rpc = ctx.getProtocolAddressesFor(chainName).rpcUrls[0];
        return createFork(chainName, rpc);
    }
    
    /// @notice Create and immediately select a fork
    /// @param chainName Chain name
    /// @param rpcUrl RPC URL
    /// @return forkId Fork ID
    function createAndSelectFork(string memory chainName, string memory rpcUrl) internal returns (uint256 forkId) {
        forkId = createFork(chainName, rpcUrl);
        selectFork(chainName);
        return forkId;
    }
    
    // ============================================
    // Wiring Helpers
    // ============================================
    
    /// @notice Wire OApps bidirectionally with full config (pathways + peers)
    /// @dev Uses default DVNs (LZ Labs + Nethermind) and 15 confirmations
    function wireOApps(
        string memory chainA,
        string memory chainB,
        address oappA,
        address oappB
    ) internal {
        wireOApps(chainA, chainB, oappA, oappB, address(this), address(this));
    }
    
    /// @notice Wire OApps bidirectionally with explicit owners
    function wireOApps(
        string memory chainA,
        string memory chainB,
        address oappA,
        address oappB,
        address ownerA,
        address ownerB
    ) internal {
        uint256 currentFork = vm.activeFork();
        
        // Wire A → B
        selectFork(chainA);
        vm.prank(ownerA);
        wireHelper.wireDefault(oappA, chainB, oappB);
        
        // Wire B → A
        selectFork(chainB);
        vm.prank(ownerB);
        wireHelper.wireDefault(oappB, chainA, oappA);
        
        vm.selectFork(currentFork);
    }
    
    /// @notice Wire OApps with custom config
    function wireOAppsCustom(
        string memory chainA,
        string memory chainB,
        address oappA,
        address oappB,
        uint64 confirmations,
        string[] memory dvnNames
    ) internal {
        uint256 currentFork = vm.activeFork();
        
        selectFork(chainA);
        wireHelper.wire(oappA, chainB, oappB, confirmations, dvnNames);
        
        selectFork(chainB);
        wireHelper.wire(oappB, chainA, oappA, confirmations, dvnNames);
        
        vm.selectFork(currentFork);
    }
    
    /// @notice Set peers only (no pathway config) - for testing with default LZ config
    function setPeersBidirectional(
        string memory chainA,
        string memory chainB,
        address oappA,
        address oappB
    ) internal {
        setPeersBidirectional(chainA, chainB, oappA, oappB, address(this), address(this));
    }
    
    /// @notice Set peers only with explicit owners
    function setPeersBidirectional(
        string memory chainA,
        string memory chainB,
        address oappA,
        address oappB,
        address ownerA,
        address ownerB
    ) internal {
        uint256 currentFork = vm.activeFork();
        
        // Set peer on chain A
        selectFork(chainA);
        uint32 eidB = ctx.getEid(chainB);
        vm.prank(ownerA);
        IOAppCore(oappA).setPeer(eidB, ctx.addressToBytes32(oappB));
        
        // Set peer on chain B
        selectFork(chainB);
        uint32 eidA = ctx.getEid(chainA);
        vm.prank(ownerB);
        IOAppCore(oappB).setPeer(eidA, ctx.addressToBytes32(oappA));
        
        // Restore fork
        vm.selectFork(currentFork);
    }
    
    // ============================================
    // Convenience Getters (delegate to ctx)
    // ============================================
    
    /// @notice Get protocol addresses for a chain
    function getProtocolAddresses(string memory chainName) 
        internal 
        view 
        returns (ILZProtocol.ProtocolAddresses memory) 
    {
        return ctx.getProtocolAddressesFor(chainName);
    }
    
    /// @notice Get DVN address by name for a chain
    function getDVNAddress(string memory dvnName, string memory chainName) 
        internal 
        view 
        returns (address) 
    {
        return ctx.getDVNFor(dvnName, chainName);
    }
}
