// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {LZAddressContext} from "../helpers/LZAddressContext.sol";
import {ILZProtocol} from "../helpers/interfaces/ILZProtocol.sol";
import {OptionsBuilder} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";
import {IOAppCore} from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppCore.sol";

/// @title LayerZero Test Base
/// @notice Base contract for LayerZero fork tests with helpful utilities
/// @dev Provides fork management and address book integration via LZAddressContext
///
/// Usage:
///   contract MyTest is LZTest {
///       function setUp() public {
///           // Forks are created automatically, just select them
///           selectFork("arbitrum-mainnet", "https://arb1.arbitrum.io/rpc");
///           MyOApp oapp = new MyOApp(ctx.getEndpointV2(), address(this));
///       }
///   }
abstract contract LZTest is Test {
    using OptionsBuilder for bytes;

    /// @notice The address context - use this to access all LayerZero addresses
    LZAddressContext public ctx;

    /// @notice Fork IDs by chain name
    mapping(string => uint256) public chainForks;

    /// @notice Track which forks have been created
    mapping(string => bool) public forkCreated;

    constructor() {
        ctx = new LZAddressContext();

        // Make context persistent across forks
        vm.makePersistent(address(ctx));
        vm.makePersistent(address(ctx.protocol()));
        vm.makePersistent(address(ctx.protocol().workers()));
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
        string memory rpc = ctx.getProtocolAddressesForChainName(chainName).rpcUrls[0];
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
    // OApp Wiring Helpers
    // ============================================

    /// @notice Wire OApps bidirectionally (assumes test contract is owner)
    /// @param chainA First chain name
    /// @param chainB Second chain name
    /// @param oappA OApp address on chain A
    /// @param oappB OApp address on chain B
    function wireOAppsBidirectional(string memory chainA, string memory chainB, address oappA, address oappB) internal {
        wireOAppsBidirectional(chainA, chainB, oappA, oappB, address(this), address(this));
    }

    /// @notice Wire OApps bidirectionally with explicit owners
    /// @param chainA First chain name
    /// @param chainB Second chain name
    /// @param oappA OApp address on chain A
    /// @param oappB OApp address on chain B
    /// @param ownerA Owner of oappA (for prank)
    /// @param ownerB Owner of oappB (for prank)
    function wireOAppsBidirectional(
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
        uint32 eidB = ctx.getEidForChainName(chainB);
        vm.prank(ownerA);
        IOAppCore(oappA).setPeer(eidB, ctx.addressToBytes32(oappB));

        // Set peer on chain B
        selectFork(chainB);
        uint32 eidA = ctx.getEidForChainName(chainA);
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
        return ctx.getProtocolAddressesForChainName(chainName);
    }

    /// @notice Get DVN address by name for a chain
    function getDVNAddress(string memory dvnName, string memory chainName) internal view returns (address) {
        return ctx.getDVNForChainName(dvnName, chainName);
    }
}
