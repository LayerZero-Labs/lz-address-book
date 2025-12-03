// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {LZAddressContext} from "./LZAddressContext.sol";
import {IOAppCore} from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppCore.sol";
import {ILayerZeroEndpointV2} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {SetConfigParam} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/IMessageLibManager.sol";
import {UlnConfig} from "@layerzerolabs/lz-evm-messagelib-v2/contracts/uln/UlnBase.sol";
import {ExecutorConfig} from "@layerzerolabs/lz-evm-messagelib-v2/contracts/SendLibBase.sol";
import {Vm} from "forge-std/Vm.sol";

/// @title LZWireHelper
/// @notice Helper for wiring LayerZero OApps (configure pathways + set peers)
/// @dev Separates write operations from the read-only LZAddressContext
///
/// Usage:
///   LZAddressContext ctx = new LZAddressContext();
///   LZWireHelper wireHelper = new LZWireHelper(ctx);
///   
///   ctx.setChain("arbitrum-mainnet");
///   wireHelper.wireDefault(myOapp, "base-mainnet", remoteOapp);
contract LZWireHelper {
    LZAddressContext public immutable ctx;
    
    /// @notice Default max message size for executor config
    uint32 public constant DEFAULT_MAX_MESSAGE_SIZE = 10000;
    
    /// @notice Default block confirmations
    uint64 public constant DEFAULT_CONFIRMATIONS = 15;
    
    constructor(LZAddressContext _ctx) {
        ctx = _ctx;
    }
    
    /// @notice Make this helper persistent across fork switches
    /// @param vm The Foundry VM instance
    function makePersistent(Vm vm) external {
        vm.makePersistent(address(this));
    }
    
    // ============================================
    // Wire Methods
    // ============================================
    
    /// @notice Configure a pathway (send + receive) to a remote chain
    /// @param oapp The OApp address on current chain
    /// @param remoteChain The remote chain name
    /// @param confirmations Block confirmations required
    /// @param dvnNames DVN names to use (will be sorted automatically)
    function configurePathway(
        address oapp,
        string memory remoteChain,
        uint64 confirmations,
        string[] memory dvnNames
    ) public {
        uint32 remoteEid = ctx.getEid(remoteChain);
        address endpoint = ctx.getEndpoint();
        address sendLib = ctx.getSendLib();
        address receiveLib = ctx.getReceiveLib();
        address executor = ctx.getExecutor();
        
        // Get and sort DVN addresses
        address[] memory dvns = ctx.getDVNs(dvnNames);
        _sortAddresses(dvns);
        
        // Build ULN config
        UlnConfig memory ulnConfig = UlnConfig({
            confirmations: confirmations,
            requiredDVNCount: uint8(dvns.length),
            optionalDVNCount: 0,
            optionalDVNThreshold: 0,
            requiredDVNs: dvns,
            optionalDVNs: new address[](0)
        });
        
        // Build executor config
        ExecutorConfig memory execConfig = ExecutorConfig({
            maxMessageSize: DEFAULT_MAX_MESSAGE_SIZE,
            executor: executor
        });
        
        // Set SEND config (local -> remote)
        SetConfigParam[] memory sendParams = new SetConfigParam[](2);
        sendParams[0] = SetConfigParam(remoteEid, 1, abi.encode(execConfig));
        sendParams[1] = SetConfigParam(remoteEid, 2, abi.encode(ulnConfig));
        ILayerZeroEndpointV2(endpoint).setConfig(oapp, sendLib, sendParams);
        
        // Set RECEIVE config (remote -> local)
        SetConfigParam[] memory recvParams = new SetConfigParam[](1);
        recvParams[0] = SetConfigParam(remoteEid, 2, abi.encode(ulnConfig));
        ILayerZeroEndpointV2(endpoint).setConfig(oapp, receiveLib, recvParams);
    }
    
    /// @notice Wire: Configure pathway AND set peer in one call
    /// @param oapp The OApp address on current chain
    /// @param remoteChain The remote chain name
    /// @param remoteOapp The OApp address on remote chain
    /// @param confirmations Block confirmations required
    /// @param dvnNames DVN names to use
    function wire(
        address oapp,
        string memory remoteChain,
        address remoteOapp,
        uint64 confirmations,
        string[] memory dvnNames
    ) public {
        // Configure pathway
        configurePathway(oapp, remoteChain, confirmations, dvnNames);
        
        // Set peer
        uint32 remoteEid = ctx.getEid(remoteChain);
        IOAppCore(oapp).setPeer(remoteEid, bytes32(uint256(uint160(remoteOapp))));
    }
    
    /// @notice Wire with default config (LZ Labs + Nethermind, 15 confirmations)
    /// @param oapp The OApp address on current chain
    /// @param remoteChain The remote chain name
    /// @param remoteOapp The OApp address on remote chain
    function wireDefault(
        address oapp,
        string memory remoteChain,
        address remoteOapp
    ) external {
        string[] memory dvnNames = new string[](2);
        dvnNames[0] = "LayerZero Labs";
        dvnNames[1] = "Nethermind";
        wire(oapp, remoteChain, remoteOapp, DEFAULT_CONFIRMATIONS, dvnNames);
    }
    
    /// @notice Configure pathway with default DVNs (LZ Labs + Nethermind)
    /// @param oapp The OApp address on current chain
    /// @param remoteChain The remote chain name
    /// @param confirmations Block confirmations required
    function configurePathwayDefault(
        address oapp,
        string memory remoteChain,
        uint64 confirmations
    ) external {
        string[] memory dvnNames = new string[](2);
        dvnNames[0] = "LayerZero Labs";
        dvnNames[1] = "Nethermind";
        configurePathway(oapp, remoteChain, confirmations, dvnNames);
    }
    
    // ============================================
    // Internal Helpers
    // ============================================
    
    /// @dev Sort addresses in ascending order (required by ULN config)
    function _sortAddresses(address[] memory addrs) private pure {
        for (uint256 i = 0; i < addrs.length; i++) {
            for (uint256 j = i + 1; j < addrs.length; j++) {
                if (addrs[i] > addrs[j]) {
                    (addrs[i], addrs[j]) = (addrs[j], addrs[i]);
                }
            }
        }
    }
}

