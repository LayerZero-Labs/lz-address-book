// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "../helpers/interfaces/ISTGProtocol.sol";
import {Vm} from "forge-std/Vm.sol";

/// @title Stargate Protocol Address Provider
/// @notice Provides Stargate pool and OFT addresses from the generated address book
/// @dev All Stargate contracts implement the IOFT interface
contract STGProtocol is ISTGProtocol {
    // Forge VM for string conversion
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    // Storage for assets: chainName => symbol => StargateAsset
    mapping(string => mapping(string => StargateAsset)) private _assets;

    // Track symbols per chain for enumeration
    mapping(string => string[]) private _symbolsByChain;

    // Track all unique symbols
    string[] private _allSymbols;
    mapping(string => bool) private _symbolExists;

    // Token messaging per chain
    mapping(string => address) private _tokenMessaging;

    // Track supported chains
    string[] private _supportedChains;
    mapping(string => bool) private _chainSupported;

    // EID to Stargate chain name mapping
    mapping(uint32 => string) private _eidToChainName;

    // Chain ID to Stargate chain name mapping
    mapping(uint256 => string) private _chainIdToChainName;

    constructor() {
        _registerAllAssets();
        _registerChainMappings();
    }

    function _registerAllAssets() private {
        // abstract-mainnet (Stargate: abstract)
        _tokenMessaging["abstract-mainnet"] = 0x183D6b82680189bB4dB826F739CdC9527D467B25;
        _registerChain("abstract-mainnet");
        _registerAsset(
            "abstract-mainnet",
            "USDC.e",
            0x91a5Fe991ccB876d22847967CEd24dCd7A426e0E,
            0x84A71ccD554Cc1b02749b35d22F684CC8ec987e1,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "abstract-mainnet",
            "USDT",
            0x943C484278b8bE05D119DfC73CfAa4c9D8f11A76,
            0x0709F39376dEEe2A2dfC94A58EdEb2Eb9DF012bD,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "abstract-mainnet",
            "ETH",
            0x221F0E1280Ec657503ca55c708105F1e1529527D,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // ape-mainnet (Stargate: ape)
        _tokenMessaging["ape-mainnet"] = 0xBE574b6219C6D985d08712e90C21A88fd55f1ae8;
        _registerChain("ape-mainnet");
        _registerAsset(
            "ape-mainnet",
            "USDC.e",
            0x2086f755A6d9254045C257ea3d382ef854849B0f,
            0xF1815bd50389c46847f0Bda824eC8da914045D14,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "ape-mainnet",
            "USDT",
            0xEb8d955d8Ae221E5b502851ddd78E6C4498dB4f6,
            0x674843C06FF83502ddb4D37c2E09C01cdA38cbc8,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "ape-mainnet",
            "WETH",
            0x28E0f0eed8d6A6a96033feEe8b2D7F32EB5CCc48,
            0xf4D9235269a96aaDaFc9aDAe454a0618eBE37949,
            18,
            6,
            StargateType.OFT
        );

        // apexfusionnexus-mainnet (Stargate: apexfusionnexus)
        _tokenMessaging["apexfusionnexus-mainnet"] = 0x783129E4d7bA0Af0C896c239E57C06DF379aAE8c;
        _registerChain("apexfusionnexus-mainnet");
        _registerAsset(
            "apexfusionnexus-mainnet",
            "USDC.e",
            0x60219C44E146BAf36002eA73767820238Ebc1db6,
            0x8a2B28364102Bea189D99A475C494330Ef2bDD0B,
            6,
            6,
            StargateType.OFT
        );

        // arbitrum-mainnet (Stargate: arbitrum)
        _tokenMessaging["arbitrum-mainnet"] = 0x19cFCE47eD54a88614648DC3f19A5980097007dD;
        _registerChain("arbitrum-mainnet");
        _registerAsset(
            "arbitrum-mainnet",
            "USDC",
            0xe8CDF27AcD73a434D661C84887215F7598e7d0d3,
            0xaf88d065e77c8cC2239327C5EDb3A432268e5831,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "arbitrum-mainnet",
            "USD_0",
            0xcE8CcA271Ebc0533920C83d39F417ED6A0abB7D0,
            0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "arbitrum-mainnet",
            "ETH",
            0xA45B5130f36CDcA45667738e2a258AB09f4A5f7F,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // arbitrum-sepolia (Stargate: arbitrum-sepolia)
        _tokenMessaging["arbitrum-sepolia"] = 0x657C13E8668B4eD33e524E3F8BD8559667E3Eb9b;
        _registerChain("arbitrum-sepolia");
        _registerAsset(
            "arbitrum-sepolia",
            "USDC",
            0x543BdA7c6cA4384FE90B1F5929bb851F52888983,
            0x3253a335E7bFfB4790Aa4C25C4250d206E9b9773,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "arbitrum-sepolia",
            "USDT",
            0xB956d6FDFB235636DE7885C5166756823bb27e3a,
            0x095f40616FA98Ff75D1a7D0c68685c5ef806f110,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "arbitrum-sepolia",
            "ETH",
            0x6fddB6270F6c71f31B62AE0260cfa8E2e2d186E0,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // aurora-mainnet (Stargate: aurora)
        _tokenMessaging["aurora-mainnet"] = 0x5f688F563Dc16590e570f97b542FA87931AF2feD;
        _registerChain("aurora-mainnet");
        _registerAsset(
            "aurora-mainnet",
            "USDC",
            0x81F6138153d473E8c5EcebD3DC8Cd4903506B075,
            0x368EBb46ACa6b8D0787C96B2b20bD3CC3F2c45F7,
            6,
            6,
            StargateType.POOL
        );

        // avalanche-mainnet (Stargate: avalanche)
        _tokenMessaging["avalanche-mainnet"] = 0x17E450Be3Ba9557F2378E20d64AD417E59Ef9A34;
        _registerChain("avalanche-mainnet");
        _registerAsset(
            "avalanche-mainnet",
            "USDC",
            0x5634c4a5FEd09819E3c46D86A965Dd9447d86e47,
            0xB97EF9Ef8734C71904D8002F8b6Bc66Dd9c48a6E,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "avalanche-mainnet",
            "USDt",
            0x12dC9256Acc9895B076f6638D628382881e62CeE,
            0x9702230A8Ea53601f5cD2dc00fDBc13d4dF4A8c7,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "avalanche-mainnet",
            "EURC",
            0x0cEb237E109eE22374a567c6b09F373C73FA4cBb,
            0xC891EB4cbdEFf6e073e859e987815Ed1505c2ACD,
            6,
            6,
            StargateType.POOL
        );

        // base-mainnet (Stargate: base)
        _tokenMessaging["base-mainnet"] = 0x5634c4a5FEd09819E3c46D86A965Dd9447d86e47;
        _registerChain("base-mainnet");
        _registerAsset(
            "base-mainnet",
            "USDC",
            0x27a16dc786820B16E5c9028b75B99F6f604b5d26,
            0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "base-mainnet",
            "ETH",
            0xdc181Bd607330aeeBEF6ea62e03e5e1Fb4B6F7C7,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "base-mainnet",
            "EURC",
            0x87Dd5A7481726a53C5Ac6b0D296F5846f95a72f2,
            0x60a3E35Cc302bFA44Cb288Bc5a4F316Fdb1adb42,
            6,
            6,
            StargateType.POOL
        );

        // bera-mainnet (Stargate: bera)
        _tokenMessaging["bera-mainnet"] = 0xAf5191B0De278C7286d6C7CC6ab6BB8A73bA2Cd6;
        _registerChain("bera-mainnet");
        _registerAsset(
            "bera-mainnet",
            "USDC.e",
            0xAF54BE5B6eEc24d6BFACf1cce4eaF680A8239398,
            0x549943e04f40284185054145c6E4e9568C1D3241,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "bera-mainnet",
            "WETH",
            0x45f1A95A4D3f3836523F5c83673c797f4d4d263B,
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            18,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "bera-mainnet",
            "EURC.e",
            0x28BEc7E30E6faee657a03e19Bf1128AaD7632A00,
            0x12a272A581feE5577A5dFa371afEB4b2F3a8C2F8,
            6,
            6,
            StargateType.OFT
        );

        // botanix-mainnet (Stargate: botanix)
        _tokenMessaging["botanix-mainnet"] = 0x3a1e3062414165A15D4cAE4a6CBFF6D83F60BE55;
        _registerChain("botanix-mainnet");
        _registerAsset(
            "botanix-mainnet",
            "USDC.e",
            0xf785a6BcC6a2d5522D27A1FD11099A84e3710Bb2,
            0x29eE6138DD4C9815f46D34a4A1ed48F46758A402,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "botanix-mainnet",
            "WETH",
            0x5e37084162504da9AAa8F441D5F9360d1fe9aD40,
            0x3292c42e8E9Ab3C6a12CFdA556BbCB6f113B1E28,
            18,
            6,
            StargateType.OFT
        );

        // bsc-mainnet (Stargate: bsc)
        _tokenMessaging["bsc-mainnet"] = 0x6E3d884C96d640526F273C61dfcF08915eBd7e2B;
        _registerChain("bsc-mainnet");
        _registerAsset(
            "bsc-mainnet",
            "USDC",
            0x962Bd449E630b0d928f308Ce63f1A21F02576057,
            0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d,
            18,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "bsc-mainnet",
            "USDT",
            0x138EB30f73BC423c6455C53df6D89CB01d9eBc63,
            0x55d398326f99059fF775485246999027B3197955,
            18,
            6,
            StargateType.POOL
        );

        // bsc-testnet (Stargate: bsc-testnet)
        _tokenMessaging["bsc-testnet"] = 0xe19525580913971d220dBa3BbD01eE2A0b1adc6F;
        _registerChain("bsc-testnet");
        _registerAsset(
            "bsc-testnet",
            "USDT",
            0xf1b69ee3097c6E8CC6487B7667dB818FeDC7b1a9,
            0xe37Bdc6F09DAB6ce6E4eBC4d2E72792994Ef3765,
            6,
            6,
            StargateType.POOL
        );

        // camp-mainnet (Stargate: camp)
        _tokenMessaging["camp-mainnet"] = 0x31EEf89D5215C305304a2fA5376a1f1b6C5dc477;
        _registerChain("camp-mainnet");
        _registerAsset(
            "camp-mainnet",
            "USDC.e",
            0x0829F361A05D993d5CEb035cA6DF3446b060970b,
            0x8a2B28364102Bea189D99A475C494330Ef2bDD0B,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "camp-mainnet",
            "WETH",
            0x783129E4d7bA0Af0C896c239E57C06DF379aAE8c,
            0x60219C44E146BAf36002eA73767820238Ebc1db6,
            18,
            6,
            StargateType.OFT
        );

        // coredao-mainnet (Stargate: coredao)
        _tokenMessaging["coredao-mainnet"] = 0xAF54BE5B6eEc24d6BFACf1cce4eaF680A8239398;
        _registerChain("coredao-mainnet");
        _registerAsset(
            "coredao-mainnet",
            "USDC",
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            0xa4151B2B3e269645181dCcF2D426cE75fcbDeca9,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "coredao-mainnet",
            "USDT",
            0x45f1A95A4D3f3836523F5c83673c797f4d4d263B,
            0x900101d06A7426441Ae63e9AB3B9b0F63Be145F1,
            6,
            6,
            StargateType.POOL
        );

        // cronosevm-mainnet (Stargate: cronosevm)
        _tokenMessaging["cronosevm-mainnet"] = 0x52926c0B4ecE39FEAA572927BAA42aceFD64c56D;
        _registerChain("cronosevm-mainnet");
        _registerAsset(
            "cronosevm-mainnet",
            "USDC.e",
            0x57687Bd10D3c2889BB112B36d0AFbfAa0686f7fa,
            0xf951eC28187D9E5Ca673Da8FE6757E6f0Be5F77C,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "cronosevm-mainnet",
            "WETH",
            0x816f6e3CB269712Eb199f146Db7c3Fb590ae6af2,
            0xf44acfdC916898449E39062934C2b496799B6abe,
            18,
            6,
            StargateType.OFT
        );

        // degen-mainnet (Stargate: degen)
        _tokenMessaging["degen-mainnet"] = 0x45A01E4e04F14f7A4a6702c74187c5F6222033cd;
        _registerChain("degen-mainnet");
        _registerAsset(
            "degen-mainnet",
            "USDC",
            0xAF54BE5B6eEc24d6BFACf1cce4eaF680A8239398,
            0xF1815bd50389c46847f0Bda824eC8da914045D14,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "degen-mainnet",
            "aUSD_",
            0xAf5191B0De278C7286d6C7CC6ab6BB8A73bA2Cd6,
            0x674843C06FF83502ddb4D37c2E09C01cdA38cbc8,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "degen-mainnet",
            "WETH",
            0x45f1A95A4D3f3836523F5c83673c797f4d4d263B,
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            18,
            6,
            StargateType.OFT
        );

        // doma-mainnet (Stargate: doma)
        _tokenMessaging["doma-mainnet"] = 0x108f4c02C9fcDF862e5f5131054c50f13703f916;
        _registerChain("doma-mainnet");
        _registerAsset(
            "doma-mainnet",
            "USDC.e",
            0xcdA5b77E2E2268D9E09c874c1b9A4c3F07b37555,
            0x31EEf89D5215C305304a2fA5376a1f1b6C5dc477,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "doma-mainnet",
            "ETH",
            0x5d46805BBFAcA875a96Ebbd22Aaa3DE4A81180f5,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // edu-mainnet (Stargate: edu)
        _tokenMessaging["edu-mainnet"] = 0x87Dd5A7481726a53C5Ac6b0D296F5846f95a72f2;
        _registerChain("edu-mainnet");
        _registerAsset(
            "edu-mainnet",
            "USDC.e",
            0x28BEc7E30E6faee657a03e19Bf1128AaD7632A00,
            0x12a272A581feE5577A5dFa371afEB4b2F3a8C2F8,
            6,
            6,
            StargateType.OFT
        );

        // ethereum-mainnet (Stargate: ethereum)
        _tokenMessaging["ethereum-mainnet"] = 0x6d6620eFa72948C5f68A3C8646d58C00d3f4A980;
        _registerChain("ethereum-mainnet");
        _registerAsset(
            "ethereum-mainnet",
            "USDC",
            0xc026395860Db2d07ee33e05fE50ed7bD583189C7,
            0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "ethereum-mainnet",
            "USDT",
            0x933597a323Eb81cAe705C5bC29985172fd5A3973,
            0xdAC17F958D2ee523a2206206994597C13D831ec7,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "ethereum-mainnet",
            "ETH",
            0x77b2043768d28E9C9aB44E1aBfC95944bcE57931,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "ethereum-mainnet",
            "Metis",
            0xcDafB1b2dB43f366E48e6F614b8DCCBFeeFEEcD3,
            0x9E32b13ce7f2E80A01932B42553652E053D6ed8e,
            18,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "ethereum-mainnet",
            "mETH",
            0x268Ca24DAefF1FaC2ed883c598200CcbB79E931D,
            0xd5F7838F5C461fefF7FE49ea5ebaF7728bB0ADfa,
            18,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "ethereum-mainnet",
            "EURC",
            0x783129E4d7bA0Af0C896c239E57C06DF379aAE8c,
            0x1aBaEA1f7C830bD89Acc67eC4af516284b1bC33c,
            6,
            6,
            StargateType.POOL
        );

        // flare-mainnet (Stargate: flare)
        _tokenMessaging["flare-mainnet"] = 0x45d417612e177672958dC0537C45a8f8d754Ac2E;
        _registerChain("flare-mainnet");
        _registerAsset(
            "flare-mainnet",
            "USDC.e",
            0x77C71633C34C3784ede189d74223122422492a0f,
            0xFbDa5F676cB37624f28265A144A48B0d6e87d3b6,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "flare-mainnet",
            "USDT",
            0x1C10CC06DC6D35970d1D53B2A23c76ef370d4135,
            0x0B38e83B86d491735fEaa0a791F65c2B99535396,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "flare-mainnet",
            "WETH",
            0x8e8539e4CcD69123c623a106773F2b0cbbc58746,
            0x1502FA4be69d526124D453619276FacCab275d3D,
            18,
            6,
            StargateType.OFT
        );

        // flow-mainnet (Stargate: flow)
        _tokenMessaging["flow-mainnet"] = 0x45A01E4e04F14f7A4a6702c74187c5F6222033cd;
        _registerChain("flow-mainnet");
        _registerAsset(
            "flow-mainnet",
            "stgUSDC",
            0xAF54BE5B6eEc24d6BFACf1cce4eaF680A8239398,
            0xF1815bd50389c46847f0Bda824eC8da914045D14,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "flow-mainnet",
            "USDT",
            0xAf5191B0De278C7286d6C7CC6ab6BB8A73bA2Cd6,
            0x674843C06FF83502ddb4D37c2E09C01cdA38cbc8,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "flow-mainnet",
            "WETH",
            0x45f1A95A4D3f3836523F5c83673c797f4d4d263B,
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            18,
            6,
            StargateType.OFT
        );

        // fuse-mainnet (Stargate: fuse)
        _tokenMessaging["fuse-mainnet"] = 0x45A01E4e04F14f7A4a6702c74187c5F6222033cd;
        _registerChain("fuse-mainnet");
        _registerAsset(
            "fuse-mainnet",
            "USDC.e",
            0xAF54BE5B6eEc24d6BFACf1cce4eaF680A8239398,
            0xc6Bc407706B7140EE8Eef2f86F9504651b63e7f9,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "fuse-mainnet",
            "USDT",
            0xAf5191B0De278C7286d6C7CC6ab6BB8A73bA2Cd6,
            0x3695Dd1D1D43B794C0B13eb8be8419Eb3ac22bf7,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "fuse-mainnet",
            "WETH",
            0x45f1A95A4D3f3836523F5c83673c797f4d4d263B,
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            18,
            6,
            StargateType.OFT
        );

        // gatelayer-mainnet (Stargate: gatelayer)
        _tokenMessaging["gatelayer-mainnet"] = 0x31EEf89D5215C305304a2fA5376a1f1b6C5dc477;
        _registerChain("gatelayer-mainnet");
        _registerAsset(
            "gatelayer-mainnet",
            "USDC.e",
            0x0829F361A05D993d5CEb035cA6DF3446b060970b,
            0x8a2B28364102Bea189D99A475C494330Ef2bDD0B,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "gatelayer-mainnet",
            "WETH",
            0x783129E4d7bA0Af0C896c239E57C06DF379aAE8c,
            0x60219C44E146BAf36002eA73767820238Ebc1db6,
            18,
            6,
            StargateType.OFT
        );

        // glue-mainnet (Stargate: glue)
        _tokenMessaging["glue-mainnet"] = 0x45A01E4e04F14f7A4a6702c74187c5F6222033cd;
        _registerChain("glue-mainnet");
        _registerAsset(
            "glue-mainnet",
            "USDC.e",
            0xAF54BE5B6eEc24d6BFACf1cce4eaF680A8239398,
            0xEe45ed3f6c675F319BB9de62991C1E78B484e0B8,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "glue-mainnet",
            "USDT",
            0xAf5191B0De278C7286d6C7CC6ab6BB8A73bA2Cd6,
            0xE1AD845D93853fff44990aE0DcecD8575293681e,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "glue-mainnet",
            "WETH",
            0x45f1A95A4D3f3836523F5c83673c797f4d4d263B,
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            18,
            6,
            StargateType.OFT
        );

        // gnosis-mainnet (Stargate: gnosis)
        _tokenMessaging["gnosis-mainnet"] = 0xAf368c91793CB22739386DFCbBb2F1A9e4bCBeBf;
        _registerChain("gnosis-mainnet");
        _registerAsset(
            "gnosis-mainnet",
            "USDC.e",
            0xB1EeAD6959cb5bB9B20417d6689922523B2B86C3,
            0x2a22f9c3b484c3629090FeED35F17Ff8F88f76F0,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "gnosis-mainnet",
            "WETH",
            0xe9aBA835f813ca05E50A6C0ce65D0D74390F7dE7,
            0x6A023CCd1ff6F2045C3309768eAd9E68F978f6e1,
            18,
            6,
            StargateType.POOL
        );

        // goat-mainnet (Stargate: goat)
        _tokenMessaging["goat-mainnet"] = 0xB0B2391a32E066FDf354ef7f4199300f920789F0;
        _registerChain("goat-mainnet");
        _registerAsset(
            "goat-mainnet",
            "USDC.e",
            0xbbA60da06c2c5424f03f7434542280FCAd453d10,
            0x3022b87ac063DE95b1570F46f5e470F8B53112D8,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "goat-mainnet",
            "USDT",
            0x549943e04f40284185054145c6E4e9568C1D3241,
            0xE1AD845D93853fff44990aE0DcecD8575293681e,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "goat-mainnet",
            "WETH",
            0x88853D410299BCBfE5fCC9Eef93c03115E908279,
            0x3a1293Bdb83bBbDd5Ebf4fAc96605aD2021BbC0f,
            18,
            6,
            StargateType.OFT
        );

        // gravity-mainnet (Stargate: gravity)
        _tokenMessaging["gravity-mainnet"] = 0x9c2dc7377717603eB92b2655c5f2E7997a4945BD;
        _registerChain("gravity-mainnet");
        _registerAsset(
            "gravity-mainnet",
            "USDC.e",
            0xC1B8045A6ef2934Cf0f78B0dbD489969Fa9Be7E4,
            0xFbDa5F676cB37624f28265A144A48B0d6e87d3b6,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "gravity-mainnet",
            "USDT",
            0x0B38e83B86d491735fEaa0a791F65c2B99535396,
            0x816E810f9F787d669FB71932DeabF6c83781Cd48,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "gravity-mainnet",
            "WETH",
            0x17d65bF79E77B6Ab21d8a0afed3bC8657d8Ee0B2,
            0xf6f832466Cd6C21967E0D954109403f36Bc8ceaA,
            18,
            6,
            StargateType.OFT
        );

        // hedera-mainnet (Stargate: hedera)
        _tokenMessaging["hedera-mainnet"] = 0x8a2B28364102Bea189D99A475C494330Ef2bDD0B;
        _registerChain("hedera-mainnet");
        _registerAsset(
            "hedera-mainnet",
            "WETH",
            0xda6087E69C51E7D31b6DBAD276a3c44703DFdCAd,
            0xCa367694CDaC8f152e33683BB36CC9d6A73F1ef2,
            18,
            6,
            StargateType.OFT
        );

        // hemi-mainnet (Stargate: hemi)
        _tokenMessaging["hemi-mainnet"] = 0xAf5191B0De278C7286d6C7CC6ab6BB8A73bA2Cd6;
        _registerChain("hemi-mainnet");
        _registerAsset(
            "hemi-mainnet",
            "USDC.e",
            0x45f1A95A4D3f3836523F5c83673c797f4d4d263B,
            0xad11a8BEb98bbf61dbb1aa0F6d6F2ECD87b35afA,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "hemi-mainnet",
            "USDT",
            0xAF54BE5B6eEc24d6BFACf1cce4eaF680A8239398,
            0xbB0D083fb1be0A9f6157ec484b6C79E0A4e31C2e,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "hemi-mainnet",
            "ETH",
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // ink-mainnet (Stargate: ink)
        _tokenMessaging["ink-mainnet"] = 0x45f1A95A4D3f3836523F5c83673c797f4d4d263B;
        _registerChain("ink-mainnet");
        _registerAsset(
            "ink-mainnet",
            "USDC.e",
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            0xF1815bd50389c46847f0Bda824eC8da914045D14,
            6,
            6,
            StargateType.OFT
        );

        // iota-mainnet (Stargate: iota)
        _tokenMessaging["iota-mainnet"] = 0x1C10CC06DC6D35970d1D53B2A23c76ef370d4135;
        _registerChain("iota-mainnet");
        _registerAsset(
            "iota-mainnet",
            "USDC.e",
            0x8e8539e4CcD69123c623a106773F2b0cbbc58746,
            0xFbDa5F676cB37624f28265A144A48B0d6e87d3b6,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "iota-mainnet",
            "USDT",
            0x77C71633C34C3784ede189d74223122422492a0f,
            0xC1B8045A6ef2934Cf0f78B0dbD489969Fa9Be7E4,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "iota-mainnet",
            "WETH",
            0x9c2dc7377717603eB92b2655c5f2E7997a4945BD,
            0x160345fC359604fC6e70E3c5fAcbdE5F7A9342d8,
            18,
            6,
            StargateType.OFT
        );

        // islander-mainnet (Stargate: islander)
        _tokenMessaging["islander-mainnet"] = 0x808d7c71ad2ba3FA531b068a2417C63106BC0949;
        _registerChain("islander-mainnet");
        _registerAsset(
            "islander-mainnet",
            "USDC.e",
            0x45A01E4e04F14f7A4a6702c74187c5F6222033cd,
            0xF1815bd50389c46847f0Bda824eC8da914045D14,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "islander-mainnet",
            "USDT",
            0xF2c0e57f48276112a596e141817D93bE472Ed6c5,
            0x88853D410299BCBfE5fCC9Eef93c03115E908279,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "islander-mainnet",
            "WETH",
            0xAf5191B0De278C7286d6C7CC6ab6BB8A73bA2Cd6,
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            18,
            6,
            StargateType.OFT
        );

        // kava-mainnet (Stargate: kava)
        _tokenMessaging["kava-mainnet"] = 0x6B73D3cBbb278Ce2E8698E983AecCdD94Dc4594B;
        _registerChain("kava-mainnet");
        _registerAsset(
            "kava-mainnet",
            "USDt",
            0x41A5b0470D96656Fb3e8f68A218b39AdBca3420b,
            0x919C1c267BC06a7039e03fcc2eF738525769109c,
            6,
            6,
            StargateType.POOL
        );

        // klaytn-baobab (Stargate: klaytn-baobab)
        _tokenMessaging["klaytn-baobab"] = 0xdc443e1B760B1E3d2582a613a0Bc3608eBCc71Df;
        _registerChain("klaytn-baobab");
        _registerAsset(
            "klaytn-baobab",
            "USDC.e",
            0xf626Acea3FfBe6228149A651Aa8a8DF0c0e7A575,
            0x313D71942d034F4a3200B6e4670AAcDcC7d13635,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "klaytn-baobab",
            "USDT",
            0x77A5eBAA6862E5026a12BFA5695dF4057865D6ED,
            0x37828b4b770DBca27c9C99b7f516A587651eC5DC,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "klaytn-baobab",
            "WETH",
            0x6312184c0cbe3D032daD2F2085b0e340B84F8b3B,
            0x653DbE336414A7C83e6Fbc89762Bb73eafaD2Bd3,
            18,
            6,
            StargateType.OFT
        );

        // klaytn-mainnet (Stargate: klaytn)
        _tokenMessaging["klaytn-mainnet"] = 0x16F3F98D82d965988E6853681fD578F4d719A1c0;
        _registerChain("klaytn-mainnet");
        _registerAsset(
            "klaytn-mainnet",
            "USDC.e",
            0x01A7c805cc47AbDB254CD8AaD29dE5e447F59224,
            0xE2053BCf56D2030d2470Fb454574237cF9ee3D4B,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "klaytn-mainnet",
            "USDT",
            0x8619bA1B324e099CB2227060c4BC5bDEe14456c6,
            0x9025095263d1E548dc890A7589A4C78038aC40ab,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "klaytn-mainnet",
            "WETH",
            0xBB4957E44401a31ED81Cab33539d9e8993FA13Ce,
            0x55Acee547DF909CF844e32DD66eE55a6F81dC71b,
            18,
            6,
            StargateType.OFT
        );

        // lightlink-mainnet (Stargate: lightlink)
        _tokenMessaging["lightlink-mainnet"] = 0x693604E757AC7e2c4A8263594A18d69c35562341;
        _registerChain("lightlink-mainnet");
        _registerAsset(
            "lightlink-mainnet",
            "USDC.e",
            0x8EE21165Ecb7562BA716c9549C1dE751282b9B33,
            0xbCF8C1B03bBDDA88D579330BDF236B58F8bb2cFd,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "lightlink-mainnet",
            "USDT",
            0x06D538690AF257Da524f25D0CD52fD85b1c2173E,
            0x808d7c71ad2ba3FA531b068a2417C63106BC0949,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "lightlink-mainnet",
            "ETH",
            0x8731d54E9D02c286767d56ac03e8037C07e01e98,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // linea (Stargate: linea)
        _tokenMessaging["linea"] = 0x5f688F563Dc16590e570f97b542FA87931AF2feD;
        _registerChain("linea");
        _registerAsset(
            "linea",
            "ETH",
            0x81F6138153d473E8c5EcebD3DC8Cd4903506B075,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // manta-mainnet (Stargate: manta)
        _tokenMessaging["manta-mainnet"] = 0x0cEb237E109eE22374a567c6b09F373C73FA4cBb;
        _registerChain("manta-mainnet");
        _registerAsset(
            "manta-mainnet",
            "ETH",
            0x9895D81bB462A195b4922ED7De0e3ACD007c32CB,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // mantle-mainnet (Stargate: mantle)
        _tokenMessaging["mantle-mainnet"] = 0x41B491285A4f888F9f636cEc8a363AB9770a0AEF;
        _registerChain("mantle-mainnet");
        _registerAsset(
            "mantle-mainnet",
            "USDC",
            0xAc290Ad4e0c891FDc295ca4F0a6214cf6dC6acDC,
            0x09Bc4E0D864854c6aFB6eB9A9cdF58aC190D0dF9,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "mantle-mainnet",
            "USDT",
            0xB715B85682B731dB9D5063187C450095c91C57FC,
            0x201EBa5CC46D216Ce6DC03F6a759e8E766e956aE,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "mantle-mainnet",
            "WETH",
            0x4c1d3Fc3fC3c177c3b633427c2F769276c547463,
            0xdEAddEaDdeadDEadDEADDEAddEADDEAddead1111,
            18,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "mantle-mainnet",
            "mETH",
            0xF7628d84a2BbD9bb9c8E686AC95BB5d55169F3F1,
            0xcDA86A272531e8640cD7F1a92c01839911B90bb0,
            18,
            6,
            StargateType.POOL
        );

        // mantle-sepolia (Stargate: mantle-sepolia)
        _tokenMessaging["mantle-sepolia"] = 0xF1815bd50389c46847f0Bda824eC8da914045D14;
        _registerChain("mantle-sepolia");
        _registerAsset(
            "mantle-sepolia",
            "USDC",
            0x6D205337F45D6850c3c3006e28d5b52c8a432c35,
            0xAcab8129E2cE587fD203FD770ec9ECAFA2C88080,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "mantle-sepolia",
            "USDT",
            0xd9492653457A69E9f4987DB43D7fa0112E620Cb4,
            0xcC4Ac915857532ADa58D69493554C6d869932Fe6,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "mantle-sepolia",
            "WETH",
            0xE1AD845D93853fff44990aE0DcecD8575293681e,
            0xdEAddEaDdeadDEadDEADDEAddEADDEAddead1111,
            18,
            6,
            StargateType.POOL
        );

        // metis-mainnet (Stargate: metis)
        _tokenMessaging["metis-mainnet"] = 0xcbE78230CcA58b9EF4c3c5D1bC0D7E4b3206588a;
        _registerChain("metis-mainnet");
        _registerAsset(
            "metis-mainnet",
            "m.USDT",
            0x4dCBFC0249e8d5032F89D6461218a9D2eFff5125,
            0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "metis-mainnet",
            "WETH",
            0x36ed193dc7160D3858EC250e69D12B03Ca087D08,
            0x420000000000000000000000000000000000000A,
            18,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "metis-mainnet",
            "Metis",
            0xD9050e7043102a0391F81462a3916326F86331F0,
            0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000,
            18,
            6,
            StargateType.POOL
        );

        // nibiru-mainnet (Stargate: nibiru)
        _tokenMessaging["nibiru-mainnet"] = 0x08C49257767c1f92634A9cDbF0663Af0356a472A;
        _registerChain("nibiru-mainnet");
        _registerAsset(
            "nibiru-mainnet",
            "USDC.e",
            0x12a272A581feE5577A5dFa371afEB4b2F3a8C2F8,
            0x0829F361A05D993d5CEb035cA6DF3446b060970b,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "nibiru-mainnet",
            "USDT",
            0xC16977205c53Cd854136031BD2128F75D6ff63C9,
            0x43F2376D5D03553aE72F4A8093bbe9de4336EB08,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "nibiru-mainnet",
            "WETH",
            0x108f4c02C9fcDF862e5f5131054c50f13703f916,
            0xcdA5b77E2E2268D9E09c874c1b9A4c3F07b37555,
            18,
            6,
            StargateType.OFT
        );

        // og-mainnet (Stargate: og)
        _tokenMessaging["og-mainnet"] = 0x108f4c02C9fcDF862e5f5131054c50f13703f916;
        _registerChain("og-mainnet");
        _registerAsset(
            "og-mainnet",
            "USDC.e",
            0x5d46805BBFAcA875a96Ebbd22Aaa3DE4A81180f5,
            0x8a2B28364102Bea189D99A475C494330Ef2bDD0B,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "og-mainnet",
            "USDT",
            0xcdA5b77E2E2268D9E09c874c1b9A4c3F07b37555,
            0x9FBBAFC2Ad79af2b57eD23C60DfF79eF5c2b0FB5,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "og-mainnet",
            "WETH",
            0x0F3273eA5d8B182CD87C8630Dc436a6133b9bE39,
            0x564770837Ef8bbF077cFe54E5f6106538c815B22,
            18,
            6,
            StargateType.OFT
        );

        // optimism-mainnet (Stargate: optimism)
        _tokenMessaging["optimism-mainnet"] = 0xF1fCb4CBd57B67d683972A59B6a7b1e2E8Bf27E6;
        _registerChain("optimism-mainnet");
        _registerAsset(
            "optimism-mainnet",
            "USDC",
            0xcE8CcA271Ebc0533920C83d39F417ED6A0abB7D0,
            0x0b2C639c533813f4Aa9D7837CAf62653d097Ff85,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "optimism-mainnet",
            "USDT",
            0x19cFCE47eD54a88614648DC3f19A5980097007dD,
            0x94b008aA00579c1307B0EF2c499aD98a8ce58e58,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "optimism-mainnet",
            "ETH",
            0xe8CDF27AcD73a434D661C84887215F7598e7d0d3,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // optimism-sepolia (Stargate: optimism-sepolia)
        _tokenMessaging["optimism-sepolia"] = 0xea461D9B1a3d1d45E2Aa3a358c3b8cB9bF2c7063;
        _registerChain("optimism-sepolia");
        _registerAsset(
            "optimism-sepolia",
            "USDC",
            0x314B753272a3C79646b92A87dbFDEE643237033a,
            0x488327236B65C61A6c083e8d811a4E0D3d1D4268,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "optimism-sepolia",
            "USDT",
            0x6bD6De24CA0756698e3F2B706bBe717c2209633b,
            0xdc443e1B760B1E3d2582a613a0Bc3608eBCc71Df,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "optimism-sepolia",
            "ETH",
            0xa31dCc5C71E25146b598bADA33E303627D7fC97e,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // orderly-mainnet (Stargate: orderly)
        _tokenMessaging["orderly-mainnet"] = 0x9FBBAFC2Ad79af2b57eD23C60DfF79eF5c2b0FB5;
        _registerChain("orderly-mainnet");
        _registerAsset(
            "orderly-mainnet",
            "USDC.e",
            0xd027aFcc69ffA2bCB288BA68da6B71EC90d7B1d2,
            0xda6087E69C51E7D31b6DBAD276a3c44703DFdCAd,
            6,
            6,
            StargateType.OFT
        );

        // peaq-mainnet (Stargate: peaq)
        _tokenMessaging["peaq-mainnet"] = 0x53Bf833A5d6c4ddA888F69c22C88C9f356a41614;
        _registerChain("peaq-mainnet");
        _registerAsset(
            "peaq-mainnet",
            "USDC",
            0x5c1a97C144A97E9b370F833a06c70Ca8F2f30DE5,
            0xbbA60da06c2c5424f03f7434542280FCAd453d10,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "peaq-mainnet",
            "USDT",
            0x07cd5A2702394E512aaaE54f7a250ea0576E5E8C,
            0xf4D9235269a96aaDaFc9aDAe454a0618eBE37949,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "peaq-mainnet",
            "WETH",
            0xe7Ec689f432f29383f217e36e680B5C855051f25,
            0x6694340fc020c5E6B96567843da2df01b2CE1eb6,
            18,
            6,
            StargateType.OFT
        );

        // plasma-mainnet (Stargate: plasma)
        _tokenMessaging["plasma-mainnet"] = 0x102d758f688a4C1C5a80b116bD945d4455460282;
        _registerChain("plasma-mainnet");
        _registerAsset(
            "plasma-mainnet",
            "WETH",
            0x0cEb237E109eE22374a567c6b09F373C73FA4cBb,
            0x9895D81bB462A195b4922ED7De0e3ACD007c32CB,
            18,
            6,
            StargateType.OFT
        );

        // plumephoenix-mainnet (Stargate: plumephoenix)
        _tokenMessaging["plumephoenix-mainnet"] = 0xf26d57bbE1D99561B13003783b5e040B71AdCb14;
        _registerChain("plumephoenix-mainnet");
        _registerAsset(
            "plumephoenix-mainnet",
            "USDC.e",
            0x9909fa99b7F7ee7F1c0CBf133f411D43083631E6,
            0x78adD880A697070c1e765Ac44D65323a0DcCE913,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "plumephoenix-mainnet",
            "USDT",
            0x2D870D17e640eD6c057afBAA0DF56B8DEa5Cf2F6,
            0xda6087E69C51E7D31b6DBAD276a3c44703DFdCAd,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "plumephoenix-mainnet",
            "WETH",
            0x4683CE822272CD66CEa73F5F1f9f5cBcaEF4F066,
            0xca59cA09E5602fAe8B629DeE83FfA819741f14be,
            18,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "plumephoenix-mainnet",
            "EURC.e",
            0x5e2519045B5e38863c879c694fb0811dba333a60,
            0x94DaD7d9f37C815Eb4dDC611E6460CC5F6617fA0,
            6,
            6,
            StargateType.OFT
        );

        // polygon-mainnet (Stargate: polygon)
        _tokenMessaging["polygon-mainnet"] = 0x6CE9bf8CDaB780416AD1fd87b318A077D2f50EaC;
        _registerChain("polygon-mainnet");
        _registerAsset(
            "polygon-mainnet",
            "USDC",
            0x9Aa02D4Fae7F58b8E8f34c66E756cC734DAc7fe4,
            0x3c499c542cEF5E3811e1192ce70d8cC03d5c3359,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "polygon-mainnet",
            "USDT",
            0xd47b03ee6d86Cf251ee7860FB2ACf9f91B9fD4d7,
            0xc2132D05D31c914a87C6611C10748AEb04B58e8F,
            6,
            6,
            StargateType.POOL
        );

        // rarible-mainnet (Stargate: rarible)
        _tokenMessaging["rarible-mainnet"] = 0xC1B8045A6ef2934Cf0f78B0dbD489969Fa9Be7E4;
        _registerChain("rarible-mainnet");
        _registerAsset(
            "rarible-mainnet",
            "USDC.e",
            0x875bee36739e7Ce6b60E056451c556a88c59b086,
            0xFbDa5F676cB37624f28265A144A48B0d6e87d3b6,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "rarible-mainnet",
            "USDT",
            0x17d65bF79E77B6Ab21d8a0afed3bC8657d8Ee0B2,
            0x362FAE9A75B27BBc550aAc28a7c1F96C8D483120,
            6,
            6,
            StargateType.OFT
        );

        // rootstock-mainnet (Stargate: rootstock)
        _tokenMessaging["rootstock-mainnet"] = 0x45A01E4e04F14f7A4a6702c74187c5F6222033cd;
        _registerChain("rootstock-mainnet");
        _registerAsset(
            "rootstock-mainnet",
            "USDC.e",
            0xAF54BE5B6eEc24d6BFACf1cce4eaF680A8239398,
            0x74c9f2b00581F1B11AA7ff05aa9F608B7389De67,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "rootstock-mainnet",
            "USDT",
            0xAf5191B0De278C7286d6C7CC6ab6BB8A73bA2Cd6,
            0xAf368c91793CB22739386DFCbBb2F1A9e4bCBeBf,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "rootstock-mainnet",
            "WETH",
            0x45f1A95A4D3f3836523F5c83673c797f4d4d263B,
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            18,
            6,
            StargateType.OFT
        );

        // scroll-mainnet (Stargate: scroll)
        _tokenMessaging["scroll-mainnet"] = 0x4e422B0aCb2Bd7e3aC70B5c0E5eb806e86a94038;
        _registerChain("scroll-mainnet");
        _registerAsset(
            "scroll-mainnet",
            "USDC",
            0x3Fc69CC4A842838bCDC9499178740226062b14E4,
            0x06eFdBFf2a14a7c8E15944D1F4A48F9F95F663A4,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "scroll-mainnet",
            "ETH",
            0xC2b638Cb5042c1B3c5d5C969361fB50569840583,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // sei-mainnet (Stargate: sei)
        _tokenMessaging["sei-mainnet"] = 0x1502FA4be69d526124D453619276FacCab275d3D;
        _registerChain("sei-mainnet");
        _registerAsset(
            "sei-mainnet",
            "USDC",
            0x45d417612e177672958dC0537C45a8f8d754Ac2E,
            0x3894085Ef7Ff0f0aeDf52E2A2704928d1Ec074F1,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "sei-mainnet",
            "USDT",
            0x0dB9afb4C33be43a0a0e396Fd1383B4ea97aB10a,
            0xB75D0B03c06A926e488e2659DF1A861F860bD3d1,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "sei-mainnet",
            "WETH",
            0x5c386D85b1B82FD9Db681b9176C8a4248bb6345B,
            0x160345fC359604fC6e70E3c5fAcbdE5F7A9342d8,
            18,
            6,
            StargateType.OFT
        );

        // sepolia (Stargate: sepolia)
        _tokenMessaging["sepolia"] = 0xfB112f7FC5725de9F630abB23E4916d6fd7526d3;
        _registerChain("sepolia");
        _registerAsset(
            "sepolia",
            "USDC",
            0x4985b8fcEA3659FD801a5b857dA1D00e985863F0,
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "sepolia",
            "USDT",
            0x9D819CcAE96d41d8F775bD1259311041248fF980,
            0xF3F2b4815A58152c9BE53250275e8211163268BA,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "sepolia",
            "SETH",
            0x9Cc7e185162Aa5D1425ee924D97a87A0a34A0706,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // somnia-mainnet (Stargate: somnia)
        _tokenMessaging["somnia-mainnet"] = 0x78adD880A697070c1e765Ac44D65323a0DcCE913;
        _registerChain("somnia-mainnet");
        _registerAsset(
            "somnia-mainnet",
            "USDC.e",
            0xCb97465Bc1bFF20fb788ccf29b409513789b6EaE,
            0x28BEc7E30E6faee657a03e19Bf1128AaD7632A00,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "somnia-mainnet",
            "USDT",
            0xaFe47bAC47F2D9cDc0254a487C7B51ccB6c2b065,
            0x67B302E35Aef5EEE8c32D934F5856869EF428330,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "somnia-mainnet",
            "WETH",
            0xFB9e0b64Bf68b2E1E478838B8722EACe2Ad5cD02,
            0x936Ab8C674bcb567CD5dEB85D8A216494704E9D8,
            18,
            6,
            StargateType.OFT
        );

        // soneium-mainnet (Stargate: soneium)
        _tokenMessaging["soneium-mainnet"] = 0xAF54BE5B6eEc24d6BFACf1cce4eaF680A8239398;
        _registerChain("soneium-mainnet");
        _registerAsset(
            "soneium-mainnet",
            "USDC.e",
            0x45f1A95A4D3f3836523F5c83673c797f4d4d263B,
            0xbA9986D2381edf1DA03B0B9c1f8b00dc4AacC369,
            6,
            6,
            StargateType.POOL
        );
        _registerAsset(
            "soneium-mainnet",
            "ETH",
            0x2F6F07CDcf3588944Bf4C42aC74ff24bF56e7590,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // sonic-mainnet (Stargate: sonic)
        _tokenMessaging["sonic-mainnet"] = 0x2086f755A6d9254045C257ea3d382ef854849B0f;
        _registerChain("sonic-mainnet");
        _registerAsset(
            "sonic-mainnet",
            "USDC",
            0xA272fFe20cFfe769CdFc4b63088DCD2C82a2D8F9,
            0x29219dd400f2Bf60E5a23d13Be72B486D4038894,
            6,
            6,
            StargateType.POOL
        );

        // stable-mainnet (Stargate: stable)
        _tokenMessaging["stable-mainnet"] = 0xd027aFcc69ffA2bCB288BA68da6B71EC90d7B1d2;
        _registerChain("stable-mainnet");
        _registerAsset(
            "stable-mainnet",
            "USDC.e",
            0x31EEf89D5215C305304a2fA5376a1f1b6C5dc477,
            0x8a2B28364102Bea189D99A475C494330Ef2bDD0B,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "stable-mainnet",
            "WETH",
            0x0829F361A05D993d5CEb035cA6DF3446b060970b,
            0x783129E4d7bA0Af0C896c239E57C06DF379aAE8c,
            18,
            6,
            StargateType.OFT
        );

        // story-mainnet (Stargate: story)
        _tokenMessaging["story-mainnet"] = 0x88853D410299BCBfE5fCC9Eef93c03115E908279;
        _registerChain("story-mainnet");
        _registerAsset(
            "story-mainnet",
            "USDC.e",
            0x2086f755A6d9254045C257ea3d382ef854849B0f,
            0xF1815bd50389c46847f0Bda824eC8da914045D14,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "story-mainnet",
            "USDT",
            0x3a1293Bdb83bBbDd5Ebf4fAc96605aD2021BbC0f,
            0x674843C06FF83502ddb4D37c2E09C01cdA38cbc8,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "story-mainnet",
            "WETH",
            0xA272fFe20cFfe769CdFc4b63088DCD2C82a2D8F9,
            0xBAb93B7ad7fE8692A878B95a8e689423437cc500,
            18,
            6,
            StargateType.OFT
        );

        // superposition-mainnet (Stargate: superposition)
        _tokenMessaging["superposition-mainnet"] = 0x06Eb48763f117c7Be887296CDcdfad2E4092739C;
        _registerChain("superposition-mainnet");
        _registerAsset(
            "superposition-mainnet",
            "USDC.e",
            0x8EE21165Ecb7562BA716c9549C1dE751282b9B33,
            0x6c030c5CC283F791B26816f325b9C632d964F8A1,
            6,
            6,
            StargateType.OFT
        );

        // swell-mainnet (Stargate: swell)
        _tokenMessaging["swell-mainnet"] = 0x851C9D74BF5cfAEB4a0082A55a65A8F2718b337F;
        _registerChain("swell-mainnet");
        _registerAsset(
            "swell-mainnet",
            "ETH",
            0xCc0587aeBDa397146cc828b445dB130a94486e74,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // taiko-mainnet (Stargate: taiko)
        _tokenMessaging["taiko-mainnet"] = 0x45d417612e177672958dC0537C45a8f8d754Ac2E;
        _registerChain("taiko-mainnet");
        _registerAsset(
            "taiko-mainnet",
            "USDC.e",
            0x77C71633C34C3784ede189d74223122422492a0f,
            0x19e26B0638bf63aa9fa4d14c6baF8D52eBE86C5C,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "taiko-mainnet",
            "USDT",
            0x1C10CC06DC6D35970d1D53B2A23c76ef370d4135,
            0x9c2dc7377717603eB92b2655c5f2E7997a4945BD,
            6,
            6,
            StargateType.OFT
        );

        // telos-mainnet (Stargate: telos)
        _tokenMessaging["telos-mainnet"] = 0x88853D410299BCBfE5fCC9Eef93c03115E908279;
        _registerChain("telos-mainnet");
        _registerAsset(
            "telos-mainnet",
            "USDC.e",
            0x2086f755A6d9254045C257ea3d382ef854849B0f,
            0xF1815bd50389c46847f0Bda824eC8da914045D14,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "telos-mainnet",
            "USDT",
            0x3a1293Bdb83bBbDd5Ebf4fAc96605aD2021BbC0f,
            0x674843C06FF83502ddb4D37c2E09C01cdA38cbc8,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "telos-mainnet",
            "WETH",
            0xA272fFe20cFfe769CdFc4b63088DCD2C82a2D8F9,
            0xBAb93B7ad7fE8692A878B95a8e689423437cc500,
            18,
            6,
            StargateType.OFT
        );

        // unichain-mainnet (Stargate: unichain)
        _tokenMessaging["unichain-mainnet"] = 0xB1EeAD6959cb5bB9B20417d6689922523B2B86C3;
        _registerChain("unichain-mainnet");
        _registerAsset(
            "unichain-mainnet",
            "ETH",
            0xe9aBA835f813ca05E50A6C0ce65D0D74390F7dE7,
            0x0000000000000000000000000000000000000000,
            18,
            6,
            StargateType.OFT
        );

        // xdc-mainnet (Stargate: xdc)
        _tokenMessaging["xdc-mainnet"] = 0x2761c39102BCF7fc6365580d94cd1882F9cc2650;
        _registerChain("xdc-mainnet");
        _registerAsset(
            "xdc-mainnet",
            "USDC.e",
            0x8E2E38711080bF8AAb9C74f434d2bae70e67ae44,
            0xCc0587aeBDa397146cc828b445dB130a94486e74,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "xdc-mainnet",
            "USDT",
            0xA4272ad93AC5d2FF048DD6419c88Eb4C1002Ec6b,
            0xcdA5b77E2E2268D9E09c874c1b9A4c3F07b37555,
            6,
            6,
            StargateType.OFT
        );
        _registerAsset(
            "xdc-mainnet",
            "WETH",
            0xB0d27478A40223e427697Da523c6A3DAF29AaFfB,
            0xa7348290de5cf01772479c48D50dec791c3fC212,
            18,
            6,
            StargateType.OFT
        );
    }

    function _registerChainMappings() private {
        _eidToChainName[30324] = "abstract-mainnet";
        _chainIdToChainName[2741] = "abstract-mainnet";
        _eidToChainName[30312] = "ape-mainnet";
        _chainIdToChainName[33139] = "ape-mainnet";
        _eidToChainName[30384] = "apexfusionnexus-mainnet";
        _chainIdToChainName[9069] = "apexfusionnexus-mainnet";
        _eidToChainName[30110] = "arbitrum-mainnet";
        _chainIdToChainName[42161] = "arbitrum-mainnet";
        _eidToChainName[30211] = "aurora-mainnet";
        _chainIdToChainName[1313161554] = "aurora-mainnet";
        _eidToChainName[30106] = "avalanche-mainnet";
        _chainIdToChainName[43114] = "avalanche-mainnet";
        _eidToChainName[30184] = "base-mainnet";
        _chainIdToChainName[8453] = "base-mainnet";
        _eidToChainName[30362] = "bera-mainnet";
        _chainIdToChainName[80094] = "bera-mainnet";
        _eidToChainName[30376] = "botanix-mainnet";
        _chainIdToChainName[3637] = "botanix-mainnet";
        _eidToChainName[30102] = "bsc-mainnet";
        _chainIdToChainName[56] = "bsc-mainnet";
        _eidToChainName[30381] = "camp-mainnet";
        _chainIdToChainName[484] = "camp-mainnet";
        _eidToChainName[30153] = "coredao-mainnet";
        _chainIdToChainName[1116] = "coredao-mainnet";
        _eidToChainName[30359] = "cronosevm-mainnet";
        _chainIdToChainName[25] = "cronosevm-mainnet";
        _eidToChainName[30267] = "degen-mainnet";
        _chainIdToChainName[666666666] = "degen-mainnet";
        _eidToChainName[30393] = "doma-mainnet";
        _chainIdToChainName[97477] = "doma-mainnet";
        _eidToChainName[30328] = "edu-mainnet";
        _chainIdToChainName[41923] = "edu-mainnet";
        _eidToChainName[30101] = "ethereum-mainnet";
        _chainIdToChainName[1] = "ethereum-mainnet";
        _eidToChainName[30295] = "flare-mainnet";
        _chainIdToChainName[14] = "flare-mainnet";
        _eidToChainName[30336] = "flow-mainnet";
        _chainIdToChainName[747] = "flow-mainnet";
        _eidToChainName[30138] = "fuse-mainnet";
        _chainIdToChainName[122] = "fuse-mainnet";
        _eidToChainName[30389] = "gatelayer-mainnet";
        _chainIdToChainName[10088] = "gatelayer-mainnet";
        _eidToChainName[30342] = "glue-mainnet";
        _chainIdToChainName[1300] = "glue-mainnet";
        _eidToChainName[30145] = "gnosis-mainnet";
        _chainIdToChainName[100] = "gnosis-mainnet";
        _eidToChainName[30361] = "goat-mainnet";
        _chainIdToChainName[2345] = "goat-mainnet";
        _eidToChainName[30294] = "gravity-mainnet";
        _chainIdToChainName[1625] = "gravity-mainnet";
        _eidToChainName[30329] = "hemi-mainnet";
        _chainIdToChainName[43111] = "hemi-mainnet";
        _eidToChainName[30339] = "ink-mainnet";
        _chainIdToChainName[57073] = "ink-mainnet";
        _eidToChainName[30284] = "iota-mainnet";
        _chainIdToChainName[8822] = "iota-mainnet";
        _eidToChainName[30330] = "islander-mainnet";
        _chainIdToChainName[1480] = "islander-mainnet";
        _eidToChainName[30150] = "klaytn-mainnet";
        _chainIdToChainName[8217] = "klaytn-mainnet";
        _eidToChainName[30309] = "lightlink-mainnet";
        _chainIdToChainName[1890] = "lightlink-mainnet";
        _eidToChainName[30181] = "mantle-mainnet";
        _chainIdToChainName[5000] = "mantle-mainnet";
        _eidToChainName[30369] = "nibiru-mainnet";
        _chainIdToChainName[6900] = "nibiru-mainnet";
        _eidToChainName[30388] = "og-mainnet";
        _chainIdToChainName[16661] = "og-mainnet";
        _eidToChainName[30111] = "optimism-mainnet";
        _chainIdToChainName[10] = "optimism-mainnet";
        _eidToChainName[30213] = "orderly-mainnet";
        _chainIdToChainName[291] = "orderly-mainnet";
        _eidToChainName[30302] = "peaq-mainnet";
        _chainIdToChainName[3338] = "peaq-mainnet";
        _eidToChainName[30370] = "plumephoenix-mainnet";
        _chainIdToChainName[98866] = "plumephoenix-mainnet";
        _eidToChainName[30109] = "polygon-mainnet";
        _chainIdToChainName[137] = "polygon-mainnet";
        _eidToChainName[30235] = "rarible-mainnet";
        _chainIdToChainName[1380012617] = "rarible-mainnet";
        _eidToChainName[30333] = "rootstock-mainnet";
        _chainIdToChainName[30] = "rootstock-mainnet";
        _eidToChainName[30214] = "scroll-mainnet";
        _chainIdToChainName[534352] = "scroll-mainnet";
        _eidToChainName[30280] = "sei-mainnet";
        _chainIdToChainName[1329] = "sei-mainnet";
        _eidToChainName[30380] = "somnia-mainnet";
        _chainIdToChainName[50312] = "somnia-mainnet";
        _eidToChainName[30340] = "soneium-mainnet";
        _chainIdToChainName[1868] = "soneium-mainnet";
        _eidToChainName[30332] = "sonic-mainnet";
        _chainIdToChainName[146] = "sonic-mainnet";
        _eidToChainName[30396] = "stable-mainnet";
        _chainIdToChainName[988] = "stable-mainnet";
        _eidToChainName[30364] = "story-mainnet";
        _chainIdToChainName[1514] = "story-mainnet";
        _eidToChainName[30327] = "superposition-mainnet";
        _chainIdToChainName[55244] = "superposition-mainnet";
        _eidToChainName[30290] = "taiko-mainnet";
        _chainIdToChainName[167000] = "taiko-mainnet";
        _eidToChainName[30199] = "telos-mainnet";
        _chainIdToChainName[40] = "telos-mainnet";
        _eidToChainName[30365] = "xdc-mainnet";
        _chainIdToChainName[50] = "xdc-mainnet";
        _eidToChainName[30177] = "kava-mainnet";
        _chainIdToChainName[2222] = "kava-mainnet";
        _eidToChainName[30151] = "metis-mainnet";
        _chainIdToChainName[1088] = "metis-mainnet";
        _eidToChainName[30316] = "hedera-mainnet";
        _chainIdToChainName[295] = "hedera-mainnet";
        _eidToChainName[30217] = "manta-mainnet";
        _chainIdToChainName[169] = "manta-mainnet";
        _eidToChainName[30383] = "plasma-mainnet";
        _chainIdToChainName[9745] = "plasma-mainnet";
        _eidToChainName[30335] = "swell-mainnet";
        _chainIdToChainName[1923] = "swell-mainnet";
        _eidToChainName[30320] = "unichain-mainnet";
        _chainIdToChainName[130] = "unichain-mainnet";
        _eidToChainName[40102] = "bsc-testnet";
        _chainIdToChainName[97] = "bsc-testnet";
    }

    function _registerChain(string memory chainName) private {
        if (!_chainSupported[chainName]) {
            _chainSupported[chainName] = true;
            _supportedChains.push(chainName);
        }
    }

    function _registerAsset(
        string memory chainName,
        string memory symbol,
        address oft,
        address token,
        uint8 decimals,
        uint8 sharedDecimals,
        StargateType stargateType
    ) private {
        _assets[chainName][symbol] = StargateAsset({
            oft: oft,
            token: token,
            symbol: symbol,
            decimals: decimals,
            sharedDecimals: sharedDecimals,
            stargateType: stargateType,
            exists: true
        });

        _symbolsByChain[chainName].push(symbol);

        if (!_symbolExists[symbol]) {
            _symbolExists[symbol] = true;
            _allSymbols.push(symbol);
        }
    }

    // ============================================
    // Lookup by Chain Name
    // ============================================

    /// @inheritdoc ISTGProtocol
    function getAsset(string memory chainName, string memory symbol)
        external
        view
        override
        returns (StargateAsset memory)
    {
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on ", chainName));
        return asset;
    }

    /// @inheritdoc ISTGProtocol
    function getAssetsForChainName(string memory chainName)
        external
        view
        override
        returns (StargateAsset[] memory assets)
    {
        string[] memory symbols = _symbolsByChain[chainName];
        assets = new StargateAsset[](symbols.length);

        for (uint256 i = 0; i < symbols.length; i++) {
            assets[i] = _assets[chainName][symbols[i]];
        }
    }

    /// @inheritdoc ISTGProtocol
    function getTokenMessaging(string memory chainName) external view override returns (address) {
        address tm = _tokenMessaging[chainName];
        require(tm != address(0), string.concat("TokenMessaging not found for: ", chainName));
        return tm;
    }

    // ============================================
    // Lookup by EID
    // ============================================

    /// @inheritdoc ISTGProtocol
    function getAssetByEid(uint32 eid, string memory symbol) external view override returns (StargateAsset memory) {
        string memory chainName = _eidToChainName[eid];
        require(bytes(chainName).length > 0, string.concat("EID not supported: ", vm.toString(uint256(eid))));
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on EID ", vm.toString(uint256(eid))));
        return asset;
    }

    /// @inheritdoc ISTGProtocol
    function getAssetsForEid(uint32 eid) external view override returns (StargateAsset[] memory assets) {
        string memory chainName = _eidToChainName[eid];
        require(bytes(chainName).length > 0, string.concat("EID not supported: ", vm.toString(uint256(eid))));

        string[] memory symbols = _symbolsByChain[chainName];
        assets = new StargateAsset[](symbols.length);

        for (uint256 i = 0; i < symbols.length; i++) {
            assets[i] = _assets[chainName][symbols[i]];
        }
    }

    /// @inheritdoc ISTGProtocol
    function getTokenMessagingByEid(uint32 eid) external view override returns (address) {
        string memory chainName = _eidToChainName[eid];
        require(bytes(chainName).length > 0, string.concat("EID not supported: ", vm.toString(uint256(eid))));
        address tm = _tokenMessaging[chainName];
        require(tm != address(0), string.concat("TokenMessaging not found for EID: ", vm.toString(uint256(eid))));
        return tm;
    }

    // ============================================
    // Lookup by Chain ID
    // ============================================

    /// @inheritdoc ISTGProtocol
    function getAssetByChainId(uint256 chainId, string memory symbol)
        external
        view
        override
        returns (StargateAsset memory)
    {
        string memory chainName = _chainIdToChainName[chainId];
        require(bytes(chainName).length > 0, string.concat("Chain ID not supported: ", vm.toString(chainId)));
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on chain ID ", vm.toString(chainId)));
        return asset;
    }

    /// @inheritdoc ISTGProtocol
    function getAssetsForChainId(uint256 chainId) external view override returns (StargateAsset[] memory assets) {
        string memory chainName = _chainIdToChainName[chainId];
        require(bytes(chainName).length > 0, string.concat("Chain ID not supported: ", vm.toString(chainId)));

        string[] memory symbols = _symbolsByChain[chainName];
        assets = new StargateAsset[](symbols.length);

        for (uint256 i = 0; i < symbols.length; i++) {
            assets[i] = _assets[chainName][symbols[i]];
        }
    }

    /// @inheritdoc ISTGProtocol
    function getTokenMessagingByChainId(uint256 chainId) external view override returns (address) {
        string memory chainName = _chainIdToChainName[chainId];
        require(bytes(chainName).length > 0, string.concat("Chain ID not supported: ", vm.toString(chainId)));
        address tm = _tokenMessaging[chainName];
        require(tm != address(0), string.concat("TokenMessaging not found for chain ID: ", vm.toString(chainId)));
        return tm;
    }

    // ============================================
    // Chain Name Resolution
    // ============================================

    /// @inheritdoc ISTGProtocol
    function getChainNameByEid(uint32 eid) external view override returns (string memory) {
        string memory chainName = _eidToChainName[eid];
        require(bytes(chainName).length > 0, string.concat("EID not supported: ", vm.toString(uint256(eid))));
        return chainName;
    }

    /// @inheritdoc ISTGProtocol
    function getChainNameByChainId(uint256 chainId) external view override returns (string memory) {
        string memory chainName = _chainIdToChainName[chainId];
        require(bytes(chainName).length > 0, string.concat("Chain ID not supported: ", vm.toString(chainId)));
        return chainName;
    }

    // ============================================
    // Discovery & Validation
    // ============================================

    /// @inheritdoc ISTGProtocol
    function getSupportedSymbols() external view override returns (string[] memory) {
        return _allSymbols;
    }

    /// @inheritdoc ISTGProtocol
    function getSupportedChainNames() external view override returns (string[] memory) {
        return _supportedChains;
    }

    /// @inheritdoc ISTGProtocol
    function isChainNameSupported(string memory chainName) external view override returns (bool) {
        return _chainSupported[chainName];
    }

    /// @inheritdoc ISTGProtocol
    function isHydraChain(string memory chainName, string memory symbol) external view override returns (bool) {
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on ", chainName));
        return asset.stargateType == StargateType.OFT;
    }

    /// @inheritdoc ISTGProtocol
    function isHydraChainByEid(uint32 eid, string memory symbol) external view override returns (bool) {
        string memory chainName = _eidToChainName[eid];
        require(bytes(chainName).length > 0, string.concat("EID not supported: ", vm.toString(uint256(eid))));
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on EID ", vm.toString(uint256(eid))));
        return asset.stargateType == StargateType.OFT;
    }

    /// @inheritdoc ISTGProtocol
    function isHydraChainByChainId(uint256 chainId, string memory symbol) external view override returns (bool) {
        string memory chainName = _chainIdToChainName[chainId];
        require(bytes(chainName).length > 0, string.concat("Chain ID not supported: ", vm.toString(chainId)));
        StargateAsset memory asset = _assets[chainName][symbol];
        require(asset.exists, string.concat("Asset not found: ", symbol, " on chain ID ", vm.toString(chainId)));
        return asset.stargateType == StargateType.OFT;
    }

    /// @inheritdoc ISTGProtocol
    function assetExists(string memory chainName, string memory symbol) external view override returns (bool) {
        return _assets[chainName][symbol].exists;
    }

    /// @inheritdoc ISTGProtocol
    function assetExistsByEid(uint32 eid, string memory symbol) external view override returns (bool) {
        string memory chainName = _eidToChainName[eid];
        if (bytes(chainName).length == 0) return false;
        return _assets[chainName][symbol].exists;
    }

    /// @inheritdoc ISTGProtocol
    function assetExistsByChainId(uint256 chainId, string memory symbol) external view override returns (bool) {
        string memory chainName = _chainIdToChainName[chainId];
        if (bytes(chainName).length == 0) return false;
        return _assets[chainName][symbol].exists;
    }

    /// @inheritdoc ISTGProtocol
    function isEidSupported(uint32 eid) external view override returns (bool) {
        return bytes(_eidToChainName[eid]).length > 0;
    }

    /// @inheritdoc ISTGProtocol
    function isChainIdSupported(uint256 chainId) external view override returns (bool) {
        return bytes(_chainIdToChainName[chainId]).length > 0;
    }
}
