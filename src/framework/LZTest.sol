// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {ILZProtocol} from "../helpers/interfaces/ILZProtocol.sol";
import {ILZWorkers} from "../helpers/interfaces/ILZWorkers.sol";
import {LZProtocol} from "../helpers/LZProtocol.sol";
import {LZWorkers} from "../helpers/LZWorkers.sol";
import {OptionsBuilder} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";
import {IOAppCore} from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppCore.sol";
import {LZUtils} from "../utils/LZUtils.sol";

/// @title LayerZero Test Base
/// @notice Base contract for LayerZero tests with helpful utilities
/// @dev Provides fork management and address book integration
abstract contract LZTest is Test {
    using OptionsBuilder for bytes;
    using LZUtils for address;
    
    ILZProtocol public immutable protocolAddressProvider;
    ILZWorkers public immutable dvnRegistry;
    
    mapping(string => uint256) public chainForks;
    mapping(string => bool) public forkCreated;
    
    constructor() {
        protocolAddressProvider = new LZProtocol();
        dvnRegistry = new LZWorkers();
        
        // Make registries persistent across forks
        vm.makePersistent(address(protocolAddressProvider));
        vm.makePersistent(address(dvnRegistry));
    }
    
    /// @notice Create a fork for a chain
    /// @param chainName Chain name (e.g., "arbitrum-mainnet")
    /// @param rpcUrl RPC URL for the chain
    /// @return Fork ID
    function createFork(string memory chainName, string memory rpcUrl) internal returns (uint256) {
        uint256 forkId = vm.createFork(rpcUrl);
        chainForks[chainName] = forkId;
        forkCreated[chainName] = true;
        return forkId;
    }
    
    /// @notice Select a previously created fork
    /// @param chainName Chain name
    function selectFork(string memory chainName) internal {
        require(forkCreated[chainName], "Fork not created");
        vm.selectFork(chainForks[chainName]);
    }
    
    /// @notice Create and immediately select a fork
    /// @param chainName Chain name for reference
    /// @param rpcUrl RPC URL for the fork
    /// @return forkId The created fork ID
    function createAndSelectFork(string memory chainName, string memory rpcUrl) internal returns (uint256 forkId) {
        forkId = createFork(chainName, rpcUrl);
        selectFork(chainName);
        return forkId;
    }
    
    /// @notice Get current chain's EID using block.chainid
    /// @return eid The EID for the current forked chain
    function forkingValidChainID() internal view returns (uint32 eid) {
        return protocolAddressProvider.getEidFromChainId(uint256(block.chainid));
    }
    
    /// @notice Wire OApps bidirectionally for testing
    /// @param chainA First chain name
    /// @param chainB Second chain name
    /// @param oappA OApp address on chain A
    /// @param oappB OApp address on chain B
    function wireOAppsBidirectional(
        string memory chainA,
        string memory chainB,
        address oappA,
        address oappB
    ) internal {
        // Store current fork
        uint256 currentFork = vm.activeFork();
        
        // Set peer on chain A
        selectFork(chainA);
        uint32 eidB = protocolAddressProvider.getEidByChainName(chainB);
        vm.prank(oappA);
        IOAppCore(oappA).setPeer(eidB, LZUtils.addressToBytes32(oappB));
        
        // Set peer on chain B
        selectFork(chainB);
        uint32 eidA = protocolAddressProvider.getEidByChainName(chainA);
        vm.prank(oappB);
        IOAppCore(oappB).setPeer(eidA, LZUtils.addressToBytes32(oappA));
        
        // Restore fork
        vm.selectFork(currentFork);
    }
    
    /// @notice Get protocol addresses for a chain
    /// @param chainName Chain name
    /// @return Protocol addresses
    function getProtocolAddresses(string memory chainName) 
        internal 
        view 
        returns (ILZProtocol.ProtocolAddresses memory) 
    {
        uint32 eid = protocolAddressProvider.getEidByChainName(chainName);
        return protocolAddressProvider.getProtocolAddresses(eid);
    }
    
    /// @notice Get DVN address by name for a chain
    /// @param dvnName DVN name
    /// @param chainName Chain name
    /// @return DVN address
    function getDVNAddress(string memory dvnName, string memory chainName) 
        internal 
        view 
        returns (address) 
    {
        uint32 eid = protocolAddressProvider.getEidByChainName(chainName);
        return dvnRegistry.getDVNAddress(dvnName, eid);
    }
}

