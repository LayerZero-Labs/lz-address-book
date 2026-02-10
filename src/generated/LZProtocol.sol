// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "./LZAddresses.sol";
import "../helpers/interfaces/ILZProtocol.sol";
import "./LZWorkers.sol";
import {Vm} from "forge-std/Vm.sol";

/// @title LayerZero Protocol Address Provider
/// @notice Provides LayerZero protocol addresses from the generated address book
/// @dev Implements ILZProtocol interface for clean access to core protocol addresses
contract LZProtocol is ILZProtocol {
    // Forge VM for string conversion
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    // LZWorkers instance
    LZWorkers public workers;

    // Storage for chain data
    mapping(uint32 => ProtocolAddresses) private _protocolAddresses;

    // List of registered EIDs for iteration
    uint32[] private _registeredEids;

    // Mapping from chain name to EID for reverse lookup
    mapping(string => uint32) private _chainNameToEid;

    // Mapping from chain ID to EID for reverse lookup
    mapping(uint256 => uint32) private _chainIdToEid;

    constructor() {
        _registerAllChains();
        workers = new LZWorkers();
    }

    /// @notice Register all supported chains from the AddressBook
    function _registerAllChains() private {
        // Mainnets
        _registerChain(
            LayerZeroV2AbstractMainnet.EID,
            address(LayerZeroV2AbstractMainnet.ENDPOINT_V2),
            address(LayerZeroV2AbstractMainnet.SEND_ULN_302),
            address(LayerZeroV2AbstractMainnet.RECEIVE_ULN_302),
            LayerZeroV2AbstractMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AbstractMainnet.EXECUTOR,
            LayerZeroV2AbstractMainnet.CHAIN_ID,
            "abstract-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2AnimechainMainnet.EID,
            address(LayerZeroV2AnimechainMainnet.ENDPOINT_V2),
            address(LayerZeroV2AnimechainMainnet.SEND_ULN_302),
            address(LayerZeroV2AnimechainMainnet.RECEIVE_ULN_302),
            LayerZeroV2AnimechainMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AnimechainMainnet.EXECUTOR,
            LayerZeroV2AnimechainMainnet.CHAIN_ID,
            "animechain-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ApeMainnet.EID,
            address(LayerZeroV2ApeMainnet.ENDPOINT_V2),
            address(LayerZeroV2ApeMainnet.SEND_ULN_302),
            address(LayerZeroV2ApeMainnet.RECEIVE_ULN_302),
            LayerZeroV2ApeMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ApeMainnet.EXECUTOR,
            LayerZeroV2ApeMainnet.CHAIN_ID,
            "ape-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ApexfusionnexusMainnet.EID,
            address(LayerZeroV2ApexfusionnexusMainnet.ENDPOINT_V2),
            address(LayerZeroV2ApexfusionnexusMainnet.SEND_ULN_302),
            address(LayerZeroV2ApexfusionnexusMainnet.RECEIVE_ULN_302),
            LayerZeroV2ApexfusionnexusMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ApexfusionnexusMainnet.EXECUTOR,
            LayerZeroV2ApexfusionnexusMainnet.CHAIN_ID,
            "apexfusionnexus-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ArbitrumMainnet.EID,
            address(LayerZeroV2ArbitrumMainnet.ENDPOINT_V2),
            address(LayerZeroV2ArbitrumMainnet.SEND_ULN_302),
            address(LayerZeroV2ArbitrumMainnet.RECEIVE_ULN_302),
            LayerZeroV2ArbitrumMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ArbitrumMainnet.EXECUTOR,
            LayerZeroV2ArbitrumMainnet.CHAIN_ID,
            "arbitrum-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2AstarMainnet.EID,
            address(LayerZeroV2AstarMainnet.ENDPOINT_V2),
            address(LayerZeroV2AstarMainnet.SEND_ULN_302),
            address(LayerZeroV2AstarMainnet.RECEIVE_ULN_302),
            LayerZeroV2AstarMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AstarMainnet.EXECUTOR,
            LayerZeroV2AstarMainnet.CHAIN_ID,
            "astar-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2AuroraMainnet.EID,
            address(LayerZeroV2AuroraMainnet.ENDPOINT_V2),
            address(LayerZeroV2AuroraMainnet.SEND_ULN_302),
            address(LayerZeroV2AuroraMainnet.RECEIVE_ULN_302),
            LayerZeroV2AuroraMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AuroraMainnet.EXECUTOR,
            LayerZeroV2AuroraMainnet.CHAIN_ID,
            "aurora-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2AvalancheMainnet.EID,
            address(LayerZeroV2AvalancheMainnet.ENDPOINT_V2),
            address(LayerZeroV2AvalancheMainnet.SEND_ULN_302),
            address(LayerZeroV2AvalancheMainnet.RECEIVE_ULN_302),
            LayerZeroV2AvalancheMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AvalancheMainnet.EXECUTOR,
            LayerZeroV2AvalancheMainnet.CHAIN_ID,
            "avalanche-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BahamutMainnet.EID,
            address(LayerZeroV2BahamutMainnet.ENDPOINT_V2),
            address(LayerZeroV2BahamutMainnet.SEND_ULN_302),
            address(LayerZeroV2BahamutMainnet.RECEIVE_ULN_302),
            LayerZeroV2BahamutMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BahamutMainnet.EXECUTOR,
            LayerZeroV2BahamutMainnet.CHAIN_ID,
            "bahamut-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BaseMainnet.EID,
            address(LayerZeroV2BaseMainnet.ENDPOINT_V2),
            address(LayerZeroV2BaseMainnet.SEND_ULN_302),
            address(LayerZeroV2BaseMainnet.RECEIVE_ULN_302),
            LayerZeroV2BaseMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BaseMainnet.EXECUTOR,
            LayerZeroV2BaseMainnet.CHAIN_ID,
            "base-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Bb1Mainnet.EID,
            address(LayerZeroV2Bb1Mainnet.ENDPOINT_V2),
            address(LayerZeroV2Bb1Mainnet.SEND_ULN_302),
            address(LayerZeroV2Bb1Mainnet.RECEIVE_ULN_302),
            LayerZeroV2Bb1Mainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Bb1Mainnet.EXECUTOR,
            LayerZeroV2Bb1Mainnet.CHAIN_ID,
            "bb1-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BeraMainnet.EID,
            address(LayerZeroV2BeraMainnet.ENDPOINT_V2),
            address(LayerZeroV2BeraMainnet.SEND_ULN_302),
            address(LayerZeroV2BeraMainnet.RECEIVE_ULN_302),
            LayerZeroV2BeraMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BeraMainnet.EXECUTOR,
            LayerZeroV2BeraMainnet.CHAIN_ID,
            "bera-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BevmMainnet.EID,
            address(LayerZeroV2BevmMainnet.ENDPOINT_V2),
            address(LayerZeroV2BevmMainnet.SEND_ULN_302),
            address(LayerZeroV2BevmMainnet.RECEIVE_ULN_302),
            LayerZeroV2BevmMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BevmMainnet.EXECUTOR,
            LayerZeroV2BevmMainnet.CHAIN_ID,
            "bevm-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BitlayerMainnet.EID,
            address(LayerZeroV2BitlayerMainnet.ENDPOINT_V2),
            address(LayerZeroV2BitlayerMainnet.SEND_ULN_302),
            address(LayerZeroV2BitlayerMainnet.RECEIVE_ULN_302),
            LayerZeroV2BitlayerMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BitlayerMainnet.EXECUTOR,
            LayerZeroV2BitlayerMainnet.CHAIN_ID,
            "bitlayer-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BlastMainnet.EID,
            address(LayerZeroV2BlastMainnet.ENDPOINT_V2),
            address(LayerZeroV2BlastMainnet.SEND_ULN_302),
            address(LayerZeroV2BlastMainnet.RECEIVE_ULN_302),
            LayerZeroV2BlastMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BlastMainnet.EXECUTOR,
            LayerZeroV2BlastMainnet.CHAIN_ID,
            "blast-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BobMainnet.EID,
            address(LayerZeroV2BobMainnet.ENDPOINT_V2),
            address(LayerZeroV2BobMainnet.SEND_ULN_302),
            address(LayerZeroV2BobMainnet.RECEIVE_ULN_302),
            LayerZeroV2BobMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BobMainnet.EXECUTOR,
            LayerZeroV2BobMainnet.CHAIN_ID,
            "bob-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BotanixMainnet.EID,
            address(LayerZeroV2BotanixMainnet.ENDPOINT_V2),
            address(LayerZeroV2BotanixMainnet.SEND_ULN_302),
            address(LayerZeroV2BotanixMainnet.RECEIVE_ULN_302),
            LayerZeroV2BotanixMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BotanixMainnet.EXECUTOR,
            LayerZeroV2BotanixMainnet.CHAIN_ID,
            "botanix-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BouncebitMainnet.EID,
            address(LayerZeroV2BouncebitMainnet.ENDPOINT_V2),
            address(LayerZeroV2BouncebitMainnet.SEND_ULN_302),
            address(LayerZeroV2BouncebitMainnet.RECEIVE_ULN_302),
            LayerZeroV2BouncebitMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BouncebitMainnet.EXECUTOR,
            LayerZeroV2BouncebitMainnet.CHAIN_ID,
            "bouncebit-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BscMainnet.EID,
            address(LayerZeroV2BscMainnet.ENDPOINT_V2),
            address(LayerZeroV2BscMainnet.SEND_ULN_302),
            address(LayerZeroV2BscMainnet.RECEIVE_ULN_302),
            LayerZeroV2BscMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BscMainnet.EXECUTOR,
            LayerZeroV2BscMainnet.CHAIN_ID,
            "bsc-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CampMainnet.EID,
            address(LayerZeroV2CampMainnet.ENDPOINT_V2),
            address(LayerZeroV2CampMainnet.SEND_ULN_302),
            address(LayerZeroV2CampMainnet.RECEIVE_ULN_302),
            LayerZeroV2CampMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CampMainnet.EXECUTOR,
            LayerZeroV2CampMainnet.CHAIN_ID,
            "camp-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CantoMainnet.EID,
            address(LayerZeroV2CantoMainnet.ENDPOINT_V2),
            address(LayerZeroV2CantoMainnet.SEND_ULN_302),
            address(LayerZeroV2CantoMainnet.RECEIVE_ULN_302),
            LayerZeroV2CantoMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CantoMainnet.EXECUTOR,
            LayerZeroV2CantoMainnet.CHAIN_ID,
            "canto-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CeloMainnet.EID,
            address(LayerZeroV2CeloMainnet.ENDPOINT_V2),
            address(LayerZeroV2CeloMainnet.SEND_ULN_302),
            address(LayerZeroV2CeloMainnet.RECEIVE_ULN_302),
            LayerZeroV2CeloMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CeloMainnet.EXECUTOR,
            LayerZeroV2CeloMainnet.CHAIN_ID,
            "celo-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ChilizMainnet.EID,
            address(LayerZeroV2ChilizMainnet.ENDPOINT_V2),
            address(LayerZeroV2ChilizMainnet.SEND_ULN_302),
            address(LayerZeroV2ChilizMainnet.RECEIVE_ULN_302),
            LayerZeroV2ChilizMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ChilizMainnet.EXECUTOR,
            LayerZeroV2ChilizMainnet.CHAIN_ID,
            "chiliz-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CitreaMainnet.EID,
            address(LayerZeroV2CitreaMainnet.ENDPOINT_V2),
            address(LayerZeroV2CitreaMainnet.SEND_ULN_302),
            address(LayerZeroV2CitreaMainnet.RECEIVE_ULN_302),
            LayerZeroV2CitreaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CitreaMainnet.EXECUTOR,
            LayerZeroV2CitreaMainnet.CHAIN_ID,
            "citrea-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CodexMainnet.EID,
            address(LayerZeroV2CodexMainnet.ENDPOINT_V2),
            address(LayerZeroV2CodexMainnet.SEND_ULN_302),
            address(LayerZeroV2CodexMainnet.RECEIVE_ULN_302),
            LayerZeroV2CodexMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CodexMainnet.EXECUTOR,
            LayerZeroV2CodexMainnet.CHAIN_ID,
            "codex-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ConcreteMainnet.EID,
            address(LayerZeroV2ConcreteMainnet.ENDPOINT_V2),
            address(LayerZeroV2ConcreteMainnet.SEND_ULN_302),
            address(LayerZeroV2ConcreteMainnet.RECEIVE_ULN_302),
            LayerZeroV2ConcreteMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ConcreteMainnet.EXECUTOR,
            LayerZeroV2ConcreteMainnet.CHAIN_ID,
            "concrete-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ConfluxMainnet.EID,
            address(LayerZeroV2ConfluxMainnet.ENDPOINT_V2),
            address(LayerZeroV2ConfluxMainnet.SEND_ULN_302),
            address(LayerZeroV2ConfluxMainnet.RECEIVE_ULN_302),
            LayerZeroV2ConfluxMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ConfluxMainnet.EXECUTOR,
            LayerZeroV2ConfluxMainnet.CHAIN_ID,
            "conflux-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ConvergeMainnet.EID,
            address(LayerZeroV2ConvergeMainnet.ENDPOINT_V2),
            address(LayerZeroV2ConvergeMainnet.SEND_ULN_302),
            address(LayerZeroV2ConvergeMainnet.RECEIVE_ULN_302),
            LayerZeroV2ConvergeMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ConvergeMainnet.EXECUTOR,
            LayerZeroV2ConvergeMainnet.CHAIN_ID,
            "converge-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CoredaoMainnet.EID,
            address(LayerZeroV2CoredaoMainnet.ENDPOINT_V2),
            address(LayerZeroV2CoredaoMainnet.SEND_ULN_302),
            address(LayerZeroV2CoredaoMainnet.RECEIVE_ULN_302),
            LayerZeroV2CoredaoMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CoredaoMainnet.EXECUTOR,
            LayerZeroV2CoredaoMainnet.CHAIN_ID,
            "coredao-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CronosevmMainnet.EID,
            address(LayerZeroV2CronosevmMainnet.ENDPOINT_V2),
            address(LayerZeroV2CronosevmMainnet.SEND_ULN_302),
            address(LayerZeroV2CronosevmMainnet.RECEIVE_ULN_302),
            LayerZeroV2CronosevmMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CronosevmMainnet.EXECUTOR,
            LayerZeroV2CronosevmMainnet.CHAIN_ID,
            "cronosevm-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CronoszkevmMainnet.EID,
            address(LayerZeroV2CronoszkevmMainnet.ENDPOINT_V2),
            address(LayerZeroV2CronoszkevmMainnet.SEND_ULN_302),
            address(LayerZeroV2CronoszkevmMainnet.RECEIVE_ULN_302),
            LayerZeroV2CronoszkevmMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CronoszkevmMainnet.EXECUTOR,
            LayerZeroV2CronoszkevmMainnet.CHAIN_ID,
            "cronoszkevm-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CyberMainnet.EID,
            address(LayerZeroV2CyberMainnet.ENDPOINT_V2),
            address(LayerZeroV2CyberMainnet.SEND_ULN_302),
            address(LayerZeroV2CyberMainnet.RECEIVE_ULN_302),
            LayerZeroV2CyberMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CyberMainnet.EXECUTOR,
            LayerZeroV2CyberMainnet.CHAIN_ID,
            "cyber-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2DegenMainnet.EID,
            address(LayerZeroV2DegenMainnet.ENDPOINT_V2),
            address(LayerZeroV2DegenMainnet.SEND_ULN_302),
            address(LayerZeroV2DegenMainnet.RECEIVE_ULN_302),
            LayerZeroV2DegenMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2DegenMainnet.EXECUTOR,
            LayerZeroV2DegenMainnet.CHAIN_ID,
            "degen-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2DexalotMainnet.EID,
            address(LayerZeroV2DexalotMainnet.ENDPOINT_V2),
            address(LayerZeroV2DexalotMainnet.SEND_ULN_302),
            address(LayerZeroV2DexalotMainnet.RECEIVE_ULN_302),
            LayerZeroV2DexalotMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2DexalotMainnet.EXECUTOR,
            LayerZeroV2DexalotMainnet.CHAIN_ID,
            "dexalot-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2DfkMainnet.EID,
            address(LayerZeroV2DfkMainnet.ENDPOINT_V2),
            address(LayerZeroV2DfkMainnet.SEND_ULN_302),
            address(LayerZeroV2DfkMainnet.RECEIVE_ULN_302),
            LayerZeroV2DfkMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2DfkMainnet.EXECUTOR,
            LayerZeroV2DfkMainnet.CHAIN_ID,
            "dfk-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2DinariMainnet.EID,
            address(LayerZeroV2DinariMainnet.ENDPOINT_V2),
            address(LayerZeroV2DinariMainnet.SEND_ULN_302),
            address(LayerZeroV2DinariMainnet.RECEIVE_ULN_302),
            LayerZeroV2DinariMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2DinariMainnet.EXECUTOR,
            LayerZeroV2DinariMainnet.CHAIN_ID,
            "dinari-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Dm2verseMainnet.EID,
            address(LayerZeroV2Dm2verseMainnet.ENDPOINT_V2),
            address(LayerZeroV2Dm2verseMainnet.SEND_ULN_302),
            address(LayerZeroV2Dm2verseMainnet.RECEIVE_ULN_302),
            LayerZeroV2Dm2verseMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Dm2verseMainnet.EXECUTOR,
            LayerZeroV2Dm2verseMainnet.CHAIN_ID,
            "dm2verse-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2DomaMainnet.EID,
            address(LayerZeroV2DomaMainnet.ENDPOINT_V2),
            address(LayerZeroV2DomaMainnet.SEND_ULN_302),
            address(LayerZeroV2DomaMainnet.RECEIVE_ULN_302),
            LayerZeroV2DomaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2DomaMainnet.EXECUTOR,
            LayerZeroV2DomaMainnet.CHAIN_ID,
            "doma-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2DosMainnet.EID,
            address(LayerZeroV2DosMainnet.ENDPOINT_V2),
            address(LayerZeroV2DosMainnet.SEND_ULN_302),
            address(LayerZeroV2DosMainnet.RECEIVE_ULN_302),
            LayerZeroV2DosMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2DosMainnet.EXECUTOR,
            LayerZeroV2DosMainnet.CHAIN_ID,
            "dos-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2EbiMainnet.EID,
            address(LayerZeroV2EbiMainnet.ENDPOINT_V2),
            address(LayerZeroV2EbiMainnet.SEND_ULN_302),
            address(LayerZeroV2EbiMainnet.RECEIVE_ULN_302),
            LayerZeroV2EbiMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2EbiMainnet.EXECUTOR,
            LayerZeroV2EbiMainnet.CHAIN_ID,
            "ebi-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2EduMainnet.EID,
            address(LayerZeroV2EduMainnet.ENDPOINT_V2),
            address(LayerZeroV2EduMainnet.SEND_ULN_302),
            address(LayerZeroV2EduMainnet.RECEIVE_ULN_302),
            LayerZeroV2EduMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2EduMainnet.EXECUTOR,
            LayerZeroV2EduMainnet.CHAIN_ID,
            "edu-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2EonMainnet.EID,
            address(LayerZeroV2EonMainnet.ENDPOINT_V2),
            address(LayerZeroV2EonMainnet.SEND_ULN_302),
            address(LayerZeroV2EonMainnet.RECEIVE_ULN_302),
            LayerZeroV2EonMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2EonMainnet.EXECUTOR,
            LayerZeroV2EonMainnet.CHAIN_ID,
            "eon-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2EtherealMainnet.EID,
            address(LayerZeroV2EtherealMainnet.ENDPOINT_V2),
            address(LayerZeroV2EtherealMainnet.SEND_ULN_302),
            address(LayerZeroV2EtherealMainnet.RECEIVE_ULN_302),
            LayerZeroV2EtherealMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2EtherealMainnet.EXECUTOR,
            LayerZeroV2EtherealMainnet.CHAIN_ID,
            "ethereal-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2EthereumMainnet.EID,
            address(LayerZeroV2EthereumMainnet.ENDPOINT_V2),
            address(LayerZeroV2EthereumMainnet.SEND_ULN_302),
            address(LayerZeroV2EthereumMainnet.RECEIVE_ULN_302),
            LayerZeroV2EthereumMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2EthereumMainnet.EXECUTOR,
            LayerZeroV2EthereumMainnet.CHAIN_ID,
            "ethereum-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2EtherlinkMainnet.EID,
            address(LayerZeroV2EtherlinkMainnet.ENDPOINT_V2),
            address(LayerZeroV2EtherlinkMainnet.SEND_ULN_302),
            address(LayerZeroV2EtherlinkMainnet.RECEIVE_ULN_302),
            LayerZeroV2EtherlinkMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2EtherlinkMainnet.EXECUTOR,
            LayerZeroV2EtherlinkMainnet.CHAIN_ID,
            "etherlink-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FantomMainnet.EID,
            address(LayerZeroV2FantomMainnet.ENDPOINT_V2),
            address(LayerZeroV2FantomMainnet.SEND_ULN_302),
            address(LayerZeroV2FantomMainnet.RECEIVE_ULN_302),
            LayerZeroV2FantomMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FantomMainnet.EXECUTOR,
            LayerZeroV2FantomMainnet.CHAIN_ID,
            "fantom-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FlareMainnet.EID,
            address(LayerZeroV2FlareMainnet.ENDPOINT_V2),
            address(LayerZeroV2FlareMainnet.SEND_ULN_302),
            address(LayerZeroV2FlareMainnet.RECEIVE_ULN_302),
            LayerZeroV2FlareMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FlareMainnet.EXECUTOR,
            LayerZeroV2FlareMainnet.CHAIN_ID,
            "flare-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FlowMainnet.EID,
            address(LayerZeroV2FlowMainnet.ENDPOINT_V2),
            address(LayerZeroV2FlowMainnet.SEND_ULN_302),
            address(LayerZeroV2FlowMainnet.RECEIVE_ULN_302),
            LayerZeroV2FlowMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FlowMainnet.EXECUTOR,
            LayerZeroV2FlowMainnet.CHAIN_ID,
            "flow-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FraxtalMainnet.EID,
            address(LayerZeroV2FraxtalMainnet.ENDPOINT_V2),
            address(LayerZeroV2FraxtalMainnet.SEND_ULN_302),
            address(LayerZeroV2FraxtalMainnet.RECEIVE_ULN_302),
            LayerZeroV2FraxtalMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FraxtalMainnet.EXECUTOR,
            LayerZeroV2FraxtalMainnet.CHAIN_ID,
            "fraxtal-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FuseMainnet.EID,
            address(LayerZeroV2FuseMainnet.ENDPOINT_V2),
            address(LayerZeroV2FuseMainnet.SEND_ULN_302),
            address(LayerZeroV2FuseMainnet.RECEIVE_ULN_302),
            LayerZeroV2FuseMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FuseMainnet.EXECUTOR,
            LayerZeroV2FuseMainnet.CHAIN_ID,
            "fuse-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GatelayerMainnet.EID,
            address(LayerZeroV2GatelayerMainnet.ENDPOINT_V2),
            address(LayerZeroV2GatelayerMainnet.SEND_ULN_302),
            address(LayerZeroV2GatelayerMainnet.RECEIVE_ULN_302),
            LayerZeroV2GatelayerMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GatelayerMainnet.EXECUTOR,
            LayerZeroV2GatelayerMainnet.CHAIN_ID,
            "gatelayer-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GlueMainnet.EID,
            address(LayerZeroV2GlueMainnet.ENDPOINT_V2),
            address(LayerZeroV2GlueMainnet.SEND_ULN_302),
            address(LayerZeroV2GlueMainnet.RECEIVE_ULN_302),
            LayerZeroV2GlueMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GlueMainnet.EXECUTOR,
            LayerZeroV2GlueMainnet.CHAIN_ID,
            "glue-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GnosisMainnet.EID,
            address(LayerZeroV2GnosisMainnet.ENDPOINT_V2),
            address(LayerZeroV2GnosisMainnet.SEND_ULN_302),
            address(LayerZeroV2GnosisMainnet.RECEIVE_ULN_302),
            LayerZeroV2GnosisMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GnosisMainnet.EXECUTOR,
            LayerZeroV2GnosisMainnet.CHAIN_ID,
            "gnosis-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GoatMainnet.EID,
            address(LayerZeroV2GoatMainnet.ENDPOINT_V2),
            address(LayerZeroV2GoatMainnet.SEND_ULN_302),
            address(LayerZeroV2GoatMainnet.RECEIVE_ULN_302),
            LayerZeroV2GoatMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GoatMainnet.EXECUTOR,
            LayerZeroV2GoatMainnet.CHAIN_ID,
            "goat-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GravityMainnet.EID,
            address(LayerZeroV2GravityMainnet.ENDPOINT_V2),
            address(LayerZeroV2GravityMainnet.SEND_ULN_302),
            address(LayerZeroV2GravityMainnet.RECEIVE_ULN_302),
            LayerZeroV2GravityMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GravityMainnet.EXECUTOR,
            LayerZeroV2GravityMainnet.CHAIN_ID,
            "gravity-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GunzMainnet.EID,
            address(LayerZeroV2GunzMainnet.ENDPOINT_V2),
            address(LayerZeroV2GunzMainnet.SEND_ULN_302),
            address(LayerZeroV2GunzMainnet.RECEIVE_ULN_302),
            LayerZeroV2GunzMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GunzMainnet.EXECUTOR,
            LayerZeroV2GunzMainnet.CHAIN_ID,
            "gunz-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HarmonyMainnet.EID,
            address(LayerZeroV2HarmonyMainnet.ENDPOINT_V2),
            address(LayerZeroV2HarmonyMainnet.SEND_ULN_302),
            address(LayerZeroV2HarmonyMainnet.RECEIVE_ULN_302),
            LayerZeroV2HarmonyMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HarmonyMainnet.EXECUTOR,
            LayerZeroV2HarmonyMainnet.CHAIN_ID,
            "harmony-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HederaMainnet.EID,
            address(LayerZeroV2HederaMainnet.ENDPOINT_V2),
            address(LayerZeroV2HederaMainnet.SEND_ULN_302),
            address(LayerZeroV2HederaMainnet.RECEIVE_ULN_302),
            LayerZeroV2HederaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HederaMainnet.EXECUTOR,
            LayerZeroV2HederaMainnet.CHAIN_ID,
            "hedera-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HemiMainnet.EID,
            address(LayerZeroV2HemiMainnet.ENDPOINT_V2),
            address(LayerZeroV2HemiMainnet.SEND_ULN_302),
            address(LayerZeroV2HemiMainnet.RECEIVE_ULN_302),
            LayerZeroV2HemiMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HemiMainnet.EXECUTOR,
            LayerZeroV2HemiMainnet.CHAIN_ID,
            "hemi-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HomeverseMainnet.EID,
            address(LayerZeroV2HomeverseMainnet.ENDPOINT_V2),
            address(LayerZeroV2HomeverseMainnet.SEND_ULN_302),
            address(LayerZeroV2HomeverseMainnet.RECEIVE_ULN_302),
            LayerZeroV2HomeverseMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HomeverseMainnet.EXECUTOR,
            LayerZeroV2HomeverseMainnet.CHAIN_ID,
            "homeverse-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HorizenMainnet.EID,
            address(LayerZeroV2HorizenMainnet.ENDPOINT_V2),
            address(LayerZeroV2HorizenMainnet.SEND_ULN_302),
            address(LayerZeroV2HorizenMainnet.RECEIVE_ULN_302),
            LayerZeroV2HorizenMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HorizenMainnet.EXECUTOR,
            LayerZeroV2HorizenMainnet.CHAIN_ID,
            "horizen-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HubbleMainnet.EID,
            address(LayerZeroV2HubbleMainnet.ENDPOINT_V2),
            address(LayerZeroV2HubbleMainnet.SEND_ULN_302),
            address(LayerZeroV2HubbleMainnet.RECEIVE_ULN_302),
            LayerZeroV2HubbleMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HubbleMainnet.EXECUTOR,
            LayerZeroV2HubbleMainnet.CHAIN_ID,
            "hubble-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HumanityMainnet.EID,
            address(LayerZeroV2HumanityMainnet.ENDPOINT_V2),
            address(LayerZeroV2HumanityMainnet.SEND_ULN_302),
            address(LayerZeroV2HumanityMainnet.RECEIVE_ULN_302),
            LayerZeroV2HumanityMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HumanityMainnet.EXECUTOR,
            LayerZeroV2HumanityMainnet.CHAIN_ID,
            "humanity-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HyperliquidMainnet.EID,
            address(LayerZeroV2HyperliquidMainnet.ENDPOINT_V2),
            address(LayerZeroV2HyperliquidMainnet.SEND_ULN_302),
            address(LayerZeroV2HyperliquidMainnet.RECEIVE_ULN_302),
            LayerZeroV2HyperliquidMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HyperliquidMainnet.EXECUTOR,
            LayerZeroV2HyperliquidMainnet.CHAIN_ID,
            "hyperliquid-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2InjectiveevmMainnet.EID,
            address(LayerZeroV2InjectiveevmMainnet.ENDPOINT_V2),
            address(LayerZeroV2InjectiveevmMainnet.SEND_ULN_302),
            address(LayerZeroV2InjectiveevmMainnet.RECEIVE_ULN_302),
            LayerZeroV2InjectiveevmMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2InjectiveevmMainnet.EXECUTOR,
            LayerZeroV2InjectiveevmMainnet.CHAIN_ID,
            "injectiveevm-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2InkMainnet.EID,
            address(LayerZeroV2InkMainnet.ENDPOINT_V2),
            address(LayerZeroV2InkMainnet.SEND_ULN_302),
            address(LayerZeroV2InkMainnet.RECEIVE_ULN_302),
            LayerZeroV2InkMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2InkMainnet.EXECUTOR,
            LayerZeroV2InkMainnet.CHAIN_ID,
            "ink-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2IotaMainnet.EID,
            address(LayerZeroV2IotaMainnet.ENDPOINT_V2),
            address(LayerZeroV2IotaMainnet.SEND_ULN_302),
            address(LayerZeroV2IotaMainnet.RECEIVE_ULN_302),
            LayerZeroV2IotaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2IotaMainnet.EXECUTOR,
            LayerZeroV2IotaMainnet.CHAIN_ID,
            "iota-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2IrysMainnet.EID,
            address(LayerZeroV2IrysMainnet.ENDPOINT_V2),
            address(LayerZeroV2IrysMainnet.SEND_ULN_302),
            address(LayerZeroV2IrysMainnet.RECEIVE_ULN_302),
            LayerZeroV2IrysMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2IrysMainnet.EXECUTOR,
            LayerZeroV2IrysMainnet.CHAIN_ID,
            "irys-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2IslanderMainnet.EID,
            address(LayerZeroV2IslanderMainnet.ENDPOINT_V2),
            address(LayerZeroV2IslanderMainnet.SEND_ULN_302),
            address(LayerZeroV2IslanderMainnet.RECEIVE_ULN_302),
            LayerZeroV2IslanderMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2IslanderMainnet.EXECUTOR,
            LayerZeroV2IslanderMainnet.CHAIN_ID,
            "islander-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2JocMainnet.EID,
            address(LayerZeroV2JocMainnet.ENDPOINT_V2),
            address(LayerZeroV2JocMainnet.SEND_ULN_302),
            address(LayerZeroV2JocMainnet.RECEIVE_ULN_302),
            LayerZeroV2JocMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2JocMainnet.EXECUTOR,
            LayerZeroV2JocMainnet.CHAIN_ID,
            "joc-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2KatanaMainnet.EID,
            address(LayerZeroV2KatanaMainnet.ENDPOINT_V2),
            address(LayerZeroV2KatanaMainnet.SEND_ULN_302),
            address(LayerZeroV2KatanaMainnet.RECEIVE_ULN_302),
            LayerZeroV2KatanaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2KatanaMainnet.EXECUTOR,
            LayerZeroV2KatanaMainnet.CHAIN_ID,
            "katana-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2KavaMainnet.EID,
            address(LayerZeroV2KavaMainnet.ENDPOINT_V2),
            address(LayerZeroV2KavaMainnet.SEND_ULN_302),
            address(LayerZeroV2KavaMainnet.RECEIVE_ULN_302),
            LayerZeroV2KavaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2KavaMainnet.EXECUTOR,
            LayerZeroV2KavaMainnet.CHAIN_ID,
            "kava-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2KiteMainnet.EID,
            address(LayerZeroV2KiteMainnet.ENDPOINT_V2),
            address(LayerZeroV2KiteMainnet.SEND_ULN_302),
            address(LayerZeroV2KiteMainnet.RECEIVE_ULN_302),
            LayerZeroV2KiteMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2KiteMainnet.EXECUTOR,
            LayerZeroV2KiteMainnet.CHAIN_ID,
            "kite-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2KlaytnMainnet.EID,
            address(LayerZeroV2KlaytnMainnet.ENDPOINT_V2),
            address(LayerZeroV2KlaytnMainnet.SEND_ULN_302),
            address(LayerZeroV2KlaytnMainnet.RECEIVE_ULN_302),
            LayerZeroV2KlaytnMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2KlaytnMainnet.EXECUTOR,
            LayerZeroV2KlaytnMainnet.CHAIN_ID,
            "klaytn-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2LensMainnet.EID,
            address(LayerZeroV2LensMainnet.ENDPOINT_V2),
            address(LayerZeroV2LensMainnet.SEND_ULN_302),
            address(LayerZeroV2LensMainnet.RECEIVE_ULN_302),
            LayerZeroV2LensMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2LensMainnet.EXECUTOR,
            LayerZeroV2LensMainnet.CHAIN_ID,
            "lens-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2LightlinkMainnet.EID,
            address(LayerZeroV2LightlinkMainnet.ENDPOINT_V2),
            address(LayerZeroV2LightlinkMainnet.SEND_ULN_302),
            address(LayerZeroV2LightlinkMainnet.RECEIVE_ULN_302),
            LayerZeroV2LightlinkMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2LightlinkMainnet.EXECUTOR,
            LayerZeroV2LightlinkMainnet.CHAIN_ID,
            "lightlink-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2LiskMainnet.EID,
            address(LayerZeroV2LiskMainnet.ENDPOINT_V2),
            address(LayerZeroV2LiskMainnet.SEND_ULN_302),
            address(LayerZeroV2LiskMainnet.RECEIVE_ULN_302),
            LayerZeroV2LiskMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2LiskMainnet.EXECUTOR,
            LayerZeroV2LiskMainnet.CHAIN_ID,
            "lisk-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2LootMainnet.EID,
            address(LayerZeroV2LootMainnet.ENDPOINT_V2),
            address(LayerZeroV2LootMainnet.SEND_ULN_302),
            address(LayerZeroV2LootMainnet.RECEIVE_ULN_302),
            LayerZeroV2LootMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2LootMainnet.EXECUTOR,
            LayerZeroV2LootMainnet.CHAIN_ID,
            "loot-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2LyraMainnet.EID,
            address(LayerZeroV2LyraMainnet.ENDPOINT_V2),
            address(LayerZeroV2LyraMainnet.SEND_ULN_302),
            address(LayerZeroV2LyraMainnet.RECEIVE_ULN_302),
            LayerZeroV2LyraMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2LyraMainnet.EXECUTOR,
            LayerZeroV2LyraMainnet.CHAIN_ID,
            "lyra-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MantaMainnet.EID,
            address(LayerZeroV2MantaMainnet.ENDPOINT_V2),
            address(LayerZeroV2MantaMainnet.SEND_ULN_302),
            address(LayerZeroV2MantaMainnet.RECEIVE_ULN_302),
            LayerZeroV2MantaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MantaMainnet.EXECUTOR,
            LayerZeroV2MantaMainnet.CHAIN_ID,
            "manta-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MantleMainnet.EID,
            address(LayerZeroV2MantleMainnet.ENDPOINT_V2),
            address(LayerZeroV2MantleMainnet.SEND_ULN_302),
            address(LayerZeroV2MantleMainnet.RECEIVE_ULN_302),
            LayerZeroV2MantleMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MantleMainnet.EXECUTOR,
            LayerZeroV2MantleMainnet.CHAIN_ID,
            "mantle-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MasaMainnet.EID,
            address(LayerZeroV2MasaMainnet.ENDPOINT_V2),
            address(LayerZeroV2MasaMainnet.SEND_ULN_302),
            address(LayerZeroV2MasaMainnet.RECEIVE_ULN_302),
            LayerZeroV2MasaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MasaMainnet.EXECUTOR,
            LayerZeroV2MasaMainnet.CHAIN_ID,
            "masa-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MegaethMainnet.EID,
            address(LayerZeroV2MegaethMainnet.ENDPOINT_V2),
            address(LayerZeroV2MegaethMainnet.SEND_ULN_302),
            address(LayerZeroV2MegaethMainnet.RECEIVE_ULN_302),
            LayerZeroV2MegaethMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MegaethMainnet.EXECUTOR,
            LayerZeroV2MegaethMainnet.CHAIN_ID,
            "megaeth-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MeritcircleMainnet.EID,
            address(LayerZeroV2MeritcircleMainnet.ENDPOINT_V2),
            address(LayerZeroV2MeritcircleMainnet.SEND_ULN_302),
            address(LayerZeroV2MeritcircleMainnet.RECEIVE_ULN_302),
            LayerZeroV2MeritcircleMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MeritcircleMainnet.EXECUTOR,
            LayerZeroV2MeritcircleMainnet.CHAIN_ID,
            "meritcircle-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MerlinMainnet.EID,
            address(LayerZeroV2MerlinMainnet.ENDPOINT_V2),
            address(LayerZeroV2MerlinMainnet.SEND_ULN_302),
            address(LayerZeroV2MerlinMainnet.RECEIVE_ULN_302),
            LayerZeroV2MerlinMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MerlinMainnet.EXECUTOR,
            LayerZeroV2MerlinMainnet.CHAIN_ID,
            "merlin-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MeterMainnet.EID,
            address(LayerZeroV2MeterMainnet.ENDPOINT_V2),
            address(LayerZeroV2MeterMainnet.SEND_ULN_302),
            address(LayerZeroV2MeterMainnet.RECEIVE_ULN_302),
            LayerZeroV2MeterMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MeterMainnet.EXECUTOR,
            LayerZeroV2MeterMainnet.CHAIN_ID,
            "meter-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MetisMainnet.EID,
            address(LayerZeroV2MetisMainnet.ENDPOINT_V2),
            address(LayerZeroV2MetisMainnet.SEND_ULN_302),
            address(LayerZeroV2MetisMainnet.RECEIVE_ULN_302),
            LayerZeroV2MetisMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MetisMainnet.EXECUTOR,
            LayerZeroV2MetisMainnet.CHAIN_ID,
            "metis-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MocaMainnet.EID,
            address(LayerZeroV2MocaMainnet.ENDPOINT_V2),
            address(LayerZeroV2MocaMainnet.SEND_ULN_302),
            address(LayerZeroV2MocaMainnet.RECEIVE_ULN_302),
            LayerZeroV2MocaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MocaMainnet.EXECUTOR,
            LayerZeroV2MocaMainnet.CHAIN_ID,
            "moca-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ModeMainnet.EID,
            address(LayerZeroV2ModeMainnet.ENDPOINT_V2),
            address(LayerZeroV2ModeMainnet.SEND_ULN_302),
            address(LayerZeroV2ModeMainnet.RECEIVE_ULN_302),
            LayerZeroV2ModeMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ModeMainnet.EXECUTOR,
            LayerZeroV2ModeMainnet.CHAIN_ID,
            "mode-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MonadMainnet.EID,
            address(LayerZeroV2MonadMainnet.ENDPOINT_V2),
            address(LayerZeroV2MonadMainnet.SEND_ULN_302),
            address(LayerZeroV2MonadMainnet.RECEIVE_ULN_302),
            LayerZeroV2MonadMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MonadMainnet.EXECUTOR,
            LayerZeroV2MonadMainnet.CHAIN_ID,
            "monad-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MoonbeamMainnet.EID,
            address(LayerZeroV2MoonbeamMainnet.ENDPOINT_V2),
            address(LayerZeroV2MoonbeamMainnet.SEND_ULN_302),
            address(LayerZeroV2MoonbeamMainnet.RECEIVE_ULN_302),
            LayerZeroV2MoonbeamMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MoonbeamMainnet.EXECUTOR,
            LayerZeroV2MoonbeamMainnet.CHAIN_ID,
            "moonbeam-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MoonriverMainnet.EID,
            address(LayerZeroV2MoonriverMainnet.ENDPOINT_V2),
            address(LayerZeroV2MoonriverMainnet.SEND_ULN_302),
            address(LayerZeroV2MoonriverMainnet.RECEIVE_ULN_302),
            LayerZeroV2MoonriverMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MoonriverMainnet.EXECUTOR,
            LayerZeroV2MoonriverMainnet.CHAIN_ID,
            "moonriver-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MorphMainnet.EID,
            address(LayerZeroV2MorphMainnet.ENDPOINT_V2),
            address(LayerZeroV2MorphMainnet.SEND_ULN_302),
            address(LayerZeroV2MorphMainnet.RECEIVE_ULN_302),
            LayerZeroV2MorphMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MorphMainnet.EXECUTOR,
            LayerZeroV2MorphMainnet.CHAIN_ID,
            "morph-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Mp1Mainnet.EID,
            address(LayerZeroV2Mp1Mainnet.ENDPOINT_V2),
            address(LayerZeroV2Mp1Mainnet.SEND_ULN_302),
            address(LayerZeroV2Mp1Mainnet.RECEIVE_ULN_302),
            LayerZeroV2Mp1Mainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Mp1Mainnet.EXECUTOR,
            LayerZeroV2Mp1Mainnet.CHAIN_ID,
            "mp1-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2NexeraMainnet.EID,
            address(LayerZeroV2NexeraMainnet.ENDPOINT_V2),
            address(LayerZeroV2NexeraMainnet.SEND_ULN_302),
            address(LayerZeroV2NexeraMainnet.RECEIVE_ULN_302),
            LayerZeroV2NexeraMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2NexeraMainnet.EXECUTOR,
            LayerZeroV2NexeraMainnet.CHAIN_ID,
            "nexera-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2NibiruMainnet.EID,
            address(LayerZeroV2NibiruMainnet.ENDPOINT_V2),
            address(LayerZeroV2NibiruMainnet.SEND_ULN_302),
            address(LayerZeroV2NibiruMainnet.RECEIVE_ULN_302),
            LayerZeroV2NibiruMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2NibiruMainnet.EXECUTOR,
            LayerZeroV2NibiruMainnet.CHAIN_ID,
            "nibiru-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2NovaMainnet.EID,
            address(LayerZeroV2NovaMainnet.ENDPOINT_V2),
            address(LayerZeroV2NovaMainnet.SEND_ULN_302),
            address(LayerZeroV2NovaMainnet.RECEIVE_ULN_302),
            LayerZeroV2NovaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2NovaMainnet.EXECUTOR,
            LayerZeroV2NovaMainnet.CHAIN_ID,
            "nova-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OgMainnet.EID,
            address(LayerZeroV2OgMainnet.ENDPOINT_V2),
            address(LayerZeroV2OgMainnet.SEND_ULN_302),
            address(LayerZeroV2OgMainnet.RECEIVE_ULN_302),
            LayerZeroV2OgMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OgMainnet.EXECUTOR,
            LayerZeroV2OgMainnet.CHAIN_ID,
            "og-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OkxMainnet.EID,
            address(LayerZeroV2OkxMainnet.ENDPOINT_V2),
            address(LayerZeroV2OkxMainnet.SEND_ULN_302),
            address(LayerZeroV2OkxMainnet.RECEIVE_ULN_302),
            LayerZeroV2OkxMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OkxMainnet.EXECUTOR,
            LayerZeroV2OkxMainnet.CHAIN_ID,
            "okx-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OpbnbMainnet.EID,
            address(LayerZeroV2OpbnbMainnet.ENDPOINT_V2),
            address(LayerZeroV2OpbnbMainnet.SEND_ULN_302),
            address(LayerZeroV2OpbnbMainnet.RECEIVE_ULN_302),
            LayerZeroV2OpbnbMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OpbnbMainnet.EXECUTOR,
            LayerZeroV2OpbnbMainnet.CHAIN_ID,
            "opbnb-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OpenledgerMainnet.EID,
            address(LayerZeroV2OpenledgerMainnet.ENDPOINT_V2),
            address(LayerZeroV2OpenledgerMainnet.SEND_ULN_302),
            address(LayerZeroV2OpenledgerMainnet.RECEIVE_ULN_302),
            LayerZeroV2OpenledgerMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OpenledgerMainnet.EXECUTOR,
            LayerZeroV2OpenledgerMainnet.CHAIN_ID,
            "openledger-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OptimismMainnet.EID,
            address(LayerZeroV2OptimismMainnet.ENDPOINT_V2),
            address(LayerZeroV2OptimismMainnet.SEND_ULN_302),
            address(LayerZeroV2OptimismMainnet.RECEIVE_ULN_302),
            LayerZeroV2OptimismMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OptimismMainnet.EXECUTOR,
            LayerZeroV2OptimismMainnet.CHAIN_ID,
            "optimism-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OrderlyMainnet.EID,
            address(LayerZeroV2OrderlyMainnet.ENDPOINT_V2),
            address(LayerZeroV2OrderlyMainnet.SEND_ULN_302),
            address(LayerZeroV2OrderlyMainnet.RECEIVE_ULN_302),
            LayerZeroV2OrderlyMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OrderlyMainnet.EXECUTOR,
            LayerZeroV2OrderlyMainnet.CHAIN_ID,
            "orderly-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2PeaqMainnet.EID,
            address(LayerZeroV2PeaqMainnet.ENDPOINT_V2),
            address(LayerZeroV2PeaqMainnet.SEND_ULN_302),
            address(LayerZeroV2PeaqMainnet.RECEIVE_ULN_302),
            LayerZeroV2PeaqMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2PeaqMainnet.EXECUTOR,
            LayerZeroV2PeaqMainnet.CHAIN_ID,
            "peaq-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2PharosMainnet.EID,
            address(LayerZeroV2PharosMainnet.ENDPOINT_V2),
            address(LayerZeroV2PharosMainnet.SEND_ULN_302),
            address(LayerZeroV2PharosMainnet.RECEIVE_ULN_302),
            LayerZeroV2PharosMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2PharosMainnet.EXECUTOR,
            LayerZeroV2PharosMainnet.CHAIN_ID,
            "pharos-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2PlasmaMainnet.EID,
            address(LayerZeroV2PlasmaMainnet.ENDPOINT_V2),
            address(LayerZeroV2PlasmaMainnet.SEND_ULN_302),
            address(LayerZeroV2PlasmaMainnet.RECEIVE_ULN_302),
            LayerZeroV2PlasmaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2PlasmaMainnet.EXECUTOR,
            LayerZeroV2PlasmaMainnet.CHAIN_ID,
            "plasma-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2PlumeMainnet.EID,
            address(LayerZeroV2PlumeMainnet.ENDPOINT_V2),
            address(LayerZeroV2PlumeMainnet.SEND_ULN_302),
            address(LayerZeroV2PlumeMainnet.RECEIVE_ULN_302),
            LayerZeroV2PlumeMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2PlumeMainnet.EXECUTOR,
            LayerZeroV2PlumeMainnet.CHAIN_ID,
            "plume-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2PlumephoenixMainnet.EID,
            address(LayerZeroV2PlumephoenixMainnet.ENDPOINT_V2),
            address(LayerZeroV2PlumephoenixMainnet.SEND_ULN_302),
            address(LayerZeroV2PlumephoenixMainnet.RECEIVE_ULN_302),
            LayerZeroV2PlumephoenixMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2PlumephoenixMainnet.EXECUTOR,
            LayerZeroV2PlumephoenixMainnet.CHAIN_ID,
            "plumephoenix-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2PolygonMainnet.EID,
            address(LayerZeroV2PolygonMainnet.ENDPOINT_V2),
            address(LayerZeroV2PolygonMainnet.SEND_ULN_302),
            address(LayerZeroV2PolygonMainnet.RECEIVE_ULN_302),
            LayerZeroV2PolygonMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2PolygonMainnet.EXECUTOR,
            LayerZeroV2PolygonMainnet.CHAIN_ID,
            "polygon-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2RaribleMainnet.EID,
            address(LayerZeroV2RaribleMainnet.ENDPOINT_V2),
            address(LayerZeroV2RaribleMainnet.SEND_ULN_302),
            address(LayerZeroV2RaribleMainnet.RECEIVE_ULN_302),
            LayerZeroV2RaribleMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2RaribleMainnet.EXECUTOR,
            LayerZeroV2RaribleMainnet.CHAIN_ID,
            "rarible-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2RealMainnet.EID,
            address(LayerZeroV2RealMainnet.ENDPOINT_V2),
            address(LayerZeroV2RealMainnet.SEND_ULN_302),
            address(LayerZeroV2RealMainnet.RECEIVE_ULN_302),
            LayerZeroV2RealMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2RealMainnet.EXECUTOR,
            LayerZeroV2RealMainnet.CHAIN_ID,
            "real-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2RedbellyMainnet.EID,
            address(LayerZeroV2RedbellyMainnet.ENDPOINT_V2),
            address(LayerZeroV2RedbellyMainnet.SEND_ULN_302),
            address(LayerZeroV2RedbellyMainnet.RECEIVE_ULN_302),
            LayerZeroV2RedbellyMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2RedbellyMainnet.EXECUTOR,
            LayerZeroV2RedbellyMainnet.CHAIN_ID,
            "redbelly-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ReyaMainnet.EID,
            address(LayerZeroV2ReyaMainnet.ENDPOINT_V2),
            address(LayerZeroV2ReyaMainnet.SEND_ULN_302),
            address(LayerZeroV2ReyaMainnet.RECEIVE_ULN_302),
            LayerZeroV2ReyaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ReyaMainnet.EXECUTOR,
            LayerZeroV2ReyaMainnet.CHAIN_ID,
            "reya-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2RiseMainnet.EID,
            address(LayerZeroV2RiseMainnet.ENDPOINT_V2),
            address(LayerZeroV2RiseMainnet.SEND_ULN_302),
            address(LayerZeroV2RiseMainnet.RECEIVE_ULN_302),
            LayerZeroV2RiseMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2RiseMainnet.EXECUTOR,
            LayerZeroV2RiseMainnet.CHAIN_ID,
            "rise-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2RootstockMainnet.EID,
            address(LayerZeroV2RootstockMainnet.ENDPOINT_V2),
            address(LayerZeroV2RootstockMainnet.SEND_ULN_302),
            address(LayerZeroV2RootstockMainnet.RECEIVE_ULN_302),
            LayerZeroV2RootstockMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2RootstockMainnet.EXECUTOR,
            LayerZeroV2RootstockMainnet.CHAIN_ID,
            "rootstock-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SagaevmMainnet.EID,
            address(LayerZeroV2SagaevmMainnet.ENDPOINT_V2),
            address(LayerZeroV2SagaevmMainnet.SEND_ULN_302),
            address(LayerZeroV2SagaevmMainnet.RECEIVE_ULN_302),
            LayerZeroV2SagaevmMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SagaevmMainnet.EXECUTOR,
            LayerZeroV2SagaevmMainnet.CHAIN_ID,
            "sagaevm-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SankoMainnet.EID,
            address(LayerZeroV2SankoMainnet.ENDPOINT_V2),
            address(LayerZeroV2SankoMainnet.SEND_ULN_302),
            address(LayerZeroV2SankoMainnet.RECEIVE_ULN_302),
            LayerZeroV2SankoMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SankoMainnet.EXECUTOR,
            LayerZeroV2SankoMainnet.CHAIN_ID,
            "sanko-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ScrollMainnet.EID,
            address(LayerZeroV2ScrollMainnet.ENDPOINT_V2),
            address(LayerZeroV2ScrollMainnet.SEND_ULN_302),
            address(LayerZeroV2ScrollMainnet.RECEIVE_ULN_302),
            LayerZeroV2ScrollMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ScrollMainnet.EXECUTOR,
            LayerZeroV2ScrollMainnet.CHAIN_ID,
            "scroll-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SeiMainnet.EID,
            address(LayerZeroV2SeiMainnet.ENDPOINT_V2),
            address(LayerZeroV2SeiMainnet.SEND_ULN_302),
            address(LayerZeroV2SeiMainnet.RECEIVE_ULN_302),
            LayerZeroV2SeiMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SeiMainnet.EXECUTOR,
            LayerZeroV2SeiMainnet.CHAIN_ID,
            "sei-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ShimmerMainnet.EID,
            address(LayerZeroV2ShimmerMainnet.ENDPOINT_V2),
            address(LayerZeroV2ShimmerMainnet.SEND_ULN_302),
            address(LayerZeroV2ShimmerMainnet.RECEIVE_ULN_302),
            LayerZeroV2ShimmerMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ShimmerMainnet.EXECUTOR,
            LayerZeroV2ShimmerMainnet.CHAIN_ID,
            "shimmer-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SiliconMainnet.EID,
            address(LayerZeroV2SiliconMainnet.ENDPOINT_V2),
            address(LayerZeroV2SiliconMainnet.SEND_ULN_302),
            address(LayerZeroV2SiliconMainnet.RECEIVE_ULN_302),
            LayerZeroV2SiliconMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SiliconMainnet.EXECUTOR,
            LayerZeroV2SiliconMainnet.CHAIN_ID,
            "silicon-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SkaleMainnet.EID,
            address(LayerZeroV2SkaleMainnet.ENDPOINT_V2),
            address(LayerZeroV2SkaleMainnet.SEND_ULN_302),
            address(LayerZeroV2SkaleMainnet.RECEIVE_ULN_302),
            LayerZeroV2SkaleMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SkaleMainnet.EXECUTOR,
            LayerZeroV2SkaleMainnet.CHAIN_ID,
            "skale-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SomniaMainnet.EID,
            address(LayerZeroV2SomniaMainnet.ENDPOINT_V2),
            address(LayerZeroV2SomniaMainnet.SEND_ULN_302),
            address(LayerZeroV2SomniaMainnet.RECEIVE_ULN_302),
            LayerZeroV2SomniaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SomniaMainnet.EXECUTOR,
            LayerZeroV2SomniaMainnet.CHAIN_ID,
            "somnia-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SoneiumMainnet.EID,
            address(LayerZeroV2SoneiumMainnet.ENDPOINT_V2),
            address(LayerZeroV2SoneiumMainnet.SEND_ULN_302),
            address(LayerZeroV2SoneiumMainnet.RECEIVE_ULN_302),
            LayerZeroV2SoneiumMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SoneiumMainnet.EXECUTOR,
            LayerZeroV2SoneiumMainnet.CHAIN_ID,
            "soneium-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SonicMainnet.EID,
            address(LayerZeroV2SonicMainnet.ENDPOINT_V2),
            address(LayerZeroV2SonicMainnet.SEND_ULN_302),
            address(LayerZeroV2SonicMainnet.RECEIVE_ULN_302),
            LayerZeroV2SonicMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SonicMainnet.EXECUTOR,
            LayerZeroV2SonicMainnet.CHAIN_ID,
            "sonic-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SophonMainnet.EID,
            address(LayerZeroV2SophonMainnet.ENDPOINT_V2),
            address(LayerZeroV2SophonMainnet.SEND_ULN_302),
            address(LayerZeroV2SophonMainnet.RECEIVE_ULN_302),
            LayerZeroV2SophonMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SophonMainnet.EXECUTOR,
            LayerZeroV2SophonMainnet.CHAIN_ID,
            "sophon-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SpaceMainnet.EID,
            address(LayerZeroV2SpaceMainnet.ENDPOINT_V2),
            address(LayerZeroV2SpaceMainnet.SEND_ULN_302),
            address(LayerZeroV2SpaceMainnet.RECEIVE_ULN_302),
            LayerZeroV2SpaceMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SpaceMainnet.EXECUTOR,
            LayerZeroV2SpaceMainnet.CHAIN_ID,
            "space-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2StableMainnet.EID,
            address(LayerZeroV2StableMainnet.ENDPOINT_V2),
            address(LayerZeroV2StableMainnet.SEND_ULN_302),
            address(LayerZeroV2StableMainnet.RECEIVE_ULN_302),
            LayerZeroV2StableMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2StableMainnet.EXECUTOR,
            LayerZeroV2StableMainnet.CHAIN_ID,
            "stable-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2StoryMainnet.EID,
            address(LayerZeroV2StoryMainnet.ENDPOINT_V2),
            address(LayerZeroV2StoryMainnet.SEND_ULN_302),
            address(LayerZeroV2StoryMainnet.RECEIVE_ULN_302),
            LayerZeroV2StoryMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2StoryMainnet.EXECUTOR,
            LayerZeroV2StoryMainnet.CHAIN_ID,
            "story-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SubtensorevmMainnet.EID,
            address(LayerZeroV2SubtensorevmMainnet.ENDPOINT_V2),
            address(LayerZeroV2SubtensorevmMainnet.SEND_ULN_302),
            address(LayerZeroV2SubtensorevmMainnet.RECEIVE_ULN_302),
            LayerZeroV2SubtensorevmMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SubtensorevmMainnet.EXECUTOR,
            LayerZeroV2SubtensorevmMainnet.CHAIN_ID,
            "subtensorevm-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SuperpositionMainnet.EID,
            address(LayerZeroV2SuperpositionMainnet.ENDPOINT_V2),
            address(LayerZeroV2SuperpositionMainnet.SEND_ULN_302),
            address(LayerZeroV2SuperpositionMainnet.RECEIVE_ULN_302),
            LayerZeroV2SuperpositionMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SuperpositionMainnet.EXECUTOR,
            LayerZeroV2SuperpositionMainnet.CHAIN_ID,
            "superposition-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SwellMainnet.EID,
            address(LayerZeroV2SwellMainnet.ENDPOINT_V2),
            address(LayerZeroV2SwellMainnet.SEND_ULN_302),
            address(LayerZeroV2SwellMainnet.RECEIVE_ULN_302),
            LayerZeroV2SwellMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SwellMainnet.EXECUTOR,
            LayerZeroV2SwellMainnet.CHAIN_ID,
            "swell-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TacMainnet.EID,
            address(LayerZeroV2TacMainnet.ENDPOINT_V2),
            address(LayerZeroV2TacMainnet.SEND_ULN_302),
            address(LayerZeroV2TacMainnet.RECEIVE_ULN_302),
            LayerZeroV2TacMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TacMainnet.EXECUTOR,
            LayerZeroV2TacMainnet.CHAIN_ID,
            "tac-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TaikoMainnet.EID,
            address(LayerZeroV2TaikoMainnet.ENDPOINT_V2),
            address(LayerZeroV2TaikoMainnet.SEND_ULN_302),
            address(LayerZeroV2TaikoMainnet.RECEIVE_ULN_302),
            LayerZeroV2TaikoMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TaikoMainnet.EXECUTOR,
            LayerZeroV2TaikoMainnet.CHAIN_ID,
            "taiko-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TelosMainnet.EID,
            address(LayerZeroV2TelosMainnet.ENDPOINT_V2),
            address(LayerZeroV2TelosMainnet.SEND_ULN_302),
            address(LayerZeroV2TelosMainnet.RECEIVE_ULN_302),
            LayerZeroV2TelosMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TelosMainnet.EXECUTOR,
            LayerZeroV2TelosMainnet.CHAIN_ID,
            "telos-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TempoMainnet.EID,
            address(LayerZeroV2TempoMainnet.ENDPOINT_V2),
            address(LayerZeroV2TempoMainnet.SEND_ULN_302),
            address(LayerZeroV2TempoMainnet.RECEIVE_ULN_302),
            LayerZeroV2TempoMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TempoMainnet.EXECUTOR,
            LayerZeroV2TempoMainnet.CHAIN_ID,
            "tempo-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TenetMainnet.EID,
            address(LayerZeroV2TenetMainnet.ENDPOINT_V2),
            address(LayerZeroV2TenetMainnet.SEND_ULN_302),
            address(LayerZeroV2TenetMainnet.RECEIVE_ULN_302),
            LayerZeroV2TenetMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TenetMainnet.EXECUTOR,
            LayerZeroV2TenetMainnet.CHAIN_ID,
            "tenet-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TiltyardMainnet.EID,
            address(LayerZeroV2TiltyardMainnet.ENDPOINT_V2),
            address(LayerZeroV2TiltyardMainnet.SEND_ULN_302),
            address(LayerZeroV2TiltyardMainnet.RECEIVE_ULN_302),
            LayerZeroV2TiltyardMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TiltyardMainnet.EXECUTOR,
            LayerZeroV2TiltyardMainnet.CHAIN_ID,
            "tiltyard-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TomoMainnet.EID,
            address(LayerZeroV2TomoMainnet.ENDPOINT_V2),
            address(LayerZeroV2TomoMainnet.SEND_ULN_302),
            address(LayerZeroV2TomoMainnet.RECEIVE_ULN_302),
            LayerZeroV2TomoMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TomoMainnet.EXECUTOR,
            LayerZeroV2TomoMainnet.CHAIN_ID,
            "tomo-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2UnichainMainnet.EID,
            address(LayerZeroV2UnichainMainnet.ENDPOINT_V2),
            address(LayerZeroV2UnichainMainnet.SEND_ULN_302),
            address(LayerZeroV2UnichainMainnet.RECEIVE_ULN_302),
            LayerZeroV2UnichainMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2UnichainMainnet.EXECUTOR,
            LayerZeroV2UnichainMainnet.CHAIN_ID,
            "unichain-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2WorldchainMainnet.EID,
            address(LayerZeroV2WorldchainMainnet.ENDPOINT_V2),
            address(LayerZeroV2WorldchainMainnet.SEND_ULN_302),
            address(LayerZeroV2WorldchainMainnet.RECEIVE_ULN_302),
            LayerZeroV2WorldchainMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2WorldchainMainnet.EXECUTOR,
            LayerZeroV2WorldchainMainnet.CHAIN_ID,
            "worldchain-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2XaiMainnet.EID,
            address(LayerZeroV2XaiMainnet.ENDPOINT_V2),
            address(LayerZeroV2XaiMainnet.SEND_ULN_302),
            address(LayerZeroV2XaiMainnet.RECEIVE_ULN_302),
            LayerZeroV2XaiMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2XaiMainnet.EXECUTOR,
            LayerZeroV2XaiMainnet.CHAIN_ID,
            "xai-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2XchainMainnet.EID,
            address(LayerZeroV2XchainMainnet.ENDPOINT_V2),
            address(LayerZeroV2XchainMainnet.SEND_ULN_302),
            address(LayerZeroV2XchainMainnet.RECEIVE_ULN_302),
            LayerZeroV2XchainMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2XchainMainnet.EXECUTOR,
            LayerZeroV2XchainMainnet.CHAIN_ID,
            "xchain-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2XdcMainnet.EID,
            address(LayerZeroV2XdcMainnet.ENDPOINT_V2),
            address(LayerZeroV2XdcMainnet.SEND_ULN_302),
            address(LayerZeroV2XdcMainnet.RECEIVE_ULN_302),
            LayerZeroV2XdcMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2XdcMainnet.EXECUTOR,
            LayerZeroV2XdcMainnet.CHAIN_ID,
            "xdc-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2XlayerMainnet.EID,
            address(LayerZeroV2XlayerMainnet.ENDPOINT_V2),
            address(LayerZeroV2XlayerMainnet.SEND_ULN_302),
            address(LayerZeroV2XlayerMainnet.RECEIVE_ULN_302),
            LayerZeroV2XlayerMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2XlayerMainnet.EXECUTOR,
            LayerZeroV2XlayerMainnet.CHAIN_ID,
            "xlayer-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2XplaMainnet.EID,
            address(LayerZeroV2XplaMainnet.ENDPOINT_V2),
            address(LayerZeroV2XplaMainnet.SEND_ULN_302),
            address(LayerZeroV2XplaMainnet.RECEIVE_ULN_302),
            LayerZeroV2XplaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2XplaMainnet.EXECUTOR,
            LayerZeroV2XplaMainnet.CHAIN_ID,
            "xpla-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZamaMainnet.EID,
            address(LayerZeroV2ZamaMainnet.ENDPOINT_V2),
            address(LayerZeroV2ZamaMainnet.SEND_ULN_302),
            address(LayerZeroV2ZamaMainnet.RECEIVE_ULN_302),
            LayerZeroV2ZamaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZamaMainnet.EXECUTOR,
            LayerZeroV2ZamaMainnet.CHAIN_ID,
            "zama-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZircuitMainnet.EID,
            address(LayerZeroV2ZircuitMainnet.ENDPOINT_V2),
            address(LayerZeroV2ZircuitMainnet.SEND_ULN_302),
            address(LayerZeroV2ZircuitMainnet.RECEIVE_ULN_302),
            LayerZeroV2ZircuitMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZircuitMainnet.EXECUTOR,
            LayerZeroV2ZircuitMainnet.CHAIN_ID,
            "zircuit-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZkatanaMainnet.EID,
            address(LayerZeroV2ZkatanaMainnet.ENDPOINT_V2),
            address(LayerZeroV2ZkatanaMainnet.SEND_ULN_302),
            address(LayerZeroV2ZkatanaMainnet.RECEIVE_ULN_302),
            LayerZeroV2ZkatanaMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZkatanaMainnet.EXECUTOR,
            LayerZeroV2ZkatanaMainnet.CHAIN_ID,
            "zkatana-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZkconsensysMainnet.EID,
            address(LayerZeroV2ZkconsensysMainnet.ENDPOINT_V2),
            address(LayerZeroV2ZkconsensysMainnet.SEND_ULN_302),
            address(LayerZeroV2ZkconsensysMainnet.RECEIVE_ULN_302),
            LayerZeroV2ZkconsensysMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZkconsensysMainnet.EXECUTOR,
            LayerZeroV2ZkconsensysMainnet.CHAIN_ID,
            "zkconsensys-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZklinkMainnet.EID,
            address(LayerZeroV2ZklinkMainnet.ENDPOINT_V2),
            address(LayerZeroV2ZklinkMainnet.SEND_ULN_302),
            address(LayerZeroV2ZklinkMainnet.RECEIVE_ULN_302),
            LayerZeroV2ZklinkMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZklinkMainnet.EXECUTOR,
            LayerZeroV2ZklinkMainnet.CHAIN_ID,
            "zklink-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZkpolygonMainnet.EID,
            address(LayerZeroV2ZkpolygonMainnet.ENDPOINT_V2),
            address(LayerZeroV2ZkpolygonMainnet.SEND_ULN_302),
            address(LayerZeroV2ZkpolygonMainnet.RECEIVE_ULN_302),
            LayerZeroV2ZkpolygonMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZkpolygonMainnet.EXECUTOR,
            LayerZeroV2ZkpolygonMainnet.CHAIN_ID,
            "zkpolygon-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZksyncMainnet.EID,
            address(LayerZeroV2ZksyncMainnet.ENDPOINT_V2),
            address(LayerZeroV2ZksyncMainnet.SEND_ULN_302),
            address(LayerZeroV2ZksyncMainnet.RECEIVE_ULN_302),
            LayerZeroV2ZksyncMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZksyncMainnet.EXECUTOR,
            LayerZeroV2ZksyncMainnet.CHAIN_ID,
            "zksync-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZkverifyMainnet.EID,
            address(LayerZeroV2ZkverifyMainnet.ENDPOINT_V2),
            address(LayerZeroV2ZkverifyMainnet.SEND_ULN_302),
            address(LayerZeroV2ZkverifyMainnet.RECEIVE_ULN_302),
            LayerZeroV2ZkverifyMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZkverifyMainnet.EXECUTOR,
            LayerZeroV2ZkverifyMainnet.CHAIN_ID,
            "zkverify-mainnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZoraMainnet.EID,
            address(LayerZeroV2ZoraMainnet.ENDPOINT_V2),
            address(LayerZeroV2ZoraMainnet.SEND_ULN_302),
            address(LayerZeroV2ZoraMainnet.RECEIVE_ULN_302),
            LayerZeroV2ZoraMainnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZoraMainnet.EXECUTOR,
            LayerZeroV2ZoraMainnet.CHAIN_ID,
            "zora-mainnet",
            new string[](0)
        );

        // Testnets
        _registerChain(
            LayerZeroV2AbstractTestnet.EID,
            address(LayerZeroV2AbstractTestnet.ENDPOINT_V2),
            address(LayerZeroV2AbstractTestnet.SEND_ULN_302),
            address(LayerZeroV2AbstractTestnet.RECEIVE_ULN_302),
            LayerZeroV2AbstractTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AbstractTestnet.EXECUTOR,
            LayerZeroV2AbstractTestnet.CHAIN_ID,
            "abstract-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2AmoyTestnet.EID,
            address(LayerZeroV2AmoyTestnet.ENDPOINT_V2),
            address(LayerZeroV2AmoyTestnet.SEND_ULN_302),
            address(LayerZeroV2AmoyTestnet.RECEIVE_ULN_302),
            LayerZeroV2AmoyTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AmoyTestnet.EXECUTOR,
            LayerZeroV2AmoyTestnet.CHAIN_ID,
            "amoy-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2AnimechainTestnet.EID,
            address(LayerZeroV2AnimechainTestnet.ENDPOINT_V2),
            address(LayerZeroV2AnimechainTestnet.SEND_ULN_302),
            address(LayerZeroV2AnimechainTestnet.RECEIVE_ULN_302),
            LayerZeroV2AnimechainTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AnimechainTestnet.EXECUTOR,
            LayerZeroV2AnimechainTestnet.CHAIN_ID,
            "animechain-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ApexfusionnexusTestnet.EID,
            address(LayerZeroV2ApexfusionnexusTestnet.ENDPOINT_V2),
            address(LayerZeroV2ApexfusionnexusTestnet.SEND_ULN_302),
            address(LayerZeroV2ApexfusionnexusTestnet.RECEIVE_ULN_302),
            LayerZeroV2ApexfusionnexusTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ApexfusionnexusTestnet.EXECUTOR,
            LayerZeroV2ApexfusionnexusTestnet.CHAIN_ID,
            "apexfusionnexus-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ArbsepTestnet.EID,
            address(LayerZeroV2ArbsepTestnet.ENDPOINT_V2),
            address(LayerZeroV2ArbsepTestnet.SEND_ULN_302),
            address(LayerZeroV2ArbsepTestnet.RECEIVE_ULN_302),
            LayerZeroV2ArbsepTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ArbsepTestnet.EXECUTOR,
            LayerZeroV2ArbsepTestnet.CHAIN_ID,
            "arbsep-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ArcTestnet.EID,
            address(LayerZeroV2ArcTestnet.ENDPOINT_V2),
            address(LayerZeroV2ArcTestnet.SEND_ULN_302),
            address(LayerZeroV2ArcTestnet.RECEIVE_ULN_302),
            LayerZeroV2ArcTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ArcTestnet.EXECUTOR,
            LayerZeroV2ArcTestnet.CHAIN_ID,
            "arc-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2AstarTestnet.EID,
            address(LayerZeroV2AstarTestnet.ENDPOINT_V2),
            address(LayerZeroV2AstarTestnet.SEND_ULN_302),
            address(LayerZeroV2AstarTestnet.RECEIVE_ULN_302),
            LayerZeroV2AstarTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AstarTestnet.EXECUTOR,
            LayerZeroV2AstarTestnet.CHAIN_ID,
            "astar-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2AtlanticoceanTestnet.EID,
            address(LayerZeroV2AtlanticoceanTestnet.ENDPOINT_V2),
            address(LayerZeroV2AtlanticoceanTestnet.SEND_ULN_302),
            address(LayerZeroV2AtlanticoceanTestnet.RECEIVE_ULN_302),
            LayerZeroV2AtlanticoceanTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AtlanticoceanTestnet.EXECUTOR,
            LayerZeroV2AtlanticoceanTestnet.CHAIN_ID,
            "atlanticocean-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2AuroraTestnet.EID,
            address(LayerZeroV2AuroraTestnet.ENDPOINT_V2),
            address(LayerZeroV2AuroraTestnet.SEND_ULN_302),
            address(LayerZeroV2AuroraTestnet.RECEIVE_ULN_302),
            LayerZeroV2AuroraTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AuroraTestnet.EXECUTOR,
            LayerZeroV2AuroraTestnet.CHAIN_ID,
            "aurora-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2AvalancheTestnet.EID,
            address(LayerZeroV2AvalancheTestnet.ENDPOINT_V2),
            address(LayerZeroV2AvalancheTestnet.SEND_ULN_302),
            address(LayerZeroV2AvalancheTestnet.RECEIVE_ULN_302),
            LayerZeroV2AvalancheTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2AvalancheTestnet.EXECUTOR,
            LayerZeroV2AvalancheTestnet.CHAIN_ID,
            "avalanche-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BahamutTestnet.EID,
            address(LayerZeroV2BahamutTestnet.ENDPOINT_V2),
            address(LayerZeroV2BahamutTestnet.SEND_ULN_302),
            address(LayerZeroV2BahamutTestnet.RECEIVE_ULN_302),
            LayerZeroV2BahamutTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BahamutTestnet.EXECUTOR,
            LayerZeroV2BahamutTestnet.CHAIN_ID,
            "bahamut-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BartioTestnet.EID,
            address(LayerZeroV2BartioTestnet.ENDPOINT_V2),
            address(LayerZeroV2BartioTestnet.SEND_ULN_302),
            address(LayerZeroV2BartioTestnet.RECEIVE_ULN_302),
            LayerZeroV2BartioTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BartioTestnet.EXECUTOR,
            LayerZeroV2BartioTestnet.CHAIN_ID,
            "bartio-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BasesepTestnet.EID,
            address(LayerZeroV2BasesepTestnet.ENDPOINT_V2),
            address(LayerZeroV2BasesepTestnet.SEND_ULN_302),
            address(LayerZeroV2BasesepTestnet.RECEIVE_ULN_302),
            LayerZeroV2BasesepTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BasesepTestnet.EXECUTOR,
            LayerZeroV2BasesepTestnet.CHAIN_ID,
            "basesep-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BepoliaTestnet.EID,
            address(LayerZeroV2BepoliaTestnet.ENDPOINT_V2),
            address(LayerZeroV2BepoliaTestnet.SEND_ULN_302),
            address(LayerZeroV2BepoliaTestnet.RECEIVE_ULN_302),
            LayerZeroV2BepoliaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BepoliaTestnet.EXECUTOR,
            LayerZeroV2BepoliaTestnet.CHAIN_ID,
            "bepolia-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BeraTestnet.EID,
            address(LayerZeroV2BeraTestnet.ENDPOINT_V2),
            address(LayerZeroV2BeraTestnet.SEND_ULN_302),
            address(LayerZeroV2BeraTestnet.RECEIVE_ULN_302),
            LayerZeroV2BeraTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BeraTestnet.EXECUTOR,
            LayerZeroV2BeraTestnet.CHAIN_ID,
            "bera-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Besu1Testnet.EID,
            address(LayerZeroV2Besu1Testnet.ENDPOINT_V2),
            address(LayerZeroV2Besu1Testnet.SEND_ULN_302),
            address(LayerZeroV2Besu1Testnet.RECEIVE_ULN_302),
            LayerZeroV2Besu1Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Besu1Testnet.EXECUTOR,
            LayerZeroV2Besu1Testnet.CHAIN_ID,
            "besu1-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BevmTestnet.EID,
            address(LayerZeroV2BevmTestnet.ENDPOINT_V2),
            address(LayerZeroV2BevmTestnet.SEND_ULN_302),
            address(LayerZeroV2BevmTestnet.RECEIVE_ULN_302),
            LayerZeroV2BevmTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BevmTestnet.EXECUTOR,
            LayerZeroV2BevmTestnet.CHAIN_ID,
            "bevm-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BitlayerTestnet.EID,
            address(LayerZeroV2BitlayerTestnet.ENDPOINT_V2),
            address(LayerZeroV2BitlayerTestnet.SEND_ULN_302),
            address(LayerZeroV2BitlayerTestnet.RECEIVE_ULN_302),
            LayerZeroV2BitlayerTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BitlayerTestnet.EXECUTOR,
            LayerZeroV2BitlayerTestnet.CHAIN_ID,
            "bitlayer-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Bl2Testnet.EID,
            address(LayerZeroV2Bl2Testnet.ENDPOINT_V2),
            address(LayerZeroV2Bl2Testnet.SEND_ULN_302),
            address(LayerZeroV2Bl2Testnet.RECEIVE_ULN_302),
            LayerZeroV2Bl2Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Bl2Testnet.EXECUTOR,
            LayerZeroV2Bl2Testnet.CHAIN_ID,
            "bl2-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Bl3Testnet.EID,
            address(LayerZeroV2Bl3Testnet.ENDPOINT_V2),
            address(LayerZeroV2Bl3Testnet.SEND_ULN_302),
            address(LayerZeroV2Bl3Testnet.RECEIVE_ULN_302),
            LayerZeroV2Bl3Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Bl3Testnet.EXECUTOR,
            LayerZeroV2Bl3Testnet.CHAIN_ID,
            "bl3-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Bl6Testnet.EID,
            address(LayerZeroV2Bl6Testnet.ENDPOINT_V2),
            address(LayerZeroV2Bl6Testnet.SEND_ULN_302),
            address(LayerZeroV2Bl6Testnet.RECEIVE_ULN_302),
            LayerZeroV2Bl6Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Bl6Testnet.EXECUTOR,
            LayerZeroV2Bl6Testnet.CHAIN_ID,
            "bl6-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BlastTestnet.EID,
            address(LayerZeroV2BlastTestnet.ENDPOINT_V2),
            address(LayerZeroV2BlastTestnet.SEND_ULN_302),
            address(LayerZeroV2BlastTestnet.RECEIVE_ULN_302),
            LayerZeroV2BlastTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BlastTestnet.EXECUTOR,
            LayerZeroV2BlastTestnet.CHAIN_ID,
            "blast-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BleTestnet.EID,
            address(LayerZeroV2BleTestnet.ENDPOINT_V2),
            address(LayerZeroV2BleTestnet.SEND_ULN_302),
            address(LayerZeroV2BleTestnet.RECEIVE_ULN_302),
            LayerZeroV2BleTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BleTestnet.EXECUTOR,
            LayerZeroV2BleTestnet.CHAIN_ID,
            "ble-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BobTestnet.EID,
            address(LayerZeroV2BobTestnet.ENDPOINT_V2),
            address(LayerZeroV2BobTestnet.SEND_ULN_302),
            address(LayerZeroV2BobTestnet.RECEIVE_ULN_302),
            LayerZeroV2BobTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BobTestnet.EXECUTOR,
            LayerZeroV2BobTestnet.CHAIN_ID,
            "bob-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BokutoTestnet.EID,
            address(LayerZeroV2BokutoTestnet.ENDPOINT_V2),
            address(LayerZeroV2BokutoTestnet.SEND_ULN_302),
            address(LayerZeroV2BokutoTestnet.RECEIVE_ULN_302),
            LayerZeroV2BokutoTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BokutoTestnet.EXECUTOR,
            LayerZeroV2BokutoTestnet.CHAIN_ID,
            "bokuto-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BotanixTestnet.EID,
            address(LayerZeroV2BotanixTestnet.ENDPOINT_V2),
            address(LayerZeroV2BotanixTestnet.SEND_ULN_302),
            address(LayerZeroV2BotanixTestnet.RECEIVE_ULN_302),
            LayerZeroV2BotanixTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BotanixTestnet.EXECUTOR,
            LayerZeroV2BotanixTestnet.CHAIN_ID,
            "botanix-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BouncebitTestnet.EID,
            address(LayerZeroV2BouncebitTestnet.ENDPOINT_V2),
            address(LayerZeroV2BouncebitTestnet.SEND_ULN_302),
            address(LayerZeroV2BouncebitTestnet.RECEIVE_ULN_302),
            LayerZeroV2BouncebitTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BouncebitTestnet.EXECUTOR,
            LayerZeroV2BouncebitTestnet.CHAIN_ID,
            "bouncebit-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2BscTestnet.EID,
            address(LayerZeroV2BscTestnet.ENDPOINT_V2),
            address(LayerZeroV2BscTestnet.SEND_ULN_302),
            address(LayerZeroV2BscTestnet.RECEIVE_ULN_302),
            LayerZeroV2BscTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2BscTestnet.EXECUTOR,
            LayerZeroV2BscTestnet.CHAIN_ID,
            "bsc-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CampTestnet.EID,
            address(LayerZeroV2CampTestnet.ENDPOINT_V2),
            address(LayerZeroV2CampTestnet.SEND_ULN_302),
            address(LayerZeroV2CampTestnet.RECEIVE_ULN_302),
            LayerZeroV2CampTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CampTestnet.EXECUTOR,
            LayerZeroV2CampTestnet.CHAIN_ID,
            "camp-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CantoTestnet.EID,
            address(LayerZeroV2CantoTestnet.ENDPOINT_V2),
            address(LayerZeroV2CantoTestnet.SEND_ULN_302),
            address(LayerZeroV2CantoTestnet.RECEIVE_ULN_302),
            LayerZeroV2CantoTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CantoTestnet.EXECUTOR,
            LayerZeroV2CantoTestnet.CHAIN_ID,
            "canto-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CeloTestnet.EID,
            address(LayerZeroV2CeloTestnet.ENDPOINT_V2),
            address(LayerZeroV2CeloTestnet.SEND_ULN_302),
            address(LayerZeroV2CeloTestnet.RECEIVE_ULN_302),
            LayerZeroV2CeloTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CeloTestnet.EXECUTOR,
            LayerZeroV2CeloTestnet.CHAIN_ID,
            "celo-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ChilizspicyTestnet.EID,
            address(LayerZeroV2ChilizspicyTestnet.ENDPOINT_V2),
            address(LayerZeroV2ChilizspicyTestnet.SEND_ULN_302),
            address(LayerZeroV2ChilizspicyTestnet.RECEIVE_ULN_302),
            LayerZeroV2ChilizspicyTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ChilizspicyTestnet.EXECUTOR,
            LayerZeroV2ChilizspicyTestnet.CHAIN_ID,
            "chilizspicy-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CitreaTestnet.EID,
            address(LayerZeroV2CitreaTestnet.ENDPOINT_V2),
            address(LayerZeroV2CitreaTestnet.SEND_ULN_302),
            address(LayerZeroV2CitreaTestnet.RECEIVE_ULN_302),
            LayerZeroV2CitreaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CitreaTestnet.EXECUTOR,
            LayerZeroV2CitreaTestnet.CHAIN_ID,
            "citrea-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CodexTestnet.EID,
            address(LayerZeroV2CodexTestnet.ENDPOINT_V2),
            address(LayerZeroV2CodexTestnet.SEND_ULN_302),
            address(LayerZeroV2CodexTestnet.RECEIVE_ULN_302),
            LayerZeroV2CodexTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CodexTestnet.EXECUTOR,
            LayerZeroV2CodexTestnet.CHAIN_ID,
            "codex-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ConfluxTestnet.EID,
            address(LayerZeroV2ConfluxTestnet.ENDPOINT_V2),
            address(LayerZeroV2ConfluxTestnet.SEND_ULN_302),
            address(LayerZeroV2ConfluxTestnet.RECEIVE_ULN_302),
            LayerZeroV2ConfluxTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ConfluxTestnet.EXECUTOR,
            LayerZeroV2ConfluxTestnet.CHAIN_ID,
            "conflux-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ConvergeTestnet.EID,
            address(LayerZeroV2ConvergeTestnet.ENDPOINT_V2),
            address(LayerZeroV2ConvergeTestnet.SEND_ULN_302),
            address(LayerZeroV2ConvergeTestnet.RECEIVE_ULN_302),
            LayerZeroV2ConvergeTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ConvergeTestnet.EXECUTOR,
            LayerZeroV2ConvergeTestnet.CHAIN_ID,
            "converge-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CoredaoTestnet.EID,
            address(LayerZeroV2CoredaoTestnet.ENDPOINT_V2),
            address(LayerZeroV2CoredaoTestnet.SEND_ULN_302),
            address(LayerZeroV2CoredaoTestnet.RECEIVE_ULN_302),
            LayerZeroV2CoredaoTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CoredaoTestnet.EXECUTOR,
            LayerZeroV2CoredaoTestnet.CHAIN_ID,
            "coredao-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CronosevmTestnet.EID,
            address(LayerZeroV2CronosevmTestnet.ENDPOINT_V2),
            address(LayerZeroV2CronosevmTestnet.SEND_ULN_302),
            address(LayerZeroV2CronosevmTestnet.RECEIVE_ULN_302),
            LayerZeroV2CronosevmTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CronosevmTestnet.EXECUTOR,
            LayerZeroV2CronosevmTestnet.CHAIN_ID,
            "cronosevm-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CronoszkevmTestnet.EID,
            address(LayerZeroV2CronoszkevmTestnet.ENDPOINT_V2),
            address(LayerZeroV2CronoszkevmTestnet.SEND_ULN_302),
            address(LayerZeroV2CronoszkevmTestnet.RECEIVE_ULN_302),
            LayerZeroV2CronoszkevmTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CronoszkevmTestnet.EXECUTOR,
            LayerZeroV2CronoszkevmTestnet.CHAIN_ID,
            "cronoszkevm-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CurtisTestnet.EID,
            address(LayerZeroV2CurtisTestnet.ENDPOINT_V2),
            address(LayerZeroV2CurtisTestnet.SEND_ULN_302),
            address(LayerZeroV2CurtisTestnet.RECEIVE_ULN_302),
            LayerZeroV2CurtisTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CurtisTestnet.EXECUTOR,
            LayerZeroV2CurtisTestnet.CHAIN_ID,
            "curtis-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2CyberTestnet.EID,
            address(LayerZeroV2CyberTestnet.ENDPOINT_V2),
            address(LayerZeroV2CyberTestnet.SEND_ULN_302),
            address(LayerZeroV2CyberTestnet.RECEIVE_ULN_302),
            LayerZeroV2CyberTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2CyberTestnet.EXECUTOR,
            LayerZeroV2CyberTestnet.CHAIN_ID,
            "cyber-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2DexalotTestnet.EID,
            address(LayerZeroV2DexalotTestnet.ENDPOINT_V2),
            address(LayerZeroV2DexalotTestnet.SEND_ULN_302),
            address(LayerZeroV2DexalotTestnet.RECEIVE_ULN_302),
            LayerZeroV2DexalotTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2DexalotTestnet.EXECUTOR,
            LayerZeroV2DexalotTestnet.CHAIN_ID,
            "dexalot-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2DfkTestnet.EID,
            address(LayerZeroV2DfkTestnet.ENDPOINT_V2),
            address(LayerZeroV2DfkTestnet.SEND_ULN_302),
            address(LayerZeroV2DfkTestnet.RECEIVE_ULN_302),
            LayerZeroV2DfkTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2DfkTestnet.EXECUTOR,
            LayerZeroV2DfkTestnet.CHAIN_ID,
            "dfk-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2DinariTestnet.EID,
            address(LayerZeroV2DinariTestnet.ENDPOINT_V2),
            address(LayerZeroV2DinariTestnet.SEND_ULN_302),
            address(LayerZeroV2DinariTestnet.RECEIVE_ULN_302),
            LayerZeroV2DinariTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2DinariTestnet.EXECUTOR,
            LayerZeroV2DinariTestnet.CHAIN_ID,
            "dinari-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Dm2verseTestnet.EID,
            address(LayerZeroV2Dm2verseTestnet.ENDPOINT_V2),
            address(LayerZeroV2Dm2verseTestnet.SEND_ULN_302),
            address(LayerZeroV2Dm2verseTestnet.RECEIVE_ULN_302),
            LayerZeroV2Dm2verseTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Dm2verseTestnet.EXECUTOR,
            LayerZeroV2Dm2verseTestnet.CHAIN_ID,
            "dm2verse-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2DomaTestnet.EID,
            address(LayerZeroV2DomaTestnet.ENDPOINT_V2),
            address(LayerZeroV2DomaTestnet.SEND_ULN_302),
            address(LayerZeroV2DomaTestnet.RECEIVE_ULN_302),
            LayerZeroV2DomaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2DomaTestnet.EXECUTOR,
            LayerZeroV2DomaTestnet.CHAIN_ID,
            "doma-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2DosTestnet.EID,
            address(LayerZeroV2DosTestnet.ENDPOINT_V2),
            address(LayerZeroV2DosTestnet.SEND_ULN_302),
            address(LayerZeroV2DosTestnet.RECEIVE_ULN_302),
            LayerZeroV2DosTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2DosTestnet.EXECUTOR,
            LayerZeroV2DosTestnet.CHAIN_ID,
            "dos-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2EbiTestnet.EID,
            address(LayerZeroV2EbiTestnet.ENDPOINT_V2),
            address(LayerZeroV2EbiTestnet.SEND_ULN_302),
            address(LayerZeroV2EbiTestnet.RECEIVE_ULN_302),
            LayerZeroV2EbiTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2EbiTestnet.EXECUTOR,
            LayerZeroV2EbiTestnet.CHAIN_ID,
            "ebi-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2EtherealTestnet.EID,
            address(LayerZeroV2EtherealTestnet.ENDPOINT_V2),
            address(LayerZeroV2EtherealTestnet.SEND_ULN_302),
            address(LayerZeroV2EtherealTestnet.RECEIVE_ULN_302),
            LayerZeroV2EtherealTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2EtherealTestnet.EXECUTOR,
            LayerZeroV2EtherealTestnet.CHAIN_ID,
            "ethereal-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Ethereal2Testnet.EID,
            address(LayerZeroV2Ethereal2Testnet.ENDPOINT_V2),
            address(LayerZeroV2Ethereal2Testnet.SEND_ULN_302),
            address(LayerZeroV2Ethereal2Testnet.RECEIVE_ULN_302),
            LayerZeroV2Ethereal2Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Ethereal2Testnet.EXECUTOR,
            LayerZeroV2Ethereal2Testnet.CHAIN_ID,
            "ethereal2-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2EtherlinkTestnet.EID,
            address(LayerZeroV2EtherlinkTestnet.ENDPOINT_V2),
            address(LayerZeroV2EtherlinkTestnet.SEND_ULN_302),
            address(LayerZeroV2EtherlinkTestnet.RECEIVE_ULN_302),
            LayerZeroV2EtherlinkTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2EtherlinkTestnet.EXECUTOR,
            LayerZeroV2EtherlinkTestnet.CHAIN_ID,
            "etherlink-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2EtherlinkshadownetTestnet.EID,
            address(LayerZeroV2EtherlinkshadownetTestnet.ENDPOINT_V2),
            address(LayerZeroV2EtherlinkshadownetTestnet.SEND_ULN_302),
            address(LayerZeroV2EtherlinkshadownetTestnet.RECEIVE_ULN_302),
            LayerZeroV2EtherlinkshadownetTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2EtherlinkshadownetTestnet.EXECUTOR,
            LayerZeroV2EtherlinkshadownetTestnet.CHAIN_ID,
            "etherlinkshadownet-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ExocoreTestnet.EID,
            address(LayerZeroV2ExocoreTestnet.ENDPOINT_V2),
            address(LayerZeroV2ExocoreTestnet.SEND_ULN_302),
            address(LayerZeroV2ExocoreTestnet.RECEIVE_ULN_302),
            LayerZeroV2ExocoreTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ExocoreTestnet.EXECUTOR,
            LayerZeroV2ExocoreTestnet.CHAIN_ID,
            "exocore-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FantomTestnet.EID,
            address(LayerZeroV2FantomTestnet.ENDPOINT_V2),
            address(LayerZeroV2FantomTestnet.SEND_ULN_302),
            address(LayerZeroV2FantomTestnet.RECEIVE_ULN_302),
            LayerZeroV2FantomTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FantomTestnet.EXECUTOR,
            LayerZeroV2FantomTestnet.CHAIN_ID,
            "fantom-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FiTestnet.EID,
            address(LayerZeroV2FiTestnet.ENDPOINT_V2),
            address(LayerZeroV2FiTestnet.SEND_ULN_302),
            address(LayerZeroV2FiTestnet.RECEIVE_ULN_302),
            LayerZeroV2FiTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FiTestnet.EXECUTOR,
            LayerZeroV2FiTestnet.CHAIN_ID,
            "fi-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FlareTestnet.EID,
            address(LayerZeroV2FlareTestnet.ENDPOINT_V2),
            address(LayerZeroV2FlareTestnet.SEND_ULN_302),
            address(LayerZeroV2FlareTestnet.RECEIVE_ULN_302),
            LayerZeroV2FlareTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FlareTestnet.EXECUTOR,
            LayerZeroV2FlareTestnet.CHAIN_ID,
            "flare-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FlowTestnet.EID,
            address(LayerZeroV2FlowTestnet.ENDPOINT_V2),
            address(LayerZeroV2FlowTestnet.SEND_ULN_302),
            address(LayerZeroV2FlowTestnet.RECEIVE_ULN_302),
            LayerZeroV2FlowTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FlowTestnet.EXECUTOR,
            LayerZeroV2FlowTestnet.CHAIN_ID,
            "flow-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FormTestnet.EID,
            address(LayerZeroV2FormTestnet.ENDPOINT_V2),
            address(LayerZeroV2FormTestnet.SEND_ULN_302),
            address(LayerZeroV2FormTestnet.RECEIVE_ULN_302),
            LayerZeroV2FormTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FormTestnet.EXECUTOR,
            LayerZeroV2FormTestnet.CHAIN_ID,
            "form-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FraxtalTestnet.EID,
            address(LayerZeroV2FraxtalTestnet.ENDPOINT_V2),
            address(LayerZeroV2FraxtalTestnet.SEND_ULN_302),
            address(LayerZeroV2FraxtalTestnet.RECEIVE_ULN_302),
            LayerZeroV2FraxtalTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FraxtalTestnet.EXECUTOR,
            LayerZeroV2FraxtalTestnet.CHAIN_ID,
            "fraxtal-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2FuseTestnet.EID,
            address(LayerZeroV2FuseTestnet.ENDPOINT_V2),
            address(LayerZeroV2FuseTestnet.SEND_ULN_302),
            address(LayerZeroV2FuseTestnet.RECEIVE_ULN_302),
            LayerZeroV2FuseTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2FuseTestnet.EXECUTOR,
            LayerZeroV2FuseTestnet.CHAIN_ID,
            "fuse-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GameswiftTestnet.EID,
            address(LayerZeroV2GameswiftTestnet.ENDPOINT_V2),
            address(LayerZeroV2GameswiftTestnet.SEND_ULN_302),
            address(LayerZeroV2GameswiftTestnet.RECEIVE_ULN_302),
            LayerZeroV2GameswiftTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GameswiftTestnet.EXECUTOR,
            LayerZeroV2GameswiftTestnet.CHAIN_ID,
            "gameswift-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GateTestnet.EID,
            address(LayerZeroV2GateTestnet.ENDPOINT_V2),
            address(LayerZeroV2GateTestnet.SEND_ULN_302),
            address(LayerZeroV2GateTestnet.RECEIVE_ULN_302),
            LayerZeroV2GateTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GateTestnet.EXECUTOR,
            LayerZeroV2GateTestnet.CHAIN_ID,
            "gate-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GlueTestnet.EID,
            address(LayerZeroV2GlueTestnet.ENDPOINT_V2),
            address(LayerZeroV2GlueTestnet.SEND_ULN_302),
            address(LayerZeroV2GlueTestnet.RECEIVE_ULN_302),
            LayerZeroV2GlueTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GlueTestnet.EXECUTOR,
            LayerZeroV2GlueTestnet.CHAIN_ID,
            "glue-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GnosisTestnet.EID,
            address(LayerZeroV2GnosisTestnet.ENDPOINT_V2),
            address(LayerZeroV2GnosisTestnet.SEND_ULN_302),
            address(LayerZeroV2GnosisTestnet.RECEIVE_ULN_302),
            LayerZeroV2GnosisTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GnosisTestnet.EXECUTOR,
            LayerZeroV2GnosisTestnet.CHAIN_ID,
            "gnosis-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GoatTestnet.EID,
            address(LayerZeroV2GoatTestnet.ENDPOINT_V2),
            address(LayerZeroV2GoatTestnet.SEND_ULN_302),
            address(LayerZeroV2GoatTestnet.RECEIVE_ULN_302),
            LayerZeroV2GoatTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GoatTestnet.EXECUTOR,
            LayerZeroV2GoatTestnet.CHAIN_ID,
            "goat-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2GunzillaTestnet.EID,
            address(LayerZeroV2GunzillaTestnet.ENDPOINT_V2),
            address(LayerZeroV2GunzillaTestnet.SEND_ULN_302),
            address(LayerZeroV2GunzillaTestnet.RECEIVE_ULN_302),
            LayerZeroV2GunzillaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2GunzillaTestnet.EXECUTOR,
            LayerZeroV2GunzillaTestnet.CHAIN_ID,
            "gunzilla-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HederaTestnet.EID,
            address(LayerZeroV2HederaTestnet.ENDPOINT_V2),
            address(LayerZeroV2HederaTestnet.SEND_ULN_302),
            address(LayerZeroV2HederaTestnet.RECEIVE_ULN_302),
            LayerZeroV2HederaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HederaTestnet.EXECUTOR,
            LayerZeroV2HederaTestnet.CHAIN_ID,
            "hedera-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HemiTestnet.EID,
            address(LayerZeroV2HemiTestnet.ENDPOINT_V2),
            address(LayerZeroV2HemiTestnet.SEND_ULN_302),
            address(LayerZeroV2HemiTestnet.RECEIVE_ULN_302),
            LayerZeroV2HemiTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HemiTestnet.EXECUTOR,
            LayerZeroV2HemiTestnet.CHAIN_ID,
            "hemi-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HoleskyTestnet.EID,
            address(LayerZeroV2HoleskyTestnet.ENDPOINT_V2),
            address(LayerZeroV2HoleskyTestnet.SEND_ULN_302),
            address(LayerZeroV2HoleskyTestnet.RECEIVE_ULN_302),
            LayerZeroV2HoleskyTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HoleskyTestnet.EXECUTOR,
            LayerZeroV2HoleskyTestnet.CHAIN_ID,
            "holesky-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HomeverseTestnet.EID,
            address(LayerZeroV2HomeverseTestnet.ENDPOINT_V2),
            address(LayerZeroV2HomeverseTestnet.SEND_ULN_302),
            address(LayerZeroV2HomeverseTestnet.RECEIVE_ULN_302),
            LayerZeroV2HomeverseTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HomeverseTestnet.EXECUTOR,
            LayerZeroV2HomeverseTestnet.CHAIN_ID,
            "homeverse-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HorizenTestnet.EID,
            address(LayerZeroV2HorizenTestnet.ENDPOINT_V2),
            address(LayerZeroV2HorizenTestnet.SEND_ULN_302),
            address(LayerZeroV2HorizenTestnet.RECEIVE_ULN_302),
            LayerZeroV2HorizenTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HorizenTestnet.EXECUTOR,
            LayerZeroV2HorizenTestnet.CHAIN_ID,
            "horizen-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HumanityTestnet.EID,
            address(LayerZeroV2HumanityTestnet.ENDPOINT_V2),
            address(LayerZeroV2HumanityTestnet.SEND_ULN_302),
            address(LayerZeroV2HumanityTestnet.RECEIVE_ULN_302),
            LayerZeroV2HumanityTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HumanityTestnet.EXECUTOR,
            LayerZeroV2HumanityTestnet.CHAIN_ID,
            "humanity-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2HyperliquidTestnet.EID,
            address(LayerZeroV2HyperliquidTestnet.ENDPOINT_V2),
            address(LayerZeroV2HyperliquidTestnet.SEND_ULN_302),
            address(LayerZeroV2HyperliquidTestnet.RECEIVE_ULN_302),
            LayerZeroV2HyperliquidTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2HyperliquidTestnet.EXECUTOR,
            LayerZeroV2HyperliquidTestnet.CHAIN_ID,
            "hyperliquid-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Injective1439Testnet.EID,
            address(LayerZeroV2Injective1439Testnet.ENDPOINT_V2),
            address(LayerZeroV2Injective1439Testnet.SEND_ULN_302),
            address(LayerZeroV2Injective1439Testnet.RECEIVE_ULN_302),
            LayerZeroV2Injective1439Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Injective1439Testnet.EXECUTOR,
            LayerZeroV2Injective1439Testnet.CHAIN_ID,
            "injective1439-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2InkTestnet.EID,
            address(LayerZeroV2InkTestnet.ENDPOINT_V2),
            address(LayerZeroV2InkTestnet.SEND_ULN_302),
            address(LayerZeroV2InkTestnet.RECEIVE_ULN_302),
            LayerZeroV2InkTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2InkTestnet.EXECUTOR,
            LayerZeroV2InkTestnet.CHAIN_ID,
            "ink-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2IotaTestnet.EID,
            address(LayerZeroV2IotaTestnet.ENDPOINT_V2),
            address(LayerZeroV2IotaTestnet.SEND_ULN_302),
            address(LayerZeroV2IotaTestnet.RECEIVE_ULN_302),
            LayerZeroV2IotaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2IotaTestnet.EXECUTOR,
            LayerZeroV2IotaTestnet.CHAIN_ID,
            "iota-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2IrysTestnet.EID,
            address(LayerZeroV2IrysTestnet.ENDPOINT_V2),
            address(LayerZeroV2IrysTestnet.SEND_ULN_302),
            address(LayerZeroV2IrysTestnet.RECEIVE_ULN_302),
            LayerZeroV2IrysTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2IrysTestnet.EXECUTOR,
            LayerZeroV2IrysTestnet.CHAIN_ID,
            "irys-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2JocTestnet.EID,
            address(LayerZeroV2JocTestnet.ENDPOINT_V2),
            address(LayerZeroV2JocTestnet.SEND_ULN_302),
            address(LayerZeroV2JocTestnet.RECEIVE_ULN_302),
            LayerZeroV2JocTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2JocTestnet.EXECUTOR,
            LayerZeroV2JocTestnet.CHAIN_ID,
            "joc-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2JovayTestnet.EID,
            address(LayerZeroV2JovayTestnet.ENDPOINT_V2),
            address(LayerZeroV2JovayTestnet.SEND_ULN_302),
            address(LayerZeroV2JovayTestnet.RECEIVE_ULN_302),
            LayerZeroV2JovayTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2JovayTestnet.EXECUTOR,
            LayerZeroV2JovayTestnet.CHAIN_ID,
            "jovay-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2KatanaTestnet.EID,
            address(LayerZeroV2KatanaTestnet.ENDPOINT_V2),
            address(LayerZeroV2KatanaTestnet.SEND_ULN_302),
            address(LayerZeroV2KatanaTestnet.RECEIVE_ULN_302),
            LayerZeroV2KatanaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2KatanaTestnet.EXECUTOR,
            LayerZeroV2KatanaTestnet.CHAIN_ID,
            "katana-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2KavaTestnet.EID,
            address(LayerZeroV2KavaTestnet.ENDPOINT_V2),
            address(LayerZeroV2KavaTestnet.SEND_ULN_302),
            address(LayerZeroV2KavaTestnet.RECEIVE_ULN_302),
            LayerZeroV2KavaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2KavaTestnet.EXECUTOR,
            LayerZeroV2KavaTestnet.CHAIN_ID,
            "kava-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2KevnetTestnet.EID,
            address(LayerZeroV2KevnetTestnet.ENDPOINT_V2),
            address(LayerZeroV2KevnetTestnet.SEND_ULN_302),
            address(LayerZeroV2KevnetTestnet.RECEIVE_ULN_302),
            LayerZeroV2KevnetTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2KevnetTestnet.EXECUTOR,
            LayerZeroV2KevnetTestnet.CHAIN_ID,
            "kevnet-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2KiteTestnet.EID,
            address(LayerZeroV2KiteTestnet.ENDPOINT_V2),
            address(LayerZeroV2KiteTestnet.SEND_ULN_302),
            address(LayerZeroV2KiteTestnet.RECEIVE_ULN_302),
            LayerZeroV2KiteTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2KiteTestnet.EXECUTOR,
            LayerZeroV2KiteTestnet.CHAIN_ID,
            "kite-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2KlaytnTestnet.EID,
            address(LayerZeroV2KlaytnTestnet.ENDPOINT_V2),
            address(LayerZeroV2KlaytnTestnet.SEND_ULN_302),
            address(LayerZeroV2KlaytnTestnet.RECEIVE_ULN_302),
            LayerZeroV2KlaytnTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2KlaytnTestnet.EXECUTOR,
            LayerZeroV2KlaytnTestnet.CHAIN_ID,
            "klaytn-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2LensTestnet.EID,
            address(LayerZeroV2LensTestnet.ENDPOINT_V2),
            address(LayerZeroV2LensTestnet.SEND_ULN_302),
            address(LayerZeroV2LensTestnet.RECEIVE_ULN_302),
            LayerZeroV2LensTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2LensTestnet.EXECUTOR,
            LayerZeroV2LensTestnet.CHAIN_ID,
            "lens-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Lif3Testnet.EID,
            address(LayerZeroV2Lif3Testnet.ENDPOINT_V2),
            address(LayerZeroV2Lif3Testnet.SEND_ULN_302),
            address(LayerZeroV2Lif3Testnet.RECEIVE_ULN_302),
            LayerZeroV2Lif3Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Lif3Testnet.EXECUTOR,
            LayerZeroV2Lif3Testnet.CHAIN_ID,
            "lif3-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2LightlinkTestnet.EID,
            address(LayerZeroV2LightlinkTestnet.ENDPOINT_V2),
            address(LayerZeroV2LightlinkTestnet.SEND_ULN_302),
            address(LayerZeroV2LightlinkTestnet.RECEIVE_ULN_302),
            LayerZeroV2LightlinkTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2LightlinkTestnet.EXECUTOR,
            LayerZeroV2LightlinkTestnet.CHAIN_ID,
            "lightlink-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2LineasepTestnet.EID,
            address(LayerZeroV2LineasepTestnet.ENDPOINT_V2),
            address(LayerZeroV2LineasepTestnet.SEND_ULN_302),
            address(LayerZeroV2LineasepTestnet.RECEIVE_ULN_302),
            LayerZeroV2LineasepTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2LineasepTestnet.EXECUTOR,
            LayerZeroV2LineasepTestnet.CHAIN_ID,
            "lineasep-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2LiskTestnet.EID,
            address(LayerZeroV2LiskTestnet.ENDPOINT_V2),
            address(LayerZeroV2LiskTestnet.SEND_ULN_302),
            address(LayerZeroV2LiskTestnet.RECEIVE_ULN_302),
            LayerZeroV2LiskTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2LiskTestnet.EXECUTOR,
            LayerZeroV2LiskTestnet.CHAIN_ID,
            "lisk-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Ll1Testnet.EID,
            address(LayerZeroV2Ll1Testnet.ENDPOINT_V2),
            address(LayerZeroV2Ll1Testnet.SEND_ULN_302),
            address(LayerZeroV2Ll1Testnet.RECEIVE_ULN_302),
            LayerZeroV2Ll1Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Ll1Testnet.EXECUTOR,
            LayerZeroV2Ll1Testnet.CHAIN_ID,
            "ll1-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2LootTestnet.EID,
            address(LayerZeroV2LootTestnet.ENDPOINT_V2),
            address(LayerZeroV2LootTestnet.SEND_ULN_302),
            address(LayerZeroV2LootTestnet.RECEIVE_ULN_302),
            LayerZeroV2LootTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2LootTestnet.EXECUTOR,
            LayerZeroV2LootTestnet.CHAIN_ID,
            "loot-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2LyraTestnet.EID,
            address(LayerZeroV2LyraTestnet.ENDPOINT_V2),
            address(LayerZeroV2LyraTestnet.SEND_ULN_302),
            address(LayerZeroV2LyraTestnet.RECEIVE_ULN_302),
            LayerZeroV2LyraTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2LyraTestnet.EXECUTOR,
            LayerZeroV2LyraTestnet.CHAIN_ID,
            "lyra-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MantasepTestnet.EID,
            address(LayerZeroV2MantasepTestnet.ENDPOINT_V2),
            address(LayerZeroV2MantasepTestnet.SEND_ULN_302),
            address(LayerZeroV2MantasepTestnet.RECEIVE_ULN_302),
            LayerZeroV2MantasepTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MantasepTestnet.EXECUTOR,
            LayerZeroV2MantasepTestnet.CHAIN_ID,
            "mantasep-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MantleTestnet.EID,
            address(LayerZeroV2MantleTestnet.ENDPOINT_V2),
            address(LayerZeroV2MantleTestnet.SEND_ULN_302),
            address(LayerZeroV2MantleTestnet.RECEIVE_ULN_302),
            LayerZeroV2MantleTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MantleTestnet.EXECUTOR,
            LayerZeroV2MantleTestnet.CHAIN_ID,
            "mantle-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MantlesepTestnet.EID,
            address(LayerZeroV2MantlesepTestnet.ENDPOINT_V2),
            address(LayerZeroV2MantlesepTestnet.SEND_ULN_302),
            address(LayerZeroV2MantlesepTestnet.RECEIVE_ULN_302),
            LayerZeroV2MantlesepTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MantlesepTestnet.EXECUTOR,
            LayerZeroV2MantlesepTestnet.CHAIN_ID,
            "mantlesep-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MasaTestnet.EID,
            address(LayerZeroV2MasaTestnet.ENDPOINT_V2),
            address(LayerZeroV2MasaTestnet.SEND_ULN_302),
            address(LayerZeroV2MasaTestnet.RECEIVE_ULN_302),
            LayerZeroV2MasaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MasaTestnet.EXECUTOR,
            LayerZeroV2MasaTestnet.CHAIN_ID,
            "masa-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MegaethTestnet.EID,
            address(LayerZeroV2MegaethTestnet.ENDPOINT_V2),
            address(LayerZeroV2MegaethTestnet.SEND_ULN_302),
            address(LayerZeroV2MegaethTestnet.RECEIVE_ULN_302),
            LayerZeroV2MegaethTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MegaethTestnet.EXECUTOR,
            LayerZeroV2MegaethTestnet.CHAIN_ID,
            "megaeth-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Megaeth2Testnet.EID,
            address(LayerZeroV2Megaeth2Testnet.ENDPOINT_V2),
            address(LayerZeroV2Megaeth2Testnet.SEND_ULN_302),
            address(LayerZeroV2Megaeth2Testnet.RECEIVE_ULN_302),
            LayerZeroV2Megaeth2Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Megaeth2Testnet.EXECUTOR,
            LayerZeroV2Megaeth2Testnet.CHAIN_ID,
            "megaeth2-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MemecoreformicariumTestnet.EID,
            address(LayerZeroV2MemecoreformicariumTestnet.ENDPOINT_V2),
            address(LayerZeroV2MemecoreformicariumTestnet.SEND_ULN_302),
            address(LayerZeroV2MemecoreformicariumTestnet.RECEIVE_ULN_302),
            LayerZeroV2MemecoreformicariumTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MemecoreformicariumTestnet.EXECUTOR,
            LayerZeroV2MemecoreformicariumTestnet.CHAIN_ID,
            "memecoreformicarium-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MeritcircleTestnet.EID,
            address(LayerZeroV2MeritcircleTestnet.ENDPOINT_V2),
            address(LayerZeroV2MeritcircleTestnet.SEND_ULN_302),
            address(LayerZeroV2MeritcircleTestnet.RECEIVE_ULN_302),
            LayerZeroV2MeritcircleTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MeritcircleTestnet.EXECUTOR,
            LayerZeroV2MeritcircleTestnet.CHAIN_ID,
            "meritcircle-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MerlinTestnet.EID,
            address(LayerZeroV2MerlinTestnet.ENDPOINT_V2),
            address(LayerZeroV2MerlinTestnet.SEND_ULN_302),
            address(LayerZeroV2MerlinTestnet.RECEIVE_ULN_302),
            LayerZeroV2MerlinTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MerlinTestnet.EXECUTOR,
            LayerZeroV2MerlinTestnet.CHAIN_ID,
            "merlin-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MeterTestnet.EID,
            address(LayerZeroV2MeterTestnet.ENDPOINT_V2),
            address(LayerZeroV2MeterTestnet.SEND_ULN_302),
            address(LayerZeroV2MeterTestnet.RECEIVE_ULN_302),
            LayerZeroV2MeterTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MeterTestnet.EXECUTOR,
            LayerZeroV2MeterTestnet.CHAIN_ID,
            "meter-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MetissepTestnet.EID,
            address(LayerZeroV2MetissepTestnet.ENDPOINT_V2),
            address(LayerZeroV2MetissepTestnet.SEND_ULN_302),
            address(LayerZeroV2MetissepTestnet.RECEIVE_ULN_302),
            LayerZeroV2MetissepTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MetissepTestnet.EXECUTOR,
            LayerZeroV2MetissepTestnet.CHAIN_ID,
            "metissep-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MinatoTestnet.EID,
            address(LayerZeroV2MinatoTestnet.ENDPOINT_V2),
            address(LayerZeroV2MinatoTestnet.SEND_ULN_302),
            address(LayerZeroV2MinatoTestnet.RECEIVE_ULN_302),
            LayerZeroV2MinatoTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MinatoTestnet.EXECUTOR,
            LayerZeroV2MinatoTestnet.CHAIN_ID,
            "minato-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MocaTestnet.EID,
            address(LayerZeroV2MocaTestnet.ENDPOINT_V2),
            address(LayerZeroV2MocaTestnet.SEND_ULN_302),
            address(LayerZeroV2MocaTestnet.RECEIVE_ULN_302),
            LayerZeroV2MocaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MocaTestnet.EXECUTOR,
            LayerZeroV2MocaTestnet.CHAIN_ID,
            "moca-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ModeTestnet.EID,
            address(LayerZeroV2ModeTestnet.ENDPOINT_V2),
            address(LayerZeroV2ModeTestnet.SEND_ULN_302),
            address(LayerZeroV2ModeTestnet.RECEIVE_ULN_302),
            LayerZeroV2ModeTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ModeTestnet.EXECUTOR,
            LayerZeroV2ModeTestnet.CHAIN_ID,
            "mode-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ModeratoTestnet.EID,
            address(LayerZeroV2ModeratoTestnet.ENDPOINT_V2),
            address(LayerZeroV2ModeratoTestnet.SEND_ULN_302),
            address(LayerZeroV2ModeratoTestnet.RECEIVE_ULN_302),
            LayerZeroV2ModeratoTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ModeratoTestnet.EXECUTOR,
            LayerZeroV2ModeratoTestnet.CHAIN_ID,
            "moderato-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MokshaTestnet.EID,
            address(LayerZeroV2MokshaTestnet.ENDPOINT_V2),
            address(LayerZeroV2MokshaTestnet.SEND_ULN_302),
            address(LayerZeroV2MokshaTestnet.RECEIVE_ULN_302),
            LayerZeroV2MokshaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MokshaTestnet.EXECUTOR,
            LayerZeroV2MokshaTestnet.CHAIN_ID,
            "moksha-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MonadTestnet.EID,
            address(LayerZeroV2MonadTestnet.ENDPOINT_V2),
            address(LayerZeroV2MonadTestnet.SEND_ULN_302),
            address(LayerZeroV2MonadTestnet.RECEIVE_ULN_302),
            LayerZeroV2MonadTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MonadTestnet.EXECUTOR,
            LayerZeroV2MonadTestnet.CHAIN_ID,
            "monad-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Monad2Testnet.EID,
            address(LayerZeroV2Monad2Testnet.ENDPOINT_V2),
            address(LayerZeroV2Monad2Testnet.SEND_ULN_302),
            address(LayerZeroV2Monad2Testnet.RECEIVE_ULN_302),
            LayerZeroV2Monad2Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Monad2Testnet.EXECUTOR,
            LayerZeroV2Monad2Testnet.CHAIN_ID,
            "monad2-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MoonbeamTestnet.EID,
            address(LayerZeroV2MoonbeamTestnet.ENDPOINT_V2),
            address(LayerZeroV2MoonbeamTestnet.SEND_ULN_302),
            address(LayerZeroV2MoonbeamTestnet.RECEIVE_ULN_302),
            LayerZeroV2MoonbeamTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MoonbeamTestnet.EXECUTOR,
            LayerZeroV2MoonbeamTestnet.CHAIN_ID,
            "moonbeam-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2MorphTestnet.EID,
            address(LayerZeroV2MorphTestnet.ENDPOINT_V2),
            address(LayerZeroV2MorphTestnet.SEND_ULN_302),
            address(LayerZeroV2MorphTestnet.RECEIVE_ULN_302),
            LayerZeroV2MorphTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2MorphTestnet.EXECUTOR,
            LayerZeroV2MorphTestnet.CHAIN_ID,
            "morph-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Mp1Testnet.EID,
            address(LayerZeroV2Mp1Testnet.ENDPOINT_V2),
            address(LayerZeroV2Mp1Testnet.SEND_ULN_302),
            address(LayerZeroV2Mp1Testnet.RECEIVE_ULN_302),
            LayerZeroV2Mp1Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Mp1Testnet.EXECUTOR,
            LayerZeroV2Mp1Testnet.CHAIN_ID,
            "mp1-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2NexeraTestnet.EID,
            address(LayerZeroV2NexeraTestnet.ENDPOINT_V2),
            address(LayerZeroV2NexeraTestnet.SEND_ULN_302),
            address(LayerZeroV2NexeraTestnet.RECEIVE_ULN_302),
            LayerZeroV2NexeraTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2NexeraTestnet.EXECUTOR,
            LayerZeroV2NexeraTestnet.CHAIN_ID,
            "nexera-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2NibiruTestnet.EID,
            address(LayerZeroV2NibiruTestnet.ENDPOINT_V2),
            address(LayerZeroV2NibiruTestnet.SEND_ULN_302),
            address(LayerZeroV2NibiruTestnet.RECEIVE_ULN_302),
            LayerZeroV2NibiruTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2NibiruTestnet.EXECUTOR,
            LayerZeroV2NibiruTestnet.CHAIN_ID,
            "nibiru-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OdysseyTestnet.EID,
            address(LayerZeroV2OdysseyTestnet.ENDPOINT_V2),
            address(LayerZeroV2OdysseyTestnet.SEND_ULN_302),
            address(LayerZeroV2OdysseyTestnet.RECEIVE_ULN_302),
            LayerZeroV2OdysseyTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OdysseyTestnet.EXECUTOR,
            LayerZeroV2OdysseyTestnet.CHAIN_ID,
            "odyssey-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OgTestnet.EID,
            address(LayerZeroV2OgTestnet.ENDPOINT_V2),
            address(LayerZeroV2OgTestnet.SEND_ULN_302),
            address(LayerZeroV2OgTestnet.RECEIVE_ULN_302),
            LayerZeroV2OgTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OgTestnet.EXECUTOR,
            LayerZeroV2OgTestnet.CHAIN_ID,
            "og-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OggalileoTestnet.EID,
            address(LayerZeroV2OggalileoTestnet.ENDPOINT_V2),
            address(LayerZeroV2OggalileoTestnet.SEND_ULN_302),
            address(LayerZeroV2OggalileoTestnet.RECEIVE_ULN_302),
            LayerZeroV2OggalileoTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OggalileoTestnet.EXECUTOR,
            LayerZeroV2OggalileoTestnet.CHAIN_ID,
            "oggalileo-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OkxTestnet.EID,
            address(LayerZeroV2OkxTestnet.ENDPOINT_V2),
            address(LayerZeroV2OkxTestnet.SEND_ULN_302),
            address(LayerZeroV2OkxTestnet.RECEIVE_ULN_302),
            LayerZeroV2OkxTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OkxTestnet.EXECUTOR,
            LayerZeroV2OkxTestnet.CHAIN_ID,
            "okx-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OliveTestnet.EID,
            address(LayerZeroV2OliveTestnet.ENDPOINT_V2),
            address(LayerZeroV2OliveTestnet.SEND_ULN_302),
            address(LayerZeroV2OliveTestnet.RECEIVE_ULN_302),
            LayerZeroV2OliveTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OliveTestnet.EXECUTOR,
            LayerZeroV2OliveTestnet.CHAIN_ID,
            "olive-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OndoTestnet.EID,
            address(LayerZeroV2OndoTestnet.ENDPOINT_V2),
            address(LayerZeroV2OndoTestnet.SEND_ULN_302),
            address(LayerZeroV2OndoTestnet.RECEIVE_ULN_302),
            LayerZeroV2OndoTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OndoTestnet.EXECUTOR,
            LayerZeroV2OndoTestnet.CHAIN_ID,
            "ondo-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OpbnbTestnet.EID,
            address(LayerZeroV2OpbnbTestnet.ENDPOINT_V2),
            address(LayerZeroV2OpbnbTestnet.SEND_ULN_302),
            address(LayerZeroV2OpbnbTestnet.RECEIVE_ULN_302),
            LayerZeroV2OpbnbTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OpbnbTestnet.EXECUTOR,
            LayerZeroV2OpbnbTestnet.CHAIN_ID,
            "opbnb-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OpencampusTestnet.EID,
            address(LayerZeroV2OpencampusTestnet.ENDPOINT_V2),
            address(LayerZeroV2OpencampusTestnet.SEND_ULN_302),
            address(LayerZeroV2OpencampusTestnet.RECEIVE_ULN_302),
            LayerZeroV2OpencampusTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OpencampusTestnet.EXECUTOR,
            LayerZeroV2OpencampusTestnet.CHAIN_ID,
            "opencampus-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OpenledgerTestnet.EID,
            address(LayerZeroV2OpenledgerTestnet.ENDPOINT_V2),
            address(LayerZeroV2OpenledgerTestnet.SEND_ULN_302),
            address(LayerZeroV2OpenledgerTestnet.RECEIVE_ULN_302),
            LayerZeroV2OpenledgerTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OpenledgerTestnet.EXECUTOR,
            LayerZeroV2OpenledgerTestnet.CHAIN_ID,
            "openledger-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OptsepTestnet.EID,
            address(LayerZeroV2OptsepTestnet.ENDPOINT_V2),
            address(LayerZeroV2OptsepTestnet.SEND_ULN_302),
            address(LayerZeroV2OptsepTestnet.RECEIVE_ULN_302),
            LayerZeroV2OptsepTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OptsepTestnet.EXECUTOR,
            LayerZeroV2OptsepTestnet.CHAIN_ID,
            "optsep-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OrderlyTestnet.EID,
            address(LayerZeroV2OrderlyTestnet.ENDPOINT_V2),
            address(LayerZeroV2OrderlyTestnet.SEND_ULN_302),
            address(LayerZeroV2OrderlyTestnet.RECEIVE_ULN_302),
            LayerZeroV2OrderlyTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OrderlyTestnet.EXECUTOR,
            LayerZeroV2OrderlyTestnet.CHAIN_ID,
            "orderly-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OtherworldTestnet.EID,
            address(LayerZeroV2OtherworldTestnet.ENDPOINT_V2),
            address(LayerZeroV2OtherworldTestnet.SEND_ULN_302),
            address(LayerZeroV2OtherworldTestnet.RECEIVE_ULN_302),
            LayerZeroV2OtherworldTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OtherworldTestnet.EXECUTOR,
            LayerZeroV2OtherworldTestnet.CHAIN_ID,
            "otherworld-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2OzeanTestnet.EID,
            address(LayerZeroV2OzeanTestnet.ENDPOINT_V2),
            address(LayerZeroV2OzeanTestnet.SEND_ULN_302),
            address(LayerZeroV2OzeanTestnet.RECEIVE_ULN_302),
            LayerZeroV2OzeanTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2OzeanTestnet.EXECUTOR,
            LayerZeroV2OzeanTestnet.CHAIN_ID,
            "ozean-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2PeaqTestnet.EID,
            address(LayerZeroV2PeaqTestnet.ENDPOINT_V2),
            address(LayerZeroV2PeaqTestnet.SEND_ULN_302),
            address(LayerZeroV2PeaqTestnet.RECEIVE_ULN_302),
            LayerZeroV2PeaqTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2PeaqTestnet.EXECUTOR,
            LayerZeroV2PeaqTestnet.CHAIN_ID,
            "peaq-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2PlasmaTestnet.EID,
            address(LayerZeroV2PlasmaTestnet.ENDPOINT_V2),
            address(LayerZeroV2PlasmaTestnet.SEND_ULN_302),
            address(LayerZeroV2PlasmaTestnet.RECEIVE_ULN_302),
            LayerZeroV2PlasmaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2PlasmaTestnet.EXECUTOR,
            LayerZeroV2PlasmaTestnet.CHAIN_ID,
            "plasma-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Plasma2Testnet.EID,
            address(LayerZeroV2Plasma2Testnet.ENDPOINT_V2),
            address(LayerZeroV2Plasma2Testnet.SEND_ULN_302),
            address(LayerZeroV2Plasma2Testnet.RECEIVE_ULN_302),
            LayerZeroV2Plasma2Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Plasma2Testnet.EXECUTOR,
            LayerZeroV2Plasma2Testnet.CHAIN_ID,
            "plasma2-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Plasma3Testnet.EID,
            address(LayerZeroV2Plasma3Testnet.ENDPOINT_V2),
            address(LayerZeroV2Plasma3Testnet.SEND_ULN_302),
            address(LayerZeroV2Plasma3Testnet.RECEIVE_ULN_302),
            LayerZeroV2Plasma3Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Plasma3Testnet.EXECUTOR,
            LayerZeroV2Plasma3Testnet.CHAIN_ID,
            "plasma3-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2PlumeTestnet.EID,
            address(LayerZeroV2PlumeTestnet.ENDPOINT_V2),
            address(LayerZeroV2PlumeTestnet.SEND_ULN_302),
            address(LayerZeroV2PlumeTestnet.RECEIVE_ULN_302),
            LayerZeroV2PlumeTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2PlumeTestnet.EXECUTOR,
            LayerZeroV2PlumeTestnet.CHAIN_ID,
            "plume-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Plume2Testnet.EID,
            address(LayerZeroV2Plume2Testnet.ENDPOINT_V2),
            address(LayerZeroV2Plume2Testnet.SEND_ULN_302),
            address(LayerZeroV2Plume2Testnet.RECEIVE_ULN_302),
            LayerZeroV2Plume2Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Plume2Testnet.EXECUTOR,
            LayerZeroV2Plume2Testnet.CHAIN_ID,
            "plume2-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2PolygonTestnet.EID,
            address(LayerZeroV2PolygonTestnet.ENDPOINT_V2),
            address(LayerZeroV2PolygonTestnet.SEND_ULN_302),
            address(LayerZeroV2PolygonTestnet.RECEIVE_ULN_302),
            LayerZeroV2PolygonTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2PolygonTestnet.EXECUTOR,
            LayerZeroV2PolygonTestnet.CHAIN_ID,
            "polygon-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2RaribleTestnet.EID,
            address(LayerZeroV2RaribleTestnet.ENDPOINT_V2),
            address(LayerZeroV2RaribleTestnet.SEND_ULN_302),
            address(LayerZeroV2RaribleTestnet.RECEIVE_ULN_302),
            LayerZeroV2RaribleTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2RaribleTestnet.EXECUTOR,
            LayerZeroV2RaribleTestnet.CHAIN_ID,
            "rarible-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2RaylsdevnetTestnet.EID,
            address(LayerZeroV2RaylsdevnetTestnet.ENDPOINT_V2),
            address(LayerZeroV2RaylsdevnetTestnet.SEND_ULN_302),
            address(LayerZeroV2RaylsdevnetTestnet.RECEIVE_ULN_302),
            LayerZeroV2RaylsdevnetTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2RaylsdevnetTestnet.EXECUTOR,
            LayerZeroV2RaylsdevnetTestnet.CHAIN_ID,
            "raylsdevnet-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2RedbellyTestnet.EID,
            address(LayerZeroV2RedbellyTestnet.ENDPOINT_V2),
            address(LayerZeroV2RedbellyTestnet.SEND_ULN_302),
            address(LayerZeroV2RedbellyTestnet.RECEIVE_ULN_302),
            LayerZeroV2RedbellyTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2RedbellyTestnet.EXECUTOR,
            LayerZeroV2RedbellyTestnet.CHAIN_ID,
            "redbelly-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ReyaTestnet.EID,
            address(LayerZeroV2ReyaTestnet.ENDPOINT_V2),
            address(LayerZeroV2ReyaTestnet.SEND_ULN_302),
            address(LayerZeroV2ReyaTestnet.RECEIVE_ULN_302),
            LayerZeroV2ReyaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ReyaTestnet.EXECUTOR,
            LayerZeroV2ReyaTestnet.CHAIN_ID,
            "reya-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2RiseTestnet.EID,
            address(LayerZeroV2RiseTestnet.ENDPOINT_V2),
            address(LayerZeroV2RiseTestnet.SEND_ULN_302),
            address(LayerZeroV2RiseTestnet.RECEIVE_ULN_302),
            LayerZeroV2RiseTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2RiseTestnet.EXECUTOR,
            LayerZeroV2RiseTestnet.CHAIN_ID,
            "rise-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2RootTestnet.EID,
            address(LayerZeroV2RootTestnet.ENDPOINT_V2),
            address(LayerZeroV2RootTestnet.SEND_ULN_302),
            address(LayerZeroV2RootTestnet.RECEIVE_ULN_302),
            LayerZeroV2RootTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2RootTestnet.EXECUTOR,
            LayerZeroV2RootTestnet.CHAIN_ID,
            "root-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2RootstockTestnet.EID,
            address(LayerZeroV2RootstockTestnet.ENDPOINT_V2),
            address(LayerZeroV2RootstockTestnet.SEND_ULN_302),
            address(LayerZeroV2RootstockTestnet.RECEIVE_ULN_302),
            LayerZeroV2RootstockTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2RootstockTestnet.EXECUTOR,
            LayerZeroV2RootstockTestnet.CHAIN_ID,
            "rootstock-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SagaevmTestnet.EID,
            address(LayerZeroV2SagaevmTestnet.ENDPOINT_V2),
            address(LayerZeroV2SagaevmTestnet.SEND_ULN_302),
            address(LayerZeroV2SagaevmTestnet.RECEIVE_ULN_302),
            LayerZeroV2SagaevmTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SagaevmTestnet.EXECUTOR,
            LayerZeroV2SagaevmTestnet.CHAIN_ID,
            "sagaevm-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SankoTestnet.EID,
            address(LayerZeroV2SankoTestnet.ENDPOINT_V2),
            address(LayerZeroV2SankoTestnet.SEND_ULN_302),
            address(LayerZeroV2SankoTestnet.RECEIVE_ULN_302),
            LayerZeroV2SankoTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SankoTestnet.EXECUTOR,
            LayerZeroV2SankoTestnet.CHAIN_ID,
            "sanko-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ScrollTestnet.EID,
            address(LayerZeroV2ScrollTestnet.ENDPOINT_V2),
            address(LayerZeroV2ScrollTestnet.SEND_ULN_302),
            address(LayerZeroV2ScrollTestnet.RECEIVE_ULN_302),
            LayerZeroV2ScrollTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ScrollTestnet.EXECUTOR,
            LayerZeroV2ScrollTestnet.CHAIN_ID,
            "scroll-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SeiTestnet.EID,
            address(LayerZeroV2SeiTestnet.ENDPOINT_V2),
            address(LayerZeroV2SeiTestnet.SEND_ULN_302),
            address(LayerZeroV2SeiTestnet.RECEIVE_ULN_302),
            LayerZeroV2SeiTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SeiTestnet.EXECUTOR,
            LayerZeroV2SeiTestnet.CHAIN_ID,
            "sei-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SepoliaTestnet.EID,
            address(LayerZeroV2SepoliaTestnet.ENDPOINT_V2),
            address(LayerZeroV2SepoliaTestnet.SEND_ULN_302),
            address(LayerZeroV2SepoliaTestnet.RECEIVE_ULN_302),
            LayerZeroV2SepoliaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SepoliaTestnet.EXECUTOR,
            LayerZeroV2SepoliaTestnet.CHAIN_ID,
            "sepolia-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SiliconsepoliaTestnet.EID,
            address(LayerZeroV2SiliconsepoliaTestnet.ENDPOINT_V2),
            address(LayerZeroV2SiliconsepoliaTestnet.SEND_ULN_302),
            address(LayerZeroV2SiliconsepoliaTestnet.RECEIVE_ULN_302),
            LayerZeroV2SiliconsepoliaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SiliconsepoliaTestnet.EXECUTOR,
            LayerZeroV2SiliconsepoliaTestnet.CHAIN_ID,
            "siliconsepolia-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SkaleTestnet.EID,
            address(LayerZeroV2SkaleTestnet.ENDPOINT_V2),
            address(LayerZeroV2SkaleTestnet.SEND_ULN_302),
            address(LayerZeroV2SkaleTestnet.RECEIVE_ULN_302),
            LayerZeroV2SkaleTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SkaleTestnet.EXECUTOR,
            LayerZeroV2SkaleTestnet.CHAIN_ID,
            "skale-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SomniaTestnet.EID,
            address(LayerZeroV2SomniaTestnet.ENDPOINT_V2),
            address(LayerZeroV2SomniaTestnet.SEND_ULN_302),
            address(LayerZeroV2SomniaTestnet.RECEIVE_ULN_302),
            LayerZeroV2SomniaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SomniaTestnet.EXECUTOR,
            LayerZeroV2SomniaTestnet.CHAIN_ID,
            "somnia-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SomniashannonTestnet.EID,
            address(LayerZeroV2SomniashannonTestnet.ENDPOINT_V2),
            address(LayerZeroV2SomniashannonTestnet.SEND_ULN_302),
            address(LayerZeroV2SomniashannonTestnet.RECEIVE_ULN_302),
            LayerZeroV2SomniashannonTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SomniashannonTestnet.EXECUTOR,
            LayerZeroV2SomniashannonTestnet.CHAIN_ID,
            "somniashannon-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SonicTestnet.EID,
            address(LayerZeroV2SonicTestnet.ENDPOINT_V2),
            address(LayerZeroV2SonicTestnet.SEND_ULN_302),
            address(LayerZeroV2SonicTestnet.RECEIVE_ULN_302),
            LayerZeroV2SonicTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SonicTestnet.EXECUTOR,
            LayerZeroV2SonicTestnet.CHAIN_ID,
            "sonic-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SophonTestnet.EID,
            address(LayerZeroV2SophonTestnet.ENDPOINT_V2),
            address(LayerZeroV2SophonTestnet.SEND_ULN_302),
            address(LayerZeroV2SophonTestnet.RECEIVE_ULN_302),
            LayerZeroV2SophonTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SophonTestnet.EXECUTOR,
            LayerZeroV2SophonTestnet.CHAIN_ID,
            "sophon-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SophonosTestnet.EID,
            address(LayerZeroV2SophonosTestnet.ENDPOINT_V2),
            address(LayerZeroV2SophonosTestnet.SEND_ULN_302),
            address(LayerZeroV2SophonosTestnet.RECEIVE_ULN_302),
            LayerZeroV2SophonosTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SophonosTestnet.EXECUTOR,
            LayerZeroV2SophonosTestnet.CHAIN_ID,
            "sophonos-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2StableTestnet.EID,
            address(LayerZeroV2StableTestnet.ENDPOINT_V2),
            address(LayerZeroV2StableTestnet.SEND_ULN_302),
            address(LayerZeroV2StableTestnet.RECEIVE_ULN_302),
            LayerZeroV2StableTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2StableTestnet.EXECUTOR,
            LayerZeroV2StableTestnet.CHAIN_ID,
            "stable-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2StabledevnetTestnet.EID,
            address(LayerZeroV2StabledevnetTestnet.ENDPOINT_V2),
            address(LayerZeroV2StabledevnetTestnet.SEND_ULN_302),
            address(LayerZeroV2StabledevnetTestnet.RECEIVE_ULN_302),
            LayerZeroV2StabledevnetTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2StabledevnetTestnet.EXECUTOR,
            LayerZeroV2StabledevnetTestnet.CHAIN_ID,
            "stabledevnet-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2StoryTestnet.EID,
            address(LayerZeroV2StoryTestnet.ENDPOINT_V2),
            address(LayerZeroV2StoryTestnet.SEND_ULN_302),
            address(LayerZeroV2StoryTestnet.RECEIVE_ULN_302),
            LayerZeroV2StoryTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2StoryTestnet.EXECUTOR,
            LayerZeroV2StoryTestnet.CHAIN_ID,
            "story-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SubtensorevmTestnet.EID,
            address(LayerZeroV2SubtensorevmTestnet.ENDPOINT_V2),
            address(LayerZeroV2SubtensorevmTestnet.SEND_ULN_302),
            address(LayerZeroV2SubtensorevmTestnet.RECEIVE_ULN_302),
            LayerZeroV2SubtensorevmTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SubtensorevmTestnet.EXECUTOR,
            LayerZeroV2SubtensorevmTestnet.CHAIN_ID,
            "subtensorevm-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SuperpositionTestnet.EID,
            address(LayerZeroV2SuperpositionTestnet.ENDPOINT_V2),
            address(LayerZeroV2SuperpositionTestnet.SEND_ULN_302),
            address(LayerZeroV2SuperpositionTestnet.RECEIVE_ULN_302),
            LayerZeroV2SuperpositionTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SuperpositionTestnet.EXECUTOR,
            LayerZeroV2SuperpositionTestnet.CHAIN_ID,
            "superposition-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2SwellTestnet.EID,
            address(LayerZeroV2SwellTestnet.ENDPOINT_V2),
            address(LayerZeroV2SwellTestnet.SEND_ULN_302),
            address(LayerZeroV2SwellTestnet.RECEIVE_ULN_302),
            LayerZeroV2SwellTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2SwellTestnet.EXECUTOR,
            LayerZeroV2SwellTestnet.CHAIN_ID,
            "swell-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TacspbTestnet.EID,
            address(LayerZeroV2TacspbTestnet.ENDPOINT_V2),
            address(LayerZeroV2TacspbTestnet.SEND_ULN_302),
            address(LayerZeroV2TacspbTestnet.RECEIVE_ULN_302),
            LayerZeroV2TacspbTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TacspbTestnet.EXECUTOR,
            LayerZeroV2TacspbTestnet.CHAIN_ID,
            "tacspb-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TaikoTestnet.EID,
            address(LayerZeroV2TaikoTestnet.ENDPOINT_V2),
            address(LayerZeroV2TaikoTestnet.SEND_ULN_302),
            address(LayerZeroV2TaikoTestnet.RECEIVE_ULN_302),
            LayerZeroV2TaikoTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TaikoTestnet.EXECUTOR,
            LayerZeroV2TaikoTestnet.CHAIN_ID,
            "taiko-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TelosTestnet.EID,
            address(LayerZeroV2TelosTestnet.ENDPOINT_V2),
            address(LayerZeroV2TelosTestnet.SEND_ULN_302),
            address(LayerZeroV2TelosTestnet.RECEIVE_ULN_302),
            LayerZeroV2TelosTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TelosTestnet.EXECUTOR,
            LayerZeroV2TelosTestnet.CHAIN_ID,
            "telos-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Tempodev1Testnet.EID,
            address(LayerZeroV2Tempodev1Testnet.ENDPOINT_V2),
            address(LayerZeroV2Tempodev1Testnet.SEND_ULN_302),
            address(LayerZeroV2Tempodev1Testnet.RECEIVE_ULN_302),
            LayerZeroV2Tempodev1Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Tempodev1Testnet.EXECUTOR,
            LayerZeroV2Tempodev1Testnet.CHAIN_ID,
            "tempodev1-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TenetTestnet.EID,
            address(LayerZeroV2TenetTestnet.ENDPOINT_V2),
            address(LayerZeroV2TenetTestnet.SEND_ULN_302),
            address(LayerZeroV2TenetTestnet.RECEIVE_ULN_302),
            LayerZeroV2TenetTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TenetTestnet.EXECUTOR,
            LayerZeroV2TenetTestnet.CHAIN_ID,
            "tenet-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TomoTestnet.EID,
            address(LayerZeroV2TomoTestnet.ENDPOINT_V2),
            address(LayerZeroV2TomoTestnet.SEND_ULN_302),
            address(LayerZeroV2TomoTestnet.RECEIVE_ULN_302),
            LayerZeroV2TomoTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TomoTestnet.EXECUTOR,
            LayerZeroV2TomoTestnet.CHAIN_ID,
            "tomo-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2TreasureTestnet.EID,
            address(LayerZeroV2TreasureTestnet.ENDPOINT_V2),
            address(LayerZeroV2TreasureTestnet.SEND_ULN_302),
            address(LayerZeroV2TreasureTestnet.RECEIVE_ULN_302),
            LayerZeroV2TreasureTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2TreasureTestnet.EXECUTOR,
            LayerZeroV2TreasureTestnet.CHAIN_ID,
            "treasure-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2UnichainTestnet.EID,
            address(LayerZeroV2UnichainTestnet.ENDPOINT_V2),
            address(LayerZeroV2UnichainTestnet.SEND_ULN_302),
            address(LayerZeroV2UnichainTestnet.RECEIVE_ULN_302),
            LayerZeroV2UnichainTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2UnichainTestnet.EXECUTOR,
            LayerZeroV2UnichainTestnet.CHAIN_ID,
            "unichain-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2UnrealTestnet.EID,
            address(LayerZeroV2UnrealTestnet.ENDPOINT_V2),
            address(LayerZeroV2UnrealTestnet.SEND_ULN_302),
            address(LayerZeroV2UnrealTestnet.RECEIVE_ULN_302),
            LayerZeroV2UnrealTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2UnrealTestnet.EXECUTOR,
            LayerZeroV2UnrealTestnet.CHAIN_ID,
            "unreal-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2VanarTestnet.EID,
            address(LayerZeroV2VanarTestnet.ENDPOINT_V2),
            address(LayerZeroV2VanarTestnet.SEND_ULN_302),
            address(LayerZeroV2VanarTestnet.RECEIVE_ULN_302),
            LayerZeroV2VanarTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2VanarTestnet.EXECUTOR,
            LayerZeroV2VanarTestnet.CHAIN_ID,
            "vanar-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2WorldcoinTestnet.EID,
            address(LayerZeroV2WorldcoinTestnet.ENDPOINT_V2),
            address(LayerZeroV2WorldcoinTestnet.SEND_ULN_302),
            address(LayerZeroV2WorldcoinTestnet.RECEIVE_ULN_302),
            LayerZeroV2WorldcoinTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2WorldcoinTestnet.EXECUTOR,
            LayerZeroV2WorldcoinTestnet.CHAIN_ID,
            "worldcoin-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2XaiTestnet.EID,
            address(LayerZeroV2XaiTestnet.ENDPOINT_V2),
            address(LayerZeroV2XaiTestnet.SEND_ULN_302),
            address(LayerZeroV2XaiTestnet.RECEIVE_ULN_302),
            LayerZeroV2XaiTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2XaiTestnet.EXECUTOR,
            LayerZeroV2XaiTestnet.CHAIN_ID,
            "xai-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2XchainTestnet.EID,
            address(LayerZeroV2XchainTestnet.ENDPOINT_V2),
            address(LayerZeroV2XchainTestnet.SEND_ULN_302),
            address(LayerZeroV2XchainTestnet.RECEIVE_ULN_302),
            LayerZeroV2XchainTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2XchainTestnet.EXECUTOR,
            LayerZeroV2XchainTestnet.CHAIN_ID,
            "xchain-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2XlayerTestnet.EID,
            address(LayerZeroV2XlayerTestnet.ENDPOINT_V2),
            address(LayerZeroV2XlayerTestnet.SEND_ULN_302),
            address(LayerZeroV2XlayerTestnet.RECEIVE_ULN_302),
            LayerZeroV2XlayerTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2XlayerTestnet.EXECUTOR,
            LayerZeroV2XlayerTestnet.CHAIN_ID,
            "xlayer-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2Xlayer2Testnet.EID,
            address(LayerZeroV2Xlayer2Testnet.ENDPOINT_V2),
            address(LayerZeroV2Xlayer2Testnet.SEND_ULN_302),
            address(LayerZeroV2Xlayer2Testnet.RECEIVE_ULN_302),
            LayerZeroV2Xlayer2Testnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2Xlayer2Testnet.EXECUTOR,
            LayerZeroV2Xlayer2Testnet.CHAIN_ID,
            "xlayer2-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2XplaTestnet.EID,
            address(LayerZeroV2XplaTestnet.ENDPOINT_V2),
            address(LayerZeroV2XplaTestnet.SEND_ULN_302),
            address(LayerZeroV2XplaTestnet.RECEIVE_ULN_302),
            LayerZeroV2XplaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2XplaTestnet.EXECUTOR,
            LayerZeroV2XplaTestnet.CHAIN_ID,
            "xpla-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZamaTestnet.EID,
            address(LayerZeroV2ZamaTestnet.ENDPOINT_V2),
            address(LayerZeroV2ZamaTestnet.SEND_ULN_302),
            address(LayerZeroV2ZamaTestnet.RECEIVE_ULN_302),
            LayerZeroV2ZamaTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZamaTestnet.EXECUTOR,
            LayerZeroV2ZamaTestnet.CHAIN_ID,
            "zama-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZircuitTestnet.EID,
            address(LayerZeroV2ZircuitTestnet.ENDPOINT_V2),
            address(LayerZeroV2ZircuitTestnet.SEND_ULN_302),
            address(LayerZeroV2ZircuitTestnet.RECEIVE_ULN_302),
            LayerZeroV2ZircuitTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZircuitTestnet.EXECUTOR,
            LayerZeroV2ZircuitTestnet.CHAIN_ID,
            "zircuit-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZkastarTestnet.EID,
            address(LayerZeroV2ZkastarTestnet.ENDPOINT_V2),
            address(LayerZeroV2ZkastarTestnet.SEND_ULN_302),
            address(LayerZeroV2ZkastarTestnet.RECEIVE_ULN_302),
            LayerZeroV2ZkastarTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZkastarTestnet.EXECUTOR,
            LayerZeroV2ZkastarTestnet.CHAIN_ID,
            "zkastar-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZkconsensysTestnet.EID,
            address(LayerZeroV2ZkconsensysTestnet.ENDPOINT_V2),
            address(LayerZeroV2ZkconsensysTestnet.SEND_ULN_302),
            address(LayerZeroV2ZkconsensysTestnet.RECEIVE_ULN_302),
            LayerZeroV2ZkconsensysTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZkconsensysTestnet.EXECUTOR,
            LayerZeroV2ZkconsensysTestnet.CHAIN_ID,
            "zkconsensys-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZklinkTestnet.EID,
            address(LayerZeroV2ZklinkTestnet.ENDPOINT_V2),
            address(LayerZeroV2ZklinkTestnet.SEND_ULN_302),
            address(LayerZeroV2ZklinkTestnet.RECEIVE_ULN_302),
            LayerZeroV2ZklinkTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZklinkTestnet.EXECUTOR,
            LayerZeroV2ZklinkTestnet.CHAIN_ID,
            "zklink-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZkpolygonTestnet.EID,
            address(LayerZeroV2ZkpolygonTestnet.ENDPOINT_V2),
            address(LayerZeroV2ZkpolygonTestnet.SEND_ULN_302),
            address(LayerZeroV2ZkpolygonTestnet.RECEIVE_ULN_302),
            LayerZeroV2ZkpolygonTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZkpolygonTestnet.EXECUTOR,
            LayerZeroV2ZkpolygonTestnet.CHAIN_ID,
            "zkpolygon-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZkpolygonsepTestnet.EID,
            address(LayerZeroV2ZkpolygonsepTestnet.ENDPOINT_V2),
            address(LayerZeroV2ZkpolygonsepTestnet.SEND_ULN_302),
            address(LayerZeroV2ZkpolygonsepTestnet.RECEIVE_ULN_302),
            LayerZeroV2ZkpolygonsepTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZkpolygonsepTestnet.EXECUTOR,
            LayerZeroV2ZkpolygonsepTestnet.CHAIN_ID,
            "zkpolygonsep-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZksyncsepTestnet.EID,
            address(LayerZeroV2ZksyncsepTestnet.ENDPOINT_V2),
            address(LayerZeroV2ZksyncsepTestnet.SEND_ULN_302),
            address(LayerZeroV2ZksyncsepTestnet.RECEIVE_ULN_302),
            LayerZeroV2ZksyncsepTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZksyncsepTestnet.EXECUTOR,
            LayerZeroV2ZksyncsepTestnet.CHAIN_ID,
            "zksyncsep-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZkverifyTestnet.EID,
            address(LayerZeroV2ZkverifyTestnet.ENDPOINT_V2),
            address(LayerZeroV2ZkverifyTestnet.SEND_ULN_302),
            address(LayerZeroV2ZkverifyTestnet.RECEIVE_ULN_302),
            LayerZeroV2ZkverifyTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZkverifyTestnet.EXECUTOR,
            LayerZeroV2ZkverifyTestnet.CHAIN_ID,
            "zkverify-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZoraTestnet.EID,
            address(LayerZeroV2ZoraTestnet.ENDPOINT_V2),
            address(LayerZeroV2ZoraTestnet.SEND_ULN_302),
            address(LayerZeroV2ZoraTestnet.RECEIVE_ULN_302),
            LayerZeroV2ZoraTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZoraTestnet.EXECUTOR,
            LayerZeroV2ZoraTestnet.CHAIN_ID,
            "zora-testnet",
            new string[](0)
        );
        _registerChain(
            LayerZeroV2ZorasepTestnet.EID,
            address(LayerZeroV2ZorasepTestnet.ENDPOINT_V2),
            address(LayerZeroV2ZorasepTestnet.SEND_ULN_302),
            address(LayerZeroV2ZorasepTestnet.RECEIVE_ULN_302),
            LayerZeroV2ZorasepTestnet.BLOCKED_MESSAGE_LIB,
            LayerZeroV2ZorasepTestnet.EXECUTOR,
            LayerZeroV2ZorasepTestnet.CHAIN_ID,
            "zorasep-testnet",
            new string[](0)
        );
    }

    /// @notice Register a single chain
    function _registerChain(
        uint32 eid,
        address endpoint,
        address sendUln,
        address receiveUln,
        address blockedLib,
        address executor,
        uint256 chainId,
        string memory chainName,
        string[] memory rpcUrls
    ) private {
        _protocolAddresses[eid] = ProtocolAddresses({
            endpointV2: endpoint,
            sendUln302: sendUln,
            receiveUln302: receiveUln,
            blockedMessageLib: blockedLib,
            executor: executor,
            chainId: chainId,
            chainName: chainName,
            rpcUrls: rpcUrls,
            exists: true
        });
        _registeredEids.push(eid);
        _chainNameToEid[chainName] = eid;
        _chainIdToEid[chainId] = eid;
    }

    // ============================================
    // Protocol Address Lookups
    // ============================================

    function getProtocolAddresses(uint32 eid) public view override returns (ProtocolAddresses memory) {
        ProtocolAddresses memory addresses = _protocolAddresses[eid];
        require(addresses.exists, string.concat("Chain not registered: ", vm.toString(uint256(eid))));
        return addresses;
    }

    function getProtocolAddressesByChainName(string memory chainName)
        public
        view
        override
        returns (ProtocolAddresses memory)
    {
        uint32 eid = _chainNameToEid[chainName];
        require(eid != 0 || _protocolAddresses[0].exists, string.concat("Chain name not found: ", chainName));
        return getProtocolAddresses(eid);
    }

    function getProtocolAddressesByChainId(uint256 chainId) public view override returns (ProtocolAddresses memory) {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Chain ID not found: ", vm.toString(chainId)));
        return getProtocolAddresses(eid);
    }

    // ============================================
    // Support Checks
    // ============================================

    function isEidSupported(uint32 eid) public view override returns (bool) {
        return _protocolAddresses[eid].exists;
    }

    function isChainIdSupported(uint256 chainId) public view override returns (bool) {
        return _chainIdToEid[chainId] != 0;
    }

    function isChainNameSupported(string memory chainName) public view override returns (bool) {
        uint32 eid = _chainNameToEid[chainName];
        return eid != 0 || _protocolAddresses[0].exists;
    }

    // ============================================
    // Discovery
    // ============================================

    function getSupportedEids() public view override returns (uint32[] memory) {
        return _registeredEids;
    }

    function getSupportedChainNames() public view override returns (string[] memory chainNames) {
        chainNames = new string[](_registeredEids.length);
        for (uint256 i = 0; i < _registeredEids.length; i++) {
            chainNames[i] = _protocolAddresses[_registeredEids[i]].chainName;
        }
    }

    // ============================================
    // EID Conversions
    // ============================================

    function getEidByChainName(string memory chainName) public view override returns (uint32) {
        uint32 eid = _chainNameToEid[chainName];
        require(eid != 0 || _protocolAddresses[0].exists, string.concat("Chain name not found: ", chainName));
        return eid;
    }

    function getEidByChainId(uint256 chainId) public view override returns (uint32) {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Chain ID not found: ", vm.toString(chainId)));
        return eid;
    }

    // ============================================
    // Chain Name Lookups
    // ============================================

    function getChainNameByEid(uint32 eid) public view override returns (string memory chainName) {
        ProtocolAddresses memory addresses = _protocolAddresses[eid];
        require(addresses.exists, string.concat("Chain not registered: ", vm.toString(uint256(eid))));
        return addresses.chainName;
    }

    function getChainNameByChainId(uint256 chainId) public view override returns (string memory chainName) {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Chain ID not found: ", vm.toString(chainId)));
        return _protocolAddresses[eid].chainName;
    }

    // ============================================
    // Full Deployment Info
    // ============================================

    function getFullDeploymentInfo(uint32 eid) public view override returns (FullDeploymentInfo memory info) {
        ProtocolAddresses memory base = getProtocolAddresses(eid);

        (string[] memory dvnNames, address[] memory dvnAddrs) = workers.getDVNsForEid(eid);

        info = FullDeploymentInfo({
            eid: eid,
            chainId: base.chainId,
            chainName: base.chainName,
            rpcUrls: base.rpcUrls,
            endpointV2: base.endpointV2,
            sendUln302: base.sendUln302,
            receiveUln302: base.receiveUln302,
            blockedMessageLib: base.blockedMessageLib,
            executor: base.executor,
            allDVNs: dvnAddrs,
            allDVNNames: dvnNames,
            exists: base.exists
        });
    }

    function getFullDeploymentInfoByChainName(string memory chainName)
        public
        view
        override
        returns (FullDeploymentInfo memory info)
    {
        uint32 eid = _chainNameToEid[chainName];
        require(eid != 0 || _protocolAddresses[0].exists, string.concat("Chain name not found: ", chainName));
        return getFullDeploymentInfo(eid);
    }

    function getFullDeploymentInfoByChainId(uint256 chainId)
        public
        view
        override
        returns (FullDeploymentInfo memory info)
    {
        uint32 eid = _chainIdToEid[chainId];
        require(eid != 0, string.concat("Chain ID not found: ", vm.toString(chainId)));
        return getFullDeploymentInfo(eid);
    }

    // ============================================
    // Pathway Info
    // ============================================

    function getPathwayInfo(string memory srcChain, string memory dstChain)
        public
        view
        override
        returns (PathwayInfo memory info)
    {
        info.source = getFullDeploymentInfoByChainName(srcChain);
        info.destination = getFullDeploymentInfoByChainName(dstChain);
        info.connected = info.source.exists && info.destination.exists;
    }

    function getPathwayInfoByEid(uint32 srcEid, uint32 dstEid) public view override returns (PathwayInfo memory info) {
        info.source = getFullDeploymentInfo(srcEid);
        info.destination = getFullDeploymentInfo(dstEid);
        info.connected = info.source.exists && info.destination.exists;
    }
}
