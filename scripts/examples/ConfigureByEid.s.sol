// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";

import {LZAddressContext} from "../../src/helpers/LZAddressContext.sol";

import {ILayerZeroEndpointV2} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {SetConfigParam} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/IMessageLibManager.sol";
import {UlnConfig} from "@layerzerolabs/lz-evm-messagelib-v2/contracts/uln/UlnBase.sol";
import {ExecutorConfig} from "@layerzerolabs/lz-evm-messagelib-v2/contracts/SendLibBase.sol";
import {IOAppCore} from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppCore.sol";
import {IOAppOptionsType3, EnforcedOptionParam} from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppOptionsType3.sol";
import {OptionsBuilder} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";

/// @title ConfigureByEid
/// @notice Configure an OApp across multiple chains using LayerZero Endpoint IDs
/// @dev Run this script once per chain - it auto-detects via block.chainid:
///
///   forge script ConfigureByEid --rpc-url ethereum --broadcast --account deployer
///   forge script ConfigureByEid --rpc-url arbitrum --broadcast --account deployer
///   forge script ConfigureByEid --rpc-url base --broadcast --account deployer
///   forge script ConfigureByEid --rpc-url optimism --broadcast --account deployer
///
/// Common EIDs:
///   Ethereum:  30101    Arbitrum:  30110    Base:      30184
///   Optimism:  30111    Polygon:   30109    Avalanche: 30106
///
/// This variant uses LayerZero EIDs instead of chain IDs or names.
/// See ConfigureByChainId.s.sol for the chain ID variant.
/// See ConfigureByChainName.s.sol for the chain name variant.
contract ConfigureByEid is Script {
    using OptionsBuilder for bytes;

    /*//////////////////////////////////////////////////////////////
                                 STRUCTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Configuration for a single chain
    /// @param eid LayerZero Endpoint ID (e.g., 30110 for Arbitrum, 30184 for Base)
    /// @param oapp OApp address deployed on this chain
    /// @param confirmations Block confirmations required when this chain is destination
    /// @param sendOptions Enforced options for MSG_TYPE_SEND (1) - gas for lzReceive
    /// @param sendAndCallOptions Enforced options for MSG_TYPE_SEND_AND_CALL (2) - empty if not using compose
    struct ChainConfig {
        uint32 eid;
        address oapp;
        uint64 confirmations;
        bytes sendOptions;
        bytes sendAndCallOptions;
    }

    /// @dev Cached addresses for the local chain
    struct LocalContext {
        address oapp;
        address endpoint;
        address sendLib;
        address receiveLib;
        address executor;
        address[] dvns;
        uint64 confirmations;
    }

    /*//////////////////////////////////////////////////////////////
                                CONSTANTS
    //////////////////////////////////////////////////////////////*/

    uint8 internal constant REQUIRED_DVN_COUNT = 2;
    uint32 internal constant MAX_MESSAGE_SIZE = 10000;

    uint16 internal constant MSG_TYPE_SEND = 1;
    uint16 internal constant MSG_TYPE_SEND_AND_CALL = 2;

    string internal constant DVN_1 = "LayerZero Labs";
    string internal constant DVN_2 = "Nethermind";

    /*//////////////////////////////////////////////////////////////
                              ENTRY POINT
    //////////////////////////////////////////////////////////////*/

    function run() external {
        // ============================================================
        // STEP 1: Define all chain configurations (MODIFY FOR YOUR DEPLOYMENT)
        // ============================================================
        ChainConfig[] memory chains = new ChainConfig[](4);

        // Ethereum Mainnet (EID: 30101)
        chains[0] = ChainConfig({
            eid: 30101,
            oapp: 0x1111111111111111111111111111111111111111,
            confirmations: 15, // Ethereum - slower finality
            sendOptions: OptionsBuilder.newOptions().addExecutorLzReceiveOption(80_000, 0),
            sendAndCallOptions: "" // No compose
        });

        // Arbitrum (EID: 30110)
        chains[1] = ChainConfig({
            eid: 30110,
            oapp: 0x2222222222222222222222222222222222222222,
            confirmations: 1, // L2 - fast finality
            sendOptions: OptionsBuilder.newOptions().addExecutorLzReceiveOption(80_000, 0),
            sendAndCallOptions: ""
        });

        // Base (EID: 30184)
        chains[2] = ChainConfig({
            eid: 30184,
            oapp: 0x3333333333333333333333333333333333333333,
            confirmations: 1, // L2 - fast finality
            sendOptions: OptionsBuilder.newOptions().addExecutorLzReceiveOption(80_000, 0),
            sendAndCallOptions: ""
        });

        // Optimism (EID: 30111)
        chains[3] = ChainConfig({
            eid: 30111,
            oapp: 0x4444444444444444444444444444444444444444,
            confirmations: 1, // L2 - fast finality
            sendOptions: OptionsBuilder.newOptions().addExecutorLzReceiveOption(80_000, 0),
            sendAndCallOptions: ""
        });

        // ============================================================
        // STEP 2: Find current chain and setup context
        // ============================================================
        (uint256 localIndex, LocalContext memory local) = _setup(chains);

        if (local.endpoint == address(0)) {
            console.log("Chain", block.chainid, "not in config. Skipping.");
            return;
        }

        console.log("=== Configuring chain", block.chainid, "===");
        console.log("OApp:", local.oapp);
        console.log("");

        // ============================================================
        // STEP 3: Configure pathways to all remote chains
        // ============================================================
        vm.startBroadcast();

        for (uint256 i = 0; i < chains.length; i++) {
            if (i == localIndex) continue;
            _configurePathway(local, chains[i].eid, chains[i]);
            console.log("Configured pathway to EID", chains[i].eid);
        }

        vm.stopBroadcast();
        console.log("");
        console.log("=== Done ===");
    }

    /*//////////////////////////////////////////////////////////////
                                 SETUP
    //////////////////////////////////////////////////////////////*/

    function _setup(ChainConfig[] memory chains)
        internal
        returns (uint256 localIndex, LocalContext memory local)
    {
        LZAddressContext ctx = new LZAddressContext();

        // Find current chain by matching block.chainid via EID lookup
        localIndex = type(uint256).max;

        for (uint256 i = 0; i < chains.length; i++) {
            ctx.setChainByEid(chains[i].eid);
            if (ctx.getCurrentChainId() == block.chainid) {
                localIndex = i;
                break;
            }
        }

        if (localIndex == type(uint256).max) {
            return (0, local);
        }

        // Setup context for local chain (already set from loop)
        ctx.setChainByEid(chains[localIndex].eid);

        local = LocalContext({
            oapp: chains[localIndex].oapp,
            endpoint: ctx.getEndpointV2(),
            sendLib: ctx.getSendUln302(),
            receiveLib: ctx.getReceiveUln302(),
            executor: ctx.getExecutor(),
            dvns: ctx.getSortedDVNs(_getDvnNames()),
            confirmations: chains[localIndex].confirmations
        });
    }

    /*//////////////////////////////////////////////////////////////
                            CONFIGURATION
    //////////////////////////////////////////////////////////////*/

    function _configurePathway(LocalContext memory local, uint32 remoteEid, ChainConfig memory remote) internal {
        ILayerZeroEndpointV2 endpoint = ILayerZeroEndpointV2(local.endpoint);

        // 1. Set libraries for this pathway
        endpoint.setSendLibrary(local.oapp, remoteEid, local.sendLib);
        endpoint.setReceiveLibrary(local.oapp, remoteEid, local.receiveLib, 0);

        // 2. Set send config (local -> remote): use remote's confirmation requirement
        _setSendConfig(local, remoteEid, remote.confirmations);

        // 3. Set receive config (remote -> local): use local's confirmation requirement
        _setReceiveConfig(local, remoteEid);

        // 4. Set enforced options (gas to deliver to remote chain)
        _setEnforcedOptions(local.oapp, remoteEid, remote.sendOptions, remote.sendAndCallOptions);

        // 5. Set peer to open the pathway
        IOAppCore(local.oapp).setPeer(remoteEid, bytes32(uint256(uint160(remote.oapp))));
    }

    function _setSendConfig(LocalContext memory local, uint32 remoteEid, uint64 confirmations) internal {
        SetConfigParam[] memory params = new SetConfigParam[](2);

        params[0] = SetConfigParam({
            eid: remoteEid,
            configType: 1,
            config: abi.encode(ExecutorConfig({maxMessageSize: MAX_MESSAGE_SIZE, executor: local.executor}))
        });

        params[1] = SetConfigParam({
            eid: remoteEid,
            configType: 2,
            config: abi.encode(
                UlnConfig({
                    confirmations: confirmations,
                    requiredDVNCount: REQUIRED_DVN_COUNT,
                    optionalDVNCount: 0,
                    optionalDVNThreshold: 0,
                    requiredDVNs: local.dvns,
                    optionalDVNs: new address[](0)
                })
            )
        });

        ILayerZeroEndpointV2(local.endpoint).setConfig(local.oapp, local.sendLib, params);
    }

    function _setReceiveConfig(LocalContext memory local, uint32 remoteEid) internal {
        SetConfigParam[] memory params = new SetConfigParam[](1);

        params[0] = SetConfigParam({
            eid: remoteEid,
            configType: 2,
            config: abi.encode(
                UlnConfig({
                    confirmations: local.confirmations,
                    requiredDVNCount: REQUIRED_DVN_COUNT,
                    optionalDVNCount: 0,
                    optionalDVNThreshold: 0,
                    requiredDVNs: local.dvns,
                    optionalDVNs: new address[](0)
                })
            )
        });

        ILayerZeroEndpointV2(local.endpoint).setConfig(local.oapp, local.receiveLib, params);
    }

    function _setEnforcedOptions(
        address oapp,
        uint32 remoteEid,
        bytes memory sendOptions,
        bytes memory sendAndCallOptions
    ) internal {
        uint256 count = 1;
        if (sendAndCallOptions.length > 0) count = 2;

        EnforcedOptionParam[] memory enforcedOptions = new EnforcedOptionParam[](count);

        // MSG_TYPE_SEND (1) - standard transfer
        enforcedOptions[0] = EnforcedOptionParam({eid: remoteEid, msgType: MSG_TYPE_SEND, options: sendOptions});

        // MSG_TYPE_SEND_AND_CALL (2) - transfer with compose
        if (sendAndCallOptions.length > 0) {
            enforcedOptions[1] =
                EnforcedOptionParam({eid: remoteEid, msgType: MSG_TYPE_SEND_AND_CALL, options: sendAndCallOptions});
        }

        IOAppOptionsType3(oapp).setEnforcedOptions(enforcedOptions);
    }

    /*//////////////////////////////////////////////////////////////
                                HELPERS
    //////////////////////////////////////////////////////////////*/

    function _getDvnNames() internal pure returns (string[] memory names) {
        names = new string[](2);
        names[0] = DVN_1;
        names[1] = DVN_2;
    }
}
