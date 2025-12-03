// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Auto-generated from LayerZero metadata - do not edit manually
// Source: https://metadata.layerzero-api.com/v1/metadata/deployments
// Generated: 2025-12-03T17:33:12.293173
// DATA_HASH: 0xfbb17afaa961159bd452e1d02febbc36b4b946fb2227bf7dcc09f303f30d5876

import {ILayerZeroEndpointV2} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {IMessageLib} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/IMessageLib.sol";

// DATA_HASH for provenance tracking (LZIP spec requirement)
bytes32 constant LZ_ADDRESSES_DATA_HASH = 0xfbb17afaa961159bd452e1d02febbc36b4b946fb2227bf7dcc09f303f30d5876;

library LayerZeroV2AavegotchiTestnet {
    // Chain metadata
    uint32 internal constant EID = 40179;
    string internal constant CHAIN_NAME = "aavegotchi-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNAavegotchiTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x236B9303d513dDF3f4c4E93A640fB80A178872f1;
}

library LayerZeroV2AbstractMainnet {
    // Chain metadata
    uint32 internal constant EID = 30324;
    uint256 internal constant CHAIN_ID = 2741;
    string internal constant CHAIN_NAME = "abstract-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x5c6cfF4b7C49805F8295Ff73C204ac83f3bC4AE7);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x2B79f3C2EE059E465a24bf5A2F4FE989546053B1);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x166CAb679EBDB0853055522D3B523621b94029a1);
    address internal constant BLOCKED_MESSAGE_LIB = 0x3258287147FB7887d8A643006e26E19368057377;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9d799c1935c51CA399e6465Ed9841DEbCcEc413E);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x52fFEeaE5Ffa89D4b31c72F87ead3699FCB79e40;
    address internal constant EXECUTOR = 0x643E1471f37c4680Df30cF0C540Cd379a0fF58A5;
    address internal constant DEAD_DVN = 0x06e56abD0cb3C88880644bA3C534A498cA18E5C8;
    address internal constant LZ_EXECUTOR = 0x068EC1f0bd53cf86923BbB0986046be6af3f5922;
}

library LayerZeroV2DVNAbstractMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xCB773CAf620D2A6703d2cd30C567A6c2906ccfbb;
    // Frax [frax]
    address internal constant DVN_FRAX = 0xA8c83FEbAb692d6F08cfA303e5D53B3B34F9046d;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xD45174e7654977e8bc3D0648D06c89401978A65a;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x264fE346Fcd0A89E3B41A6499BAC80dEa7e908D2;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x06e56abD0cb3C88880644bA3C534A498cA18E5C8;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x02A7Bf7298D17C12181578fF474c17C922aAd75A;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xF4DA94b4EE9D8e209e3bf9f469221CE2731A7112;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x022dA66B230da7EFdEEd802DFC77EE8dD258E2C8;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x05Db3a229293C09F639a16526bB2481704716Df0;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xc4A1F52fDA034A9A5E1B3b27D14451d15776Fef6;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x52B7E1958F6Ad3E195DC30578dA5Fa7ac5827A2A;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xCec9f0A49073ac4a1C439D06cb9448512389a64E;
    // Ubisoft [ubisoft]
    address internal constant DVN_UBISOFT = 0x62aA89bAd332788021F6F4F4Fb196D5Fe59C27a6;
}

library LayerZeroV2AbstractTestnet {
    // Chain metadata
    uint32 internal constant EID = 40313;
    uint256 internal constant CHAIN_ID = 11124;
    string internal constant CHAIN_NAME = "abstract-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x16c693A3924B947298F7227792953Cd6BBb21Ac8);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xF636882f80cb5039D80F08cDEee1b166D700091b);
    address internal constant BLOCKED_MESSAGE_LIB = 0x7224ff87e2eE26a56d6BE7534E16621828E0E2B5;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2443297aEd720EACED2feD76d1C6044471382EA2);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC9968d69bfaFCFC1a768B2e97D4020386A5e15b2;
    address internal constant EXECUTOR = 0x5c123dB6f87CC0d7e320C5CC9EaAfD336B5f6eF3;
    address internal constant DEAD_DVN = 0x2DCC8cFb612fDbC0Fb657eA1B51A6F77b8b86448;
    address internal constant LZ_EXECUTOR = 0x319E7722F23aADc482e12DB036c7eD6c9377e61B;
}

library LayerZeroV2DVNAbstractTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x2DCC8cFb612fDbC0Fb657eA1B51A6F77b8b86448;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x5dFcab27C1eEC1eB07FF987846013f19355a04cB;
}

library LayerZeroV2AmoyTestnet {
    // Chain metadata
    uint32 internal constant EID = 40267;
    uint256 internal constant CHAIN_ID = 80002;
    string internal constant CHAIN_NAME = "amoy-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x53fd4C4fBBd53F6bC58CaE6704b92dB1f360A648);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C;
    address internal constant EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    address internal constant LZ_EXECUTOR = 0x4dFa426aEAA55E6044d2b47682842460a04aF45c;
}

library LayerZeroV2DVNAmoyTestnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0x3Ed2211f49ce343D70CB8dEd927cA6C4a6198101;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO_2 = 0x02FeaB4E6Ca6EEbD60d85347762De70Ca9ce162A;
    // Blockdaemon [blockdaemon]
    address internal constant DVN_BLOCKDAEMON = 0xe67Ef84173d024603A844C4AeA6A3a15CccCc32c;
    // Citrea [citrea]
    address internal constant DVN_CITREA = 0x4f9D2bD7942c3e76CFC7323A56b95B4a6A52FdFd;
    // Frax (deprecated) [frax]
    address internal constant DVN_FRAX = 0x5364192803E9c6dA2E937Ed602AC1854D4f223cB;
    // Frax (deprecated) [frax]
    address internal constant DVN_FRAX_2 = 0x8cA915A3ea6b0757AdB4A0358c54c62908230961;
    // Frax [frax]
    address internal constant DVN_FRAX_3 = 0xFEDd3613D2BF6f93cb50508d8a6AB3074eDA4a1c;
    // IntellectEU
    address internal constant DVN_INTELLECTEU = 0xDD1dA938B19614D6db8c3973C89908DF234AD1CE;
    // Japan Blockchain Foundation [joc]
    address internal constant DVN_JAPAN_BLOCKCHAIN_FOUNDATION = 0xd44e25bEA2bEdCCEcEB7e104D5843A55D208e8A9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x55c175DD5b039331dB251424538169D8495C18d1;
    // Republic [republic-crypto]
    address internal constant DVN_REPUBLIC = 0x35cEA726508192472919C51951042DD140794B01;
    // Wyoming [wyoming]
    address internal constant DVN_WYOMING = 0x8A70d298E5c290f12F98C5Cbf8a3033BE5f8cd7d;
}

library LayerZeroV2AnimechainMainnet {
    // Chain metadata
    uint32 internal constant EID = 30372;
    uint256 internal constant CHAIN_ID = 69000;
    string internal constant CHAIN_NAME = "animechain-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNAnimechainMainnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x9E0E95Ede70F680f74480b510FF9f45C70e3da80;
}

library LayerZeroV2AnimechainTestnet {
    // Chain metadata
    uint32 internal constant EID = 40372;
    uint256 internal constant CHAIN_ID = 6900;
    string internal constant CHAIN_NAME = "animechain-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNAnimechainTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2ApeMainnet {
    // Chain metadata
    uint32 internal constant EID = 30312;
    uint256 internal constant CHAIN_ID = 33139;
    string internal constant CHAIN_NAME = "ape-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x1641D737e97916f1400CB6BA032eceE765484D9C);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNApeMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x9bB011796fC3604D3a4FaA5863f587a33F6224AF;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x452646362D5Fe81CFdA49bBF620bE480358c0663;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x965A80Dc87cec5848310E612DeAD84B543AeF874;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x07653d28b0f53D4c54b70eb1f9025795B23a9D6e;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xb2e6E01a5BeF9Bf25F00105Dc7E47542f750DE68;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x794C0b0071D4A926c443468f027912e693678151;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA2Eb037Ee6AABa1547fCa8804392EB8EF9c33976;
}

library LayerZeroV2ApexfusionnexusMainnet {
    // Chain metadata
    uint32 internal constant EID = 30384;
    uint256 internal constant CHAIN_ID = 9069;
    string internal constant CHAIN_NAME = "apexfusionnexus-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNApexfusionnexusMainnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x70BF42C69173d6e33b834f59630DAC592C70b369;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x313328609a9C38459CaE56625FFf7F2AD6dcde3b;
}

library LayerZeroV2ApexfusionnexusTestnet {
    // Chain metadata
    uint32 internal constant EID = 40355;
    uint256 internal constant CHAIN_ID = 9070;
    string internal constant CHAIN_NAME = "apexfusionnexus-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xb23b28012ee92E8dE39DEb57Af31722223034747);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);
    address internal constant BLOCKED_MESSAGE_LIB = 0xD69769251c2DE60f0c44f4c2DBFDae9D1897E4c4;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x45841dd1ca50265Da7614fC43A361e526c0e6160;
    address internal constant EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4dFa426aEAA55E6044d2b47682842460a04aF45c;
}

library LayerZeroV2DVNApexfusionnexusTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2ArbitrumMainnet {
    // Chain metadata
    uint32 internal constant EID = 30110;
    uint256 internal constant CHAIN_ID = 42161;
    string internal constant CHAIN_NAME = "arbitrum-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xbcd4CADCac3F767C57c4F402932C4705DF62BEFf);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x975bcD720be66659e3EB3C0e4F1866a3020E493A);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x7B9E184e07a6EE1aC23eAe0fe8D6Be2f663f05e6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x5440E2097C41F8e0a8551521d569c71de70fDe23;
    address internal constant EXECUTOR = 0x31CAe3B7fB82d847621859fb1585353c5720660D;
    address internal constant DEAD_DVN = 0x758C419533ad64Ce9D3413BC8d3A97B026098EC1;
    address internal constant LZ_EXECUTOR = 0x6862dEd20594DA16B7cbB282894FaE23043A32BC;
}

library LayerZeroV2DVNArbitrumMainnet {
    // 01node [01node]
    address internal constant DVN_01NODE = 0x7A205ED4e3d7f9d0777594501705D8CD405c3B05;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB = 0xF0e40968e27F63B3b0a0b3BAAC4A274149376591;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB_2 = 0xddaa92ce2d2faC3f7c5eae19136E438902Ab46cc;
    // AltLayer [altlayer]
    address internal constant DVN_ALTLAYER = 0x8Ede21203E062D7D1EAeC11c4c72Ad04cDc15658;
    // Axelar [axelar]
    address internal constant DVN_AXELAR = 0x9D3979c7E3DD26653C52256307709C09f47741e0;
    // BCW [bcw]
    address internal constant DVN_BCW = 0x78203678D264063815Dac114eA810E9837Cd80f7;
    // BCW [bcw]
    address internal constant DVN_BCW_2 = 0x05ce650134d943c5E336dc7990e84FB4e69Fdf29;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x9bCd17A654bffAa6f8fEa38D19661a7210e22196;
    // Bera [bera]
    address internal constant DVN_BERA = 0xf2e89Ed7E342c708BA8CD79b293AD9244f5FCcb3;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0x4A6B9962945D866F53fd114bB76B38B8791B8C1d;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0x0711dd777AE626ef5E0a4F50e199C7a0E0666857;
    // Blockhunters [blockhunters]
    address internal constant DVN_BLOCKHUNTERS = 0xD074B6bbCBEC2f2B4c4265DE3D95e521f82bF669;
    // Brale [brale]
    address internal constant DVN_BRALE = 0x66228c260B0EDF66aE74d127251102a5F146AE5e;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xf2E380c90e6c09721297526dbC74f870e114dfCb;
    // Chainlink [ccip]
    address internal constant DVN_CHAINLINK = 0x150A58e9E6BF69ccEb1DBA5ae97C166DC8792539;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x4066b6e7BfD761B579902E7e8D03F4feb9B9536E;
    // Delegate [delegate]
    address internal constant DVN_DELEGATE = 0xdf30C9f6A70cE65A152c5Bd09826525D7E97Ba49;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xEae839784e5F6C79bBaf34b6023a2f62e134AB39;
    // Flowdesk [flowdesk]
    address internal constant DVN_FLOWDESK = 0xc07125d75BfA05A0108De0f64c4D6Ebb12B357F6;
    // Frax [frax]
    address internal constant DVN_FRAX = 0xB42726e41dBE96fc4ea6d73Cd792167608353698;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN = 0x313328609a9C38459CaE56625FFf7F2AD6dcde3b;
    // Gitcoin [gitcoin]
    address internal constant DVN_GITCOIN_2 = 0x82c1D3209E32BEB7A55069B2C8AF5b6F62e2DBD1;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x19670Df5E16bEa2ba9b9e68b48C054C5bAEa06B8;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x5cfF49d69D79d677Dd3E5B38E048A0DCB6d86aaf;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x758C419533ad64Ce9D3413BC8d3A97B026098EC1;
    // Lagrange [lagrange-labs]
    address internal constant DVN_LAGRANGE = 0x021e401C2a1A60618c5E6353A40524971Eba1E8D;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x2f55C492897526677C5B68fb199ea31E2c126416;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x1308151a7ebaC14f435d3Ad5fF95c34160D539A5;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x54dD79f5cE72b51FCBbcb170Dd01E32034323565;
    // MIM [mim]
    address internal constant DVN_MIM = 0x9E930731cb4A6bf7eCc11F695A295c60bDd212eB;
    // Mantle Bank [mantle-bank]
    address internal constant DVN_MANTLE_BANK = 0x50fF206140CadADA2d9d510F1A184Be9221d86cF;
    // Muon [muon]
    address internal constant DVN_MUON = 0xA3858e2A9860C935Fc9586a617e9b2A674C3e4c8;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x01F9aAD7c53626bF8807d640D9Ddf852254D6f63;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x14E570a1684c7ca883b35e1B25D2F7CEc98a16cd;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xa7b5189bcA84Cd304D8553977c7C614329750d99;
    // Nocturnal [nocturnal-labs]
    address internal constant DVN_NOCTURNAL = 0xfDd2e77A6adDC1e18862f43297500d2eBFbD94ac;
    // Nodesguru [nodes-guru]
    address internal constant DVN_NODESGURU = 0xD954bF7968eF68875c9100c9ec890f969504d120;
    // Nodit [nodit]
    address internal constant DVN_NODIT = 0x4c41b4EDf85DEe828C2cFcc80019CB2BbCFb69a5;
    // Omnicat [omnicat]
    address internal constant DVN_OMNICAT = 0xd1C70192CC0eb9a89e3D9032b9FAcab259A0a1e9;
    // Omnix [omni-x]
    address internal constant DVN_OMNIX = 0xabEa0b6B9237b589e676dC16f6D74Bf7612591f4;
    // Ondo [ondo]
    address internal constant DVN_ONDO = 0x4708a19824bfe71262A91cDefA36ce21CBFfafE1;
    // Ondo Staging [ondo-staging]
    address internal constant DVN_ONDO_STAGING = 0x2f2F1c6025E8Da125e2Afd73BA17d3cBDfE3d093;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xB3Ce0A5D132Cd9Bf965aBa435E650c55Edce0062;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0x8fa9eEf18c2A1459024f0B44714e5aCc1Ce7f5e8;
    // Paxos [paxos]
    address internal constant DVN_PAXOS = 0x8E5f5825602Bc5db725974Bb9e60677d4adC5fbe;
    // Planetarium [planetarium-labs]
    address internal constant DVN_PLANETARIUM = 0xe6CD8c2E46Ef396DF88048449e5B1C75172b40C3;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Restake [restake]
    address internal constant DVN_RESTAKE = 0x969A0bdd86A230345AD87A6a381DE5ED9E6cda85;
    // Shrapnel [mercury]
    address internal constant DVN_SHRAPNEL = 0x7B8a0fD9D6ae5011d5cBD3E85Ed6D5510F98c9Bf;
    // Stablelab [stablelab]
    address internal constant DVN_STABLELAB = 0xcd37CA043f8479064e10635020c65FfC005d36f6;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0xb0646Fb9028364aC1f04477271375EF32A8A5e62;
    // Stakingcabin (deprecated) [stakingcabin]
    address internal constant DVN_STAKINGCABIN_2 = 0x6268950B2d11AA0516007b6361f6ee3faCb3Cb14;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x5756a74e8e18D8392605bA667171962B2b2826B5;
    // Superduper [portal]
    address internal constant DVN_SUPERDUPER = 0x539008c98B17803A273eDf98aBA2d4414Ee3f4D7;
    // Superform [superform]
    address internal constant DVN_SUPERFORM = 0x5496d03d9065B08e5677E1c5D1107110Bb05d445;
    // Switchboard [switchboard]
    address internal constant DVN_SWITCHBOARD = 0xcced05c3667877B545285B25f19F794436A1c481;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA0Cc33Dd6f4819D473226257792AFe230EC3c67f;
    // Tapioca [pearlnet]
    address internal constant DVN_TAPIOCA = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0xa8b8575fA41c305953F519C7D288cd7741727C7b;
    // Ubisoft [ubisoft]
    address internal constant DVN_UBISOFT = 0x77aAF86B4466A67869667BaBe02c6Ebe7E7791d6;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0xeCB3ac94976F11a53ae74Af1f36FB89E247FAEEF;
    // Wyoming [wyoming]
    address internal constant DVN_WYOMING = 0xcB1b1d524D013a32E976A5963bd541C388Ec0517;
    // Zeeve [zeeve]
    address internal constant DVN_ZEEVE = 0x7151c89f6ba70d6aB845289E4ec706530FfAF3CB;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0x3b65E87E2A4690f14cae0483014259DeD8215adc;
}

library LayerZeroV2ArbitrumTestnet {
    // Chain metadata
    uint32 internal constant EID = 40143;
    uint256 internal constant CHAIN_ID = 421613;
    string internal constant CHAIN_NAME = "arbitrum-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNArbitrumTestnet {
    // Google (deprecated) [google-cloud]
    address internal constant DVN_GOOGLE = 0x33F5E99EA89B1c67887553c04928BDa8C1301171;
    // Nethermind (deprecated) [nethermind]
    address internal constant DVN_NETHERMIND = 0x3B057c9602ab708A83b37DA6F1f9De5bC1e8B515;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x9E13017d416cdf0816bcCaC744760Dd1C374cD20;
}

library LayerZeroV2ArbsepTestnet {
    // Chain metadata
    uint32 internal constant EID = 40231;
    uint256 internal constant CHAIN_ID = 421614;
    string internal constant CHAIN_NAME = "arbsep-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x54320b901FDe49Ba98de821Ccf374BA4358a8bf6);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x4f7cd4DA19ABB31b0eC98b9066B9e857B1bf9C0E);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x75Db67CDab2824970131D5aa9CECfC9F69c69636);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x91282bEf7b549732c6acE92778167E952F864A5e;
    address internal constant EXECUTOR = 0x5Df3a1cEbBD9c8BA7F8dF51Fd632A9aef8308897;
    address internal constant DEAD_DVN = 0xA85BE08A6Ce2771C730661766AACf2c8Bb24C611;
    address internal constant LZ_EXECUTOR = 0x569AA8BdAc7aa67837749bdBdb74Ad9ee4B073Bf;
}

library LayerZeroV2DVNArbsepTestnet {
    // AltLayer [altlayer]
    address internal constant DVN_ALTLAYER = 0x47cee39389206557f88118A54EFDbCE13b28B6a4;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x9f529527A6810F1b661Fb2AEea19378Ce5a2C23e;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0x0Fbb88Ff8d38cD1E917149CD14076852f13E088E;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0x500e6064CB1fE164974CC0a4fe9151928c870BbE;
    // Citrea [citrea]
    address internal constant DVN_CITREA = 0x5e352BBdE7376f817566927fB00b58d92d97E145;
    // Frax (deprecated) [frax]
    address internal constant DVN_FRAX = 0xC7E652A4aC4f3A872024Ba10B13Ea0c53731Af83;
    // Frax [frax]
    address internal constant DVN_FRAX_2 = 0xBC0C3eaeE5d759f0cE13A59ad3113080Ed7bd941;
    // Frax (deprecated) [frax]
    address internal constant DVN_FRAX_3 = 0xcDb4933d7F37560186Aca8FDadfD5a3B3e27B088;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xc6cec4e6b8F3DC87E676D06A24864081311EDa15;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xAeA6677ECe4534bB29A9C63A3475FDb02709f179;
    // Japan Blockchain Foundation [joc]
    address internal constant DVN_JAPAN_BLOCKCHAIN_FOUNDATION = 0x7c84fEb58183d3865E4e01d1b6C22bA2d227Dc23;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xA85BE08A6Ce2771C730661766AACf2c8Bb24C611;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x5C8C267174e1F345234FF5315D6cfd6716763BaC;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x53f488E93b4f1b60E8E83aa374dBe1780A1EE8a8;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x3a74F7174709842d3b8a14ce60B4AA2499F2A2F2;
    // Paxos [paxos]
    address internal constant DVN_PAXOS = 0x9051233c67a93020865CFe156429e0aFAB3e6B60;
    // TSS [tss]
    address internal constant DVN_TSS = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    // Wyoming [wyoming]
    address internal constant DVN_WYOMING = 0x2e25112230bec11C632361861EEb29b080023c47;
}

library LayerZeroV2AstarMainnet {
    // Chain metadata
    uint32 internal constant EID = 30210;
    uint256 internal constant CHAIN_ID = 592;
    string internal constant CHAIN_NAME = "astar-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x30C3074669d866933db74DF1Fbe4b3703e6ec139);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xF08f13c080fcc530B1C21DE827C27B7b66874DDc);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x62b2Ff8D0F725f5529F277F115084EBf9B4A5FAA;
    address internal constant EXECUTOR = 0x3C5575898f59c097681d1Fc239c2c6Ad36B7b41c;
    address internal constant DEAD_DVN = 0x6626D0739b2B04b70b372394274EB77CAd0824b2;
    address internal constant LZ_EXECUTOR = 0x1b8ec4C50b0905334f6F73D1C1a64bA6e15BDaB8;
}

library LayerZeroV2DVNAstarMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7A7dDC46882220a075934f40380d3A7e1e87d409;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x31B8c7CD7226eA79E833FaBDcCbcA0fa38d6E0a1;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6626D0739b2B04b70b372394274EB77CAd0824b2;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xE1975c47779EdAaABa31F64934A33Affd3CE15c2;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xB19A9370D404308040A9760678c8Ca28aFfbbb76;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2AstarTestnet {
    // Chain metadata
    uint32 internal constant EID = 40210;
    uint256 internal constant CHAIN_ID = 81;
    string internal constant CHAIN_NAME = "astar-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x3617dA335F75164809B540bA31bdf79DE6cB1Ee3);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xdBdC042321A87DFf222C6BF26be68Ad7b3d7543f);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x11E513aB8002d740434A131e1fD43126D985c5F1;
    address internal constant EXECUTOR = 0x9130D98D47984BF9dc796829618C36CBdA43EBb9;
    address internal constant LZ_EXECUTOR = 0x4b21Ad992A05Fb14e08df2cAF8d71A5c28b1f5E9;
}

library LayerZeroV2DVNAstarTestnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x44F29Fa5237e6BA7bC6DD2FBE758E11dDc5e67A6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x190deB4F8555872b454920d6047a04006eEE4cA9;
    // TSS [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2AuroraMainnet {
    // Chain metadata
    uint32 internal constant EID = 30211;
    uint256 internal constant CHAIN_ID = 1313161554;
    string internal constant CHAIN_NAME = "aurora-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1aCe9DD1BC743aD036eF2D92Af42Ca70A1159df5);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x000CC1A759bC3A15e664Ed5379E321Be5de1c9B6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4f8B7a7a346Da5c467085377796e91220d904c15;
    address internal constant EXECUTOR = 0xA2b402FFE8dd7460a8b425644B6B9f50667f0A61;
    address internal constant DEAD_DVN = 0x412CEc9FC5044bCba04ED6875729540cE35C6C6f;
    address internal constant LZ_EXECUTOR = 0x0b5E5452d0c9DA1Bb5fB0664F48313e9667d7820;
}

library LayerZeroV2DVNAuroraMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x70BF42C69173d6e33b834f59630DAC592C70b369;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xb4CaA217dD195B3B40eEe24b82c8093c2ea659cd;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x315b0e76A510607bB0F706B17716F426D5b385b8;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x045d70bf1939aF0489cb44533750A2E15c92D7D4;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x412CEc9FC5044bCba04ED6875729540cE35C6C6f;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xD4a903930f2c9085586cda0b11D9681EECb20D2f;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x34730f2570E6cff8B1C91FaaBF37D0DD917c4367;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xE11c808bC6099Abc9bE566C9017aa2Ab0f131d35;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2AuroraTestnet {
    // Chain metadata
    uint32 internal constant EID = 40201;
    uint256 internal constant CHAIN_ID = 1313161555;
    string internal constant CHAIN_NAME = "aurora-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x19D1198b0f43Ec076a897bF98dEb0FD1D6CE8B9f);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x0E91e0239971B6CF7519e458a742e2eA4Ffb7458);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x44220D45796ECDf3254771C6715bfbc985240709;
    address internal constant EXECUTOR = 0x9dD6727B9636761ff50E375D0A7039BD5447ceDB;
    address internal constant LZ_EXECUTOR = 0xe514D331c54d7339108045bF4794F8d71cad110e;
}

library LayerZeroV2DVNAuroraTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x988D898a9Acf43f61FDBC72AAD6eB3f0542e19e1;
    // TSS [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2AvalancheMainnet {
    // Chain metadata
    uint32 internal constant EID = 30106;
    uint256 internal constant CHAIN_ID = 43114;
    string internal constant CHAIN_NAME = "avalanche-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x8839D3f169f473193423b402BDC4B5c51daAABDc);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x197D1333DEA5Fe0D6600E9b396c7f1B1cFCc558a);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xbf3521d309642FA9B1c91A08609505BA09752c61);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x5cDc927876031B4Ef910735225c425A7Fc8efed9;
    address internal constant EXECUTOR = 0x90E595783E43eb89fF07f63d27B8430e6B44bD9c;
    address internal constant DEAD_DVN = 0x90cCA24D1338Bd284C25776D9c12f96764Bde5e1;
    address internal constant LZ_EXECUTOR = 0x45d7C6808De24F70480d5947cE2081BA8C9C57F5;
}

library LayerZeroV2DVNAvalancheMainnet {
    // 01node [01node]
    address internal constant DVN_01NODE = 0xA80AA110f05C9C6140018aAE0C4E08A70f43350d;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB = 0xab82E9b24004b954985528dAc14D1B020722a3c8;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB_2 = 0xFfe42DC3927A240f3459e5ec27EAaBD88727173E;
    // AltLayer [altlayer]
    address internal constant DVN_ALTLAYER = 0x8EfB6b7dC61C6B6638714747d5E6B81a3512b5C3;
    // Axelar [axelar]
    address internal constant DVN_AXELAR = 0xc390Fd7Ca590a505655eB6c454ed0783C99a2Ea9;
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7B8a0fD9D6ae5011d5cBD3E85Ed6D5510F98c9Bf;
    // BCW [bcw]
    address internal constant DVN_BCW_2 = 0x7a42a1C1deBa75756F9Af12bee6B29CFC2BE3d70;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xcFf5b0608Fa638333f66e0dA9d4f1eB906Ac18e3;
    // Bera [bera]
    address internal constant DVN_BERA = 0xF18F2C3d86Ec9A350D5E10Cb67c614201f210D3D;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0x07ff86c392588254Ad10F0811dbBcad45f4C7d87;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0xc18d69d1a83294d0886E1b79f241405F1fA86cB6;
    // Blockhunters [blockhunters]
    address internal constant DVN_BLOCKHUNTERS = 0xD074B6bbCBEC2f2B4c4265DE3D95e521f82bF669;
    // Brale [brale]
    address internal constant DVN_BRALE = 0xc4A92AFB196657D08B688B1Bc60b6b0DA5e7551f;
    // CCIP [ccip]
    address internal constant DVN_CCIP = 0xd46270746acBcA85Dab8dE1CE1d71c46C2F2994C;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xcC49E6fca014c77E1Eb604351cc1E08C84511760;
    // Chainlink [ccip]
    address internal constant DVN_CHAINLINK = 0x150A58e9E6BF69ccEb1DBA5ae97C166DC8792539;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x6821Ea3d3a52421D2b7DF330f2316eD157314d7f;
    // Delegate [delegate]
    address internal constant DVN_DELEGATE = 0x83d06212b6647B0d0865e730270751e3FDF5036E;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xbe57e9E7d9eB16B92C6383792aBe28D64a18c0F1;
    // EigenZero [eigenzero]
    address internal constant DVN_EIGENZERO = 0xD3333aA4fA669D3eB036676ec01CB0ACaaEc0cc0;
    // Flowdesk [flowdesk]
    address internal constant DVN_FLOWDESK = 0x795c62387ef3022b61F2C705BfBE5d94a78B971d;
    // Frax [frax]
    address internal constant DVN_FRAX = 0xfe4c37cd401F58eE0bF4D214447bF306C2BBd41B;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN = 0xcced05c3667877B545285B25f19F794436A1c481;
    // Gitcoin [gitcoin]
    address internal constant DVN_GITCOIN_2 = 0xe9d8f20AE42E4634B07b9c994e23CE71c266D205;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x1a5Df1367F21d55B13D5E2f8778AD644BC97aC6d;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x07C05EaB7716AcB6f83ebF6268F8EECDA8892Ba1;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x90cCA24D1338Bd284C25776D9c12f96764Bde5e1;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x0Ffe02DF012299A370D5dd69298A5826EAcaFdF8;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x962F502A63F5FBeB44DC9ab932122648E8352959;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0xE4193136B92bA91402313e95347c8e9FAD8d27d0;
    // MIM [mim]
    address internal constant DVN_MIM = 0xF45742BbfaBCEe739eA2a2d0BA2dd140F1f2C6A3;
    // Muon [muon]
    address internal constant DVN_MUON = 0xA3858e2A9860C935Fc9586a617e9b2A674C3e4c8;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0xc816Afa2f1C4Ab615fE735270D1831fa7D067D15;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xa59BA433ac34D2927232918Ef5B2eaAfcF130BA5;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x1308151a7ebaC14f435d3Ad5fF95c34160D539A5;
    // Nocturnal [nocturnal-labs]
    address internal constant DVN_NOCTURNAL = 0xbD836C4c9d2c3fF94718173b463054c3e2c11CF4;
    // Nodesguru [nodes-guru]
    address internal constant DVN_NODESGURU = 0xD251D8a85cDfC84518b9454EE6a8D017E503F56C;
    // Nodit [nodit]
    address internal constant DVN_NODIT = 0x0F56cE0cA0595792Db727A21596edc2fd39be444;
    // Omnix [omni-x]
    address internal constant DVN_OMNIX = 0x21cAF0BCE846AAA78C9f23C5A4eC5988EcBf9988;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xE94aE34DfCC87A61836938641444080B98402c75;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0x2b8CBEa81315130A4C422e875063362640ddFeB0;
    // Paxos (deprecated) [paxos]
    address internal constant DVN_PAXOS = 0x41eF29F974FC9F6772654F005271C64210425391;
    // Planetarium [planetarium-labs]
    address internal constant DVN_PLANETARIUM = 0x2AC038606fff3FB00317B8F0CcFB4081694aCDD0;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Republic [republic-crypto]
    address internal constant DVN_REPUBLIC = 0x1feB08B1A53A9710AfcE82D380B8c2833C69a37e;
    // Restake [restake]
    address internal constant DVN_RESTAKE = 0x377B51593a03B82543c1508fE7e75Aba6acDE008;
    // Shrapnel [mercury]
    address internal constant DVN_SHRAPNEL = 0x6A110d94e1baA6984A3d904bab37Ae49b90E6B4f;
    // Stablelab [stablelab]
    address internal constant DVN_STABLELAB = 0x5fddD320a1e29bB466Fa635661b125D51D976f92;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0xb6323Aa5A3FC07d93A3cf0F1044447F2a88B7dAb;
    // Stakingcabin (deprecated) [stakingcabin]
    address internal constant DVN_STAKINGCABIN_2 = 0x54dD79f5cE72b51FCBbcb170Dd01E32034323565;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x252B234545e154543Ad2784c7111Eb90406be836;
    // Superduper [portal]
    address internal constant DVN_SUPERDUPER = 0x0E95cf21aD9376A26997c97f326C5A0a267bB8FF;
    // Superform [superform]
    address internal constant DVN_SUPERFORM = 0x8fb0B7D74B557e4b45EF89648BAc197EAb2E4325;
    // Switchboard [switchboard]
    address internal constant DVN_SWITCHBOARD = 0x92ef4381a03372985985E70fb15E9F081E2e8D14;
    // TSS [tss]
    address internal constant DVN_TSS = 0x5a54fe5234E811466D5366846283323c954310B2;
    // Tapioca [pearlnet]
    address internal constant DVN_TAPIOCA = 0xD24972c11F91c1bB9eaEe97ec96bB9c33cF7af24;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x375C76c6E8ec55A358e6A8c72fe233d0D4a96bEE;
    // Ubisoft [ubisoft]
    address internal constant DVN_UBISOFT = 0xc86D023C11c5e8aA731F40b65158590624d242aF;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x6995acD4AE604f8f334F5309A75232544F78E0c9;
    // Wyoming [wyoming]
    address internal constant DVN_WYOMING = 0xDa4428ff0f15B9D92C39aE08c4fc2F1216662c2f;
    // Zeeve [zeeve]
    address internal constant DVN_ZEEVE = 0x65c41255c7f49A4B728676A0Ede4a1329Ff6911A;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0xe552485d02EDd3067FE7FCbD4dd56BB1D3A998D2;
}

library LayerZeroV2AvalancheTestnet {
    // Chain metadata
    uint32 internal constant EID = 40106;
    uint256 internal constant CHAIN_ID = 43113;
    string internal constant CHAIN_NAME = "avalanche-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x69BF5f48d2072DfeBc670A1D19dff91D0F4E8170);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x819F0FAF2cb1Fba15b9cB24c9A2BDaDb0f895daf);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x31fFd858c7826817F830C3dF2bb2A74126d51126;
    address internal constant EXECUTOR = 0xa7BFA9D51032F82D649A501B6a1f922FC2f7d4e3;
    address internal constant LZ_EXECUTOR = 0x1356D9201036A216836925803512649d6BB2395e;
}

library LayerZeroV2DVNAvalancheTestnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x0d88aB4C8E8f89D8d758cBD5A6373F86F7BD737b;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0x8Ca279897cDe74350bD880737fD60c047D6D3d64;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0xA1d84E5576299aCDa9fFed53195EadBE60d48E83;
    // Brale [brale]
    address internal constant DVN_BRALE = 0x3Ae2F70F6c2F0136762C4CEBfdF632117D57B00F;
    // Delegate [delegate]
    address internal constant DVN_DELEGATE = 0xe0F3389bf8a8AA1576B420d888cD462483FDc2a0;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN = 0x071Fbf35b35D48Afc3Edf84F0397980C25531560;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xa4652582077AFC447EA7c9E984d656Ee4963FE95;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xbC00Fc17dB9aE7C5CC957932688a686cAB095936;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9f0e79Aeb198750F963b6f30B99d87c6EE5A0467;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x7883f83eA40a56137a63baf93bfEE5B9b8C1C447;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xdbEc329A5e6d7fb0113eb0A098750d2aFD61E9Ae;
    // Republic [republic-crypto]
    address internal constant DVN_REPUBLIC = 0xEfDD92121Acb3aCD6e2f09DD810752d8dA3dFDAf;
    // Stablelab [stablelab]
    address internal constant DVN_STABLELAB = 0xfDE647565009B33B1Df02689d5873bffFf15D907;
    // Switchboard [switchboard]
    address internal constant DVN_SWITCHBOARD = 0xca5AB7ADcd3eA879F1A1C4eeE81EACcd250173E4;
    // TSS [tss]
    address internal constant DVN_TSS = 0x92Cfdb3789693C2ae7225fCc2C263de94D630be4;
    // Wyoming [wyoming]
    address internal constant DVN_WYOMING = 0x1fb2466534B57F3CF5340E8ccd1c1c8fbe2c4271;
}

library LayerZeroV2BahamutMainnet {
    // Chain metadata
    uint32 internal constant EID = 30363;
    uint256 internal constant CHAIN_ID = 5165;
    string internal constant CHAIN_NAME = "bahamut-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNBahamutMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x4FE90e0f2A99e464d6E97B161d72101CD03C20fe;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
}

library LayerZeroV2BahamutTestnet {
    // Chain metadata
    uint32 internal constant EID = 40347;
    uint256 internal constant CHAIN_ID = 2552;
    string internal constant CHAIN_NAME = "bahamut-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNBahamutTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD_2 = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2BartioTestnet {
    // Chain metadata
    uint32 internal constant EID = 40291;
    uint256 internal constant CHAIN_ID = 80084;
    string internal constant CHAIN_NAME = "bartio-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2DVNBartioTestnet {
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2BaseMainnet {
    // Chain metadata
    uint32 internal constant EID = 30184;
    uint256 internal constant CHAIN_ID = 8453;
    string internal constant CHAIN_NAME = "base-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x1273141a3f7923AA2d9edDfA402440cE075ed8Ff);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xB5320B0B3a13cC860893E2Bd79FCd7e13484Dda2);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xc70AB6f32772f59fBfc23889Caf4Ba3376C84bAf);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x5e2A88c385B86f00eb8F4d9f861649a6feB93F24;
    address internal constant EXECUTOR = 0x2CCA08ae69E0C44b18a57Ab2A87644234dAebaE4;
    address internal constant DEAD_DVN = 0x6498b0632f3834D7647367334838111c8C889703;
    address internal constant LZ_EXECUTOR = 0x125BD5c6C5066dcb4BB448b6eA8b9234Ed60e160;
}

library LayerZeroV2DVNBaseMainnet {
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB = 0x41eF29F974FC9F6772654F005271C64210425391;
    // AltLayer (deprecated) [altlayer]
    address internal constant DVN_ALTLAYER = 0x8dEEC5B3DEb8640Bf79b334B59227454e0901953;
    // BCW [bcw]
    address internal constant DVN_BCW = 0xB3Ce0A5D132Cd9Bf965aBa435E650c55Edce0062;
    // BCW [bcw]
    address internal constant DVN_BCW_2 = 0xD77a62b54EE18bCd667b6CD158d5A000182AF5cf;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0x133e9fB2D339D8428476A714B1113B024343811E;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO_2 = 0x7A3D18E2324536294CD6F054cDde7c994f40391A;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x554833698Ae0FB22ECC90B01222903fD62CA4B47;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x1a3A8421e48b7536f3F71d8B14A1449c90eFA909;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xc2A0C36f5939A14966705c7Cec813163FaEEa1F0;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x187cF227F81c287303ee765eE001e151347FAaA2;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x3a4636E9AB975d28d3Af808b4e1c9fd936374E30;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xa7b5189bcA84Cd304D8553977c7C614329750d99;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6498b0632f3834D7647367334838111c8C889703;
    // Lagrange [lagrange-labs]
    address internal constant DVN_LAGRANGE = 0xC50a49186aA80427aA3b0d3C2Cec19BA64222A29;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xB1473AC9f58FB27597a21710da9D1071841E8163;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x9e059a54699a285714207b43B055483E78FAac25;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0xa0AF56164F02bDf9d75287ee77c568889F11d5f2;
    // Mantle Bank [mantle-bank]
    address internal constant DVN_MANTLE_BANK = 0x761bC869351293c5572Ed5581E23e7D5D9C6D3d1;
    // Muon [muon]
    address internal constant DVN_MUON = 0xA3858e2A9860C935Fc9586a617e9b2A674C3e4c8;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x93aC538152E1BC4F093aE5666Ee9FD1d84f4f4bF;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xcd37CA043f8479064e10635020c65FfC005d36f6;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x658947BC7956aea0067a62Cf87ab02ae199Ef3f3;
    // Nocturnal [nocturnal-labs]
    address internal constant DVN_NOCTURNAL = 0xF4c489AfD83625F510947e63ff8F90dfEE0aE46C;
    // Omnicat [omnicat]
    address internal constant DVN_OMNICAT = 0xe6CD8c2E46Ef396DF88048449e5B1C75172b40C3;
    // Omnix [omni-x]
    address internal constant DVN_OMNIX = 0xeEdE111103535e473451311e26C3E6660b0F77e1;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x5b6735c66d97479cCD18294fc96B3084EcB2fa3f;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0xA9d11632eC5f9502D39afF28d66415F6CCa37544;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xcdF31d62140204C08853b547E64707110fBC6680;
    // Superform [superform]
    address internal constant DVN_SUPERFORM = 0xEb62f578497Bdc351dD650853a751135212fAF49;
    // TSS [tss]
    address internal constant DVN_TSS = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    // Ubisoft [ubisoft]
    address internal constant DVN_UBISOFT = 0x505E855810cb243b2f23e95fdbb8F28d22F87a8C;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x4873d56816F45eF341a8819d7039E4746Ed77C21;
    // Wyoming [wyoming]
    address internal constant DVN_WYOMING = 0xF80285eFb7518d5c79F4e98E3bAA59dA5eE79621;
    // Zeeve [zeeve]
    address internal constant DVN_ZEEVE = 0x6b34E842175C701F488E2Dd335A98caAEc49593F;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0x9E930731cb4A6bf7eCc11F695A295c60bDd212eB;
}

library LayerZeroV2BaseTestnet {
    // Chain metadata
    uint32 internal constant EID = 40160;
    uint256 internal constant CHAIN_ID = 84531;
    string internal constant CHAIN_NAME = "base-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNBaseTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x53fd4C4fBBd53F6bC58CaE6704b92dB1f360A648;
}

library LayerZeroV2BasesepTestnet {
    // Chain metadata
    uint32 internal constant EID = 40245;
    uint256 internal constant CHAIN_ID = 84532;
    string internal constant CHAIN_NAME = "basesep-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x29270F0CFC54432181C853Cd25E2Fb60A68E03f2);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC1868e054425D378095A003EcbA3823a5D0135C9);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x12523de19dc41c91F7d2093E0CFbB76b17012C8d);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant EXECUTOR = 0x8A3D588D9f6AC041476b094f97FF94ec30169d3D;
    address internal constant DEAD_DVN = 0x78551ADC2553EF1858a558F5300F7018Aad2FA7e;
    address internal constant LZ_EXECUTOR = 0xD8C74c92a59c2b5b6390eD54f13193C59249e561;
}

library LayerZeroV2DVNBasesepTestnet {
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0xfa1a1804eFFeC9000F75CD15d16d18B05738d467;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0xdf04ABb599c7B37dD5FfC0f8E94f6898120874eF;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xe1cdD37c13450bc256A39D27B1e1B5d1BC26ddE2;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xB1B2319767B86800C4CFe8623a72C00D9d90cFb6;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x78551ADC2553EF1858a558F5300F7018Aad2FA7e;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xbf6FF58f60606EdB2F190769B951D825BCb214E2;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xd9222CC3Ccd1DF7c070d700EA377D4aDA2B86Eb5;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x63ef73671245D1A290F2a675Be9D906090f72a8D;
}

library LayerZeroV2Bb1Mainnet {
    // Chain metadata
    uint32 internal constant EID = 30234;
    uint256 internal constant CHAIN_ID = 2525;
    string internal constant CHAIN_NAME = "bb1-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x000CC1A759bC3A15e664Ed5379E321Be5de1c9B6);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe9AE261D3aFf7d3fCCF38Fa2d612DD3897e07B2d);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xe9bA4C1e76D874a43942718Dafc96009ec9D9917;
    address internal constant EXECUTOR = 0xB041cd355945627BDb7281f613B6E29623ab0110;
    address internal constant DEAD_DVN = 0x3aA71d4C322eD650a78BC3A8BAB292e47a214A2c;
    address internal constant LZ_EXECUTOR = 0x15feEA944A7F4eE4835c59ABC488C1935f2301b4;
}

library LayerZeroV2DVNBb1Mainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x2A22804Cfa992D5cb1324863ec4aDa920256B908;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xC9c1B26505bf3f4D6562159a119f6eDe1e245DeB;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x3aA71d4C322eD650a78BC3A8BAB292e47a214A2c;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xb21f945e8917c6Cd69FcFE66ac6703B90f7fe004;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // TSS [tss]
    address internal constant DVN_TSS = 0x3A73033C0b1407574C76BdBAc67f126f6b4a9AA9;
}

library LayerZeroV2BepoliaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40371;
    uint256 internal constant CHAIN_ID = 80069;
    string internal constant CHAIN_NAME = "bepolia-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNBepoliaTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2BeraMainnet {
    // Chain metadata
    uint32 internal constant EID = 30362;
    uint256 internal constant CHAIN_ID = 80094;
    string internal constant CHAIN_NAME = "bera-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xA79c7375fE2B68F56825C221e5Ea9fBbB5d42EDC);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNBeraMainnet {
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB = 0xa2d10677441230C4AeD58030e4EA6Ba7Bfd80393;
    // Bera [bera]
    address internal constant DVN_BERA = 0x10473BD2f7320476B5E5E59649e3Dc129d9d0029;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xdfF3F73C260b3361d4F006B02972c6aF6C5c5417;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x06e8042729CeF3aE6D6DB5350f48F9D736C3675d;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x0273fbfF931704884668a9eFe50e7a2b3FC30505;
    // FBTC [fbtc]
    address internal constant DVN_FBTC = 0xE900e073BADaFdC6F72541F34E6b701bde835487;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x559A194dAe0508342e7CE1aD96e7E90A77F8BC4c;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xeCbaA45c33ce6Fa284995e5F8314f5bC7F1C2008;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x59B5042691BD2Fd3700cEB9A4c7630be3eCF9484;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x5933A371EA26E11318389Ee3322aE3ec16463502;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0xFd4d23EB5CeA65f6CC7eEC8f3b394e55AED68299;
    // MIM [mim]
    address internal constant DVN_MIM = 0x73DDc92E39aEdA95FEb8D3E0008016d9F1268c76;
    // Mantle Bank [mantle-bank]
    address internal constant DVN_MANTLE_BANK = 0x88a8b858c7fCB3Fe0052c9b7bcC69183a9cebD76;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x00A979a5D306E9c5F8Cf473659e75f8002E06fc8;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x2Da965594E1F2D7d42569Ab9127847D7A4Bf38FF;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x3b247F1B48F055EbF2DB593672B98C9597E3081E;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0x4055fAd06ded1F57A1b4D07455665a9Bbc33C700;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x6E70FCdc42D3d63748B7d8883399Dcb16BBB5c8c;
    // TSS [tss]
    address internal constant DVN_TSS = 0x306B9a8953B9462F8b826e6768a93C8EA7454965;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0xd01ae6905d48315f7bE10C7330aeCF8360Ef5b12;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x575d0De08426223896d9Cd4bBaF4C02C9a7Dc8c6;
}

library LayerZeroV2BeraTestnet {
    // Chain metadata
    uint32 internal constant EID = 40256;
    uint256 internal constant CHAIN_ID = 80084;
    string internal constant CHAIN_NAME = "bera-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xB0487596a0B62D1A71D0C33294bd6eB635Fc6B09);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x073f5b4FdF17BBC16b0980d49f6C56123477bb51);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x53fd4C4fBBd53F6bC58CaE6704b92dB1f360A648;
    address internal constant EXECUTOR = 0x9A289B849b32FF69A95F8584a03343a33Ff6e5Fd;
    address internal constant LZ_EXECUTOR = 0x8dF53a660a00C3D977d7E778fB7385ECf4482D16;
}

library LayerZeroV2DVNBeraTestnet {
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0xd506Ac2B77228Cc3EB48f620CB78085F5A642154;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2Besu1Testnet {
    // Chain metadata
    uint32 internal constant EID = 40288;
    uint256 internal constant CHAIN_ID = 1337;
    string internal constant CHAIN_NAME = "besu1-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
    address internal constant LZ_EXECUTOR = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2DVNBesu1Testnet {
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xB0487596a0B62D1A71D0C33294bd6eB635Fc6B09;
}

library LayerZeroV2BevmMainnet {
    // Chain metadata
    uint32 internal constant EID = 30317;
    uint256 internal constant CHAIN_ID = 11501;
    string internal constant CHAIN_NAME = "bevm-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNBevmMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x4FE90e0f2A99e464d6E97B161d72101CD03C20fe;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // TSS [tss]
    address internal constant DVN_TSS = 0x6c47E59BC0600942146BF37668fc92b369C85ab7;
}

library LayerZeroV2BevmTestnet {
    // Chain metadata
    uint32 internal constant EID = 40324;
    uint256 internal constant CHAIN_ID = 11503;
    string internal constant CHAIN_NAME = "bevm-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNBevmTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2BitlayerMainnet {
    // Chain metadata
    uint32 internal constant EID = 30314;
    uint256 internal constant CHAIN_ID = 200901;
    string internal constant CHAIN_NAME = "bitlayer-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNBitlayerMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x95729Ea44326f8adD8A9b1d987279DBdC1DD3dFf;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
}

library LayerZeroV2BitlayerTestnet {
    // Chain metadata
    uint32 internal constant EID = 40320;
    uint256 internal constant CHAIN_ID = 200810;
    string internal constant CHAIN_NAME = "bitlayer-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNBitlayerTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x743178C017952aA88d7F17C1676DCB81d308ACb6;
}

library LayerZeroV2Bl2Testnet {
    // Chain metadata
    uint32 internal constant EID = 40331;
    uint256 internal constant CHAIN_ID = 71461164656;
    string internal constant CHAIN_NAME = "bl2-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNBl2Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2Bl3Testnet {
    // Chain metadata
    uint32 internal constant EID = 40346;
    uint256 internal constant CHAIN_ID = 80000;
    string internal constant CHAIN_NAME = "bl3-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNBl3Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2Bl4Mainnet {
    // Chain metadata
    uint32 internal constant EID = 30337;
    string internal constant CHAIN_NAME = "bl4-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNBl4Mainnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
}

library LayerZeroV2Bl5Mainnet {
    // Chain metadata
    uint32 internal constant EID = 30338;
    string internal constant CHAIN_NAME = "bl5-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNBl5Mainnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
}

library LayerZeroV2Bl6Testnet {
    // Chain metadata
    uint32 internal constant EID = 40357;
    uint256 internal constant CHAIN_ID = 996353;
    string internal constant CHAIN_NAME = "bl6-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNBl6Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2BlastMainnet {
    // Chain metadata
    uint32 internal constant EID = 30243;
    uint256 internal constant CHAIN_ID = 81457;
    string internal constant CHAIN_NAME = "blast-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x3b4453D9e884dA5A8C917Ab7679D66c92069e7F7);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x377530cdA84DFb2673bF4d145DCF0C4D7fdcB5b6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x73Dd395E80A2dD6D88dB11E69f15d534D182F019;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNBlastMainnet {
    // Axelar [axelar]
    address internal constant DVN_AXELAR = 0xB830a5AfCBEBb936c30C607a18BbbA9f5B0a592f;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x6398E91001Cc1682bBA103E6B2489Fa5675a5a64;
    // Frax [frax]
    address internal constant DVN_FRAX = 0xfa06f93ad99825114C8f8738943734b07FdD162F;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x70BF42C69173d6e33b834f59630DAC592C70b369;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x73Dd395E80A2dD6D88dB11E69f15d534D182F019;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Omnicat [omnicat]
    address internal constant DVN_OMNICAT = 0x25e0e650a78e6304A3983Fc4b7Ffc6544b1bEea6;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x0ff4cc28826356503BB79c00637bec0eE006f237;
    // Superform [superform]
    address internal constant DVN_SUPERFORM = 0x0E95cf21aD9376A26997c97f326C5A0a267bB8FF;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0x1383981c78393b36f59c4F8F4f12f1B4eB249eBF;
}

library LayerZeroV2BlastTestnet {
    // Chain metadata
    uint32 internal constant EID = 40243;
    uint256 internal constant CHAIN_ID = 168587773;
    string internal constant CHAIN_NAME = "blast-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x701f3927871EfcEa1235dB722f9E608aE120d243);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9dB9Ca3305B48F196D18082e91cB64663b13d014);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant EXECUTOR = 0xE62d066e71fcA410eD48ad2f2A5A860443C04035;
    address internal constant LZ_EXECUTOR = 0x9454f0EABc7C4Ea9ebF89190B8bF9051A0468E03;
}

library LayerZeroV2DVNBlastTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x939Afd54A8547078dBEa02b683A7F1FDC929f853;
}

library LayerZeroV2BleTestnet {
    // Chain metadata
    uint32 internal constant EID = 40330;
    uint256 internal constant CHAIN_ID = 52085143;
    string internal constant CHAIN_NAME = "ble-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa97f783E717567ab8d0fc72110714F4fa7967373;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
    address internal constant EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    address internal constant DEAD_DVN = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x4dFa426aEAA55E6044d2b47682842460a04aF45c;
}

library LayerZeroV2DVNBleTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x55c175DD5b039331dB251424538169D8495C18d1;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
}

library LayerZeroV2BlockgenTestnet {
    // Chain metadata
    uint32 internal constant EID = 40177;
    string internal constant CHAIN_NAME = "blockgen-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNBlockgenTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C;
}

library LayerZeroV2BobMainnet {
    // Chain metadata
    uint32 internal constant EID = 30279;
    uint256 internal constant CHAIN_ID = 60808;
    string internal constant CHAIN_NAME = "bob-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant DEAD_DVN = 0x11bA0F5c3832044A416B2E177EA773eceBCCEE1f;
    address internal constant LZ_EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
}

library LayerZeroV2DVNBobMainnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x58DfF8622759eA75910a08DBA5D060579271dcD7;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xaA391622e42aE501371CD745CE0BAD588a8C65fd;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x46d6E532A913cDf688fb7863Ce1CF360a81Ec5E4;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xf2067660520F79eB7a8326Dc1266DCE0167D64E7;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x11bA0F5c3832044A416B2E177EA773eceBCCEE1f;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // TSS [tss]
    address internal constant DVN_TSS = 0xbB2753C1B940363d278c81D6402fA89E79Ab4ebc;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x8bAFe0299CB4D3fF75d3f7045554474Bf414FD11;
}

library LayerZeroV2BobTestnet {
    // Chain metadata
    uint32 internal constant EID = 40279;
    uint256 internal constant CHAIN_ID = 111;
    string internal constant CHAIN_NAME = "bob-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2DVNBobTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2BotanixMainnet {
    // Chain metadata
    uint32 internal constant EID = 30376;
    uint256 internal constant CHAIN_ID = 3637;
    string internal constant CHAIN_NAME = "botanix-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNBotanixMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xbCefdAdB8d24b1d36c26B522235012Cd4cf162f6;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x7A3D18E2324536294CD6F054cDde7c994f40391A;
    // Frax [frax]
    address internal constant DVN_FRAX = 0xf835Af1DceA24C255149E0ad7C9FF1a5E8611Fa2;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x713d826aaa1f974c1dc0472fC71219e93c3B1614;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xA4281c1c88F0278FF696eDeb517052153190FC9E;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
}

library LayerZeroV2BotanixTestnet {
    // Chain metadata
    uint32 internal constant EID = 40281;
    uint256 internal constant CHAIN_ID = 3636;
    string internal constant CHAIN_NAME = "botanix-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNBotanixTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2BouncebitMainnet {
    // Chain metadata
    uint32 internal constant EID = 30293;
    uint256 internal constant CHAIN_ID = 6001;
    string internal constant CHAIN_NAME = "bouncebit-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x1F7E674143031e74bc48a0c570c174A07aA9C5d0;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNBouncebitMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x8D77D35604A9f37f488E41D1d916b2A0088F82Dd;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x1F7E674143031e74bc48a0c570c174A07aA9C5d0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
}

library LayerZeroV2BouncebitTestnet {
    // Chain metadata
    uint32 internal constant EID = 40289;
    uint256 internal constant CHAIN_ID = 6000;
    string internal constant CHAIN_NAME = "bouncebit-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2DVNBouncebitTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2BscMainnet {
    // Chain metadata
    uint32 internal constant EID = 30102;
    uint256 internal constant CHAIN_ID = 56;
    string internal constant CHAIN_NAME = "bsc-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x37375049CDc522Bd6bAeEbf527A42D54688d784c);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x9F8C645f2D0b2159767Bd6E0839DE4BE49e823DE);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xB217266c3A98C8B2709Ee26836C98cf12f6cCEC1);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x40B36b785A6872b40Cd6957Ce211E515E1be1081;
    address internal constant EXECUTOR = 0x3ebD570ed38B1b3b4BC886999fcF507e9D584859;
    address internal constant DEAD_DVN = 0xe9b5E4f9395a60799F4F608Ba3ABebDfC0ee6D9C;
    address internal constant LZ_EXECUTOR = 0x821A99C061C00f6C9da0302AAec348945Ba40284;
}

library LayerZeroV2DVNBscMainnet {
    // 01node [01node]
    address internal constant DVN_01NODE = 0x8Fc629aa400D4D9c0B118F2685a49316552ABf27;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB = 0x313328609a9C38459CaE56625FFf7F2AD6dcde3b;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB_2 = 0xD4925B81f62457caCA368412315D230535b9a48a;
    // AltLayer [altlayer]
    address internal constant DVN_ALTLAYER = 0xDb979D0A36aF0525AFa60Fc265B1525505c55D79;
    // Axelar [axelar]
    address internal constant DVN_AXELAR = 0x878c20D3685cdBc5e2680A8a0E7FB97389344fe1;
    // BCW [bcw]
    address internal constant DVN_BCW = 0xd36246C322Ee102A2203bCA9cafb84c179D306F6;
    // BCW [bcw]
    address internal constant DVN_BCW_2 = 0x5246D80e5673251Eb1977ae9D07a93fbd8649963;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xfE1cD27827E16b07E61A4AC96b521bDB35e00328;
    // Bera [bera]
    address internal constant DVN_BERA = 0x8ed0A851964604BB1b6b1a703F4c8234EE684d76;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0xD791948db16AB4373FA394B74C727DDb7FB02520;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0xa2CEB887f545400B8247Dfb7E9cCAda7abAbBDE8;
    // Blockhunters [blockhunters]
    address internal constant DVN_BLOCKHUNTERS = 0x547bF6889B1095b7CC6e525A1F8E8Fdb26134a38;
    // Brale [brale]
    address internal constant DVN_BRALE = 0xbc625fC2dB9754fd4cD3CFb7dBaA81b9C6F6E2E2;
    // CCIP [ccip]
    address internal constant DVN_CCIP = 0x53561BcfE6B3F23BC72E5b9919c12322729942e8;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xfA9bA83C102283958B997Adc8B44ED3A3CdB5dDa;
    // Chainlink [ccip]
    address internal constant DVN_CHAINLINK = 0x150A58e9E6BF69ccEb1DBA5ae97C166DC8792539;
    // Curve [curve]
    address internal constant DVN_CURVE = 0xc6e1f0fc326913bD31fB11699c61F6f1F2A5e6d2;
    // Delegate [delegate]
    address internal constant DVN_DELEGATE = 0x9EEee79F5dBC4D99354b5CB547c138Af432F937b;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xf0a5C5306adbFd4e3dfD5d4B148B451c411d3878;
    // EigenZero [eigenzero]
    address internal constant DVN_EIGENZERO = 0x9188B373378D284C9174AE474C2B0A937924B34B;
    // Flowdesk [flowdesk]
    address internal constant DVN_FLOWDESK = 0x00E91548787Caf130D811EF1872f2Bc2C0583d90;
    // Frax [frax]
    address internal constant DVN_FRAX = 0xd4Bf35cE3BfC7F7D7dfC0694a7d4aA8b8c60a38c;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN = 0x2afa3787cd95fee5D5753cd717EF228eb259f4ea;
    // Gitcoin [gitcoin]
    address internal constant DVN_GITCOIN_2 = 0xE4b64c3a70cD7F7C38D48F66BA5Db9A41C485f64;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x81D8516Adae92b655aCaf6A04c9526716baeB849;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x247624e2143504730aeC22912ed41F092498bEf2;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xe9b5E4f9395a60799F4F608Ba3ABebDfC0ee6D9C;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x509889389cfB7A89850017425810116A44676F58;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xfD6865c841c2d64565562fCc7e05e619A30615f0;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x2c7185f5B0976397d9eB5c19d639d4005e6708f0;
    // MIM [mim]
    address internal constant DVN_MIM = 0x25e0e650a78e6304A3983Fc4b7Ffc6544b1bEea6;
    // Mantle03 [mantle03]
    address internal constant DVN_MANTLE03 = 0xEc65a0245c19A084650cB5B85FD1a2Bc7B0FD452;
    // Muon [muon]
    address internal constant DVN_MUON = 0xA3858e2A9860C935Fc9586a617e9b2A674C3e4c8;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x534C6b3e6805E9287ff1D49C349d5f7a01B9b7F5;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x31F748a368a893Bdb5aBB67ec95F232507601A73;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x0321A1B9e48cCdc5a8A32C524b858E10072ef798;
    // Nocturnal [nocturnal-labs]
    address internal constant DVN_NOCTURNAL = 0x48EcF6d66045aad8d75E72109489Ac29DA6066A9;
    // Nodesguru [nodes-guru]
    address internal constant DVN_NODESGURU = 0x1bab20E7FDc79257729CB596BEF85db76C44915E;
    // Nodit [nodit]
    address internal constant DVN_NODIT = 0xEeCE50190806fA57016028d31D8631419882401c;
    // Omnicat [omnicat]
    address internal constant DVN_OMNICAT = 0xdfF3F73C260b3361d4F006B02972c6aF6C5c5417;
    // Omnix [omni-x]
    address internal constant DVN_OMNIX = 0x5a4c666E9C7aA86FD4fBFDFbfd04646DcC45C6c5;
    // Ondo [ondo]
    address internal constant DVN_ONDO = 0x00efECF8714C2bC9376f8391f47a2fFce8BCDFEa;
    // Ondo Staging [ondo-staging]
    address internal constant DVN_ONDO_STAGING = 0x089E70BC883Ad0b6551e513bF7A71Ffd2059f9F1;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x439264FB87581a70Bb6D7bEFd16b636521B0Ad2D;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0x33E5fcC13D7439cC62d54c41AA966197145b3Cd7;
    // Paxos (deprecated) [paxos]
    address internal constant DVN_PAXOS = 0x82F6Ad698f3116Ca1B71836A7f1303628FA855DB;
    // Planetarium [planetarium-labs]
    address internal constant DVN_PLANETARIUM = 0x05AaEfDf9dB6E0f7d27FA3b6EE099EDB33dA029E;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Republic [republic-crypto]
    address internal constant DVN_REPUBLIC = 0xF7DDEE427507cdb6885E53CAAaa1973b1Fe29357;
    // Restake [restake]
    address internal constant DVN_RESTAKE = 0x4D52f5bc932cf1A854381A85ad9ED79B8497c153;
    // Shrapnel [mercury]
    address internal constant DVN_SHRAPNEL = 0xb4FA7f1C67E5Ec99B556Ec92CbDdBCdd384106F2;
    // Stablelab [stablelab]
    address internal constant DVN_STABLELAB = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // Stakingcabin (deprecated) [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0xd841A741Addcb6Dea735D3B8C9Faf96BA3f3d30D;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN_2 = 0xcCF6ee53aA0B7c7f190D2a7B273e7b04CCE14D21;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xac8de74CE0A44A5e73BBc709fe800406F58431e0;
    // Superduper [portal]
    address internal constant DVN_SUPERDUPER = 0xBD40c9047980500C46B8aed4462e2f889299FEbE;
    // Superform [superform]
    address internal constant DVN_SUPERFORM = 0xF4c489AfD83625F510947e63ff8F90dfEE0aE46C;
    // Switchboard [switchboard]
    address internal constant DVN_SWITCHBOARD = 0xf0809F6e760a5452Ee567975EdA7a28dA4a83D38;
    // TSS [tss]
    address internal constant DVN_TSS = 0x5a54fe5234E811466D5366846283323c954310B2;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x72F697797aC173F09eDa73Dd9C11a141376d2b57;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0xd29dCf66E264aA7d6833BdaC6b9279791a7c246B;
    // Zeeve [zeeve]
    address internal constant DVN_ZEEVE = 0x92453Ce02159F774f1c846a4A0693008ED020F59;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0xE5491Fac6965Aa664EFD6d1aE5e7D1d56Da4FDDa;
}

library LayerZeroV2BscTestnet {
    // Chain metadata
    uint32 internal constant EID = 40102;
    uint256 internal constant CHAIN_ID = 97;
    string internal constant CHAIN_NAME = "bsc-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x55f16c442907e86D764AFdc2a07C2de3BdAc8BB7);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x188d4bbCeD671A7aA2b5055937F79510A32e9683);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x9a8E38C2394A4ec94421750b96a67A5CeF75EbfE;
    address internal constant EXECUTOR = 0x31894b190a8bAbd9A067Ce59fde0BfCFD2B18470;
    address internal constant LZ_EXECUTOR = 0x2b8e58866f7312b97Bd66d76BC7d911721563B71;
}

library LayerZeroV2DVNBscTestnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x35fa068eC18631719A7f6253710Ba29aB5C5F3b7;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0x7BAa95C10Cc99c7687d31fC5b45B6b916362ed22;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO_2 = 0x16b711e3284E7C1d3b7EEd25871584AD8D946cAC;
    // Brale [brale]
    address internal constant DVN_BRALE = 0xD145588cb52ABb773836405fFB8209806f74866D;
    // Delegate [delegate]
    address internal constant DVN_DELEGATE = 0xCD02c60d6a23966bd74d435df235a941B35F4f5f;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x52Cd447B2C918fA13375f6e300c9722a23429B3E;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN = 0x6F978ee5bfd7b1A8085A3eA9e54eB76e668E195a;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0x6f99eA3Fc9206E2779249E15512D7248dAb0B52e;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x98a7ad52B970D9b350fdee17D3892bBE79d0132a;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x0eE552262f7B562eFcED6DD4A7e2878AB897d405;
    // Mantle01 [mantle01]
    address internal constant DVN_MANTLE01 = 0x1337AFd780b599b0af07FB0043226f02Bc7fe92F;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x6334290B7b4a365F3c0E79c85B1b42F078db78E4;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xd0A6fD2e542945d81D4ed82d8f4D25Cc09c65f7f;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x2dDf08e397541721acD82E5b8a1D0775454a180B;
    // Republic [republic-crypto]
    address internal constant DVN_REPUBLIC = 0x33bA0E70D74C72d3633870904244b57EdFb35Df7;
    // Stablelab [stablelab]
    address internal constant DVN_STABLELAB = 0xD05C27f2e47FbBA82adAAC2a5AdB71bA57a5B933;
    // Switchboard [switchboard]
    address internal constant DVN_SWITCHBOARD = 0x4eCBb26142a1f2233AEEE417Fd2F4Fb0eC6E0D78;
    // TSS [tss]
    address internal constant DVN_TSS = 0x53ccB44479b2666cf93F5e815F75738Aa5C6D3B9;
}

library LayerZeroV2CampMainnet {
    // Chain metadata
    uint32 internal constant EID = 30381;
    uint256 internal constant CHAIN_ID = 484;
    string internal constant CHAIN_NAME = "camp-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0xfd76d9CB0Bac839725aB79127E7411fe71b1e3CA;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNCampMainnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xfd76d9CB0Bac839725aB79127E7411fe71b1e3CA;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x15e51701F245F6D5bd0FEE87bCAf55B0841451B3;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x2F29D3d12fc2d1961Ad8B5397c0f878003c35e20;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x64a344a15e4DE73F393E345E6Bfe937F34ee1f90;
}

library LayerZeroV2CampTestnet {
    // Chain metadata
    uint32 internal constant EID = 40295;
    uint256 internal constant CHAIN_ID = 325000;
    string internal constant CHAIN_NAME = "camp-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNCampTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2CantoMainnet {
    // Chain metadata
    uint32 internal constant EID = 30159;
    uint256 internal constant CHAIN_ID = 7700;
    string internal constant CHAIN_NAME = "canto-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x61Ab01Ce58D1dFf3562bb25870020d555e39D849);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x6BD792911F4B3714E88FbDf32B351632e7d22c70);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x087ceBBd85A161A50F91b9d7743e8b89fC384e2e;
    address internal constant EXECUTOR = 0x8E721E1930B4559AcAfDf06eE591af2FFCB93b8D;
    address internal constant DEAD_DVN = 0x8B84482bd8BdD718DEa9b791eA76997EBb4F2D0E;
    address internal constant LZ_EXECUTOR = 0xef32f931ac53808e695B7eF3D1b6C5016024a68f;
}

library LayerZeroV2DVNCantoMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x73DDc92E39aEdA95FEb8D3E0008016d9F1268c76;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x8B84482bd8BdD718DEa9b791eA76997EBb4F2D0E;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x1BAcC2205312534375c8d1801C27D28370656cFf;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x809CDE2AfcF8627312E87a6a7bbFFaB3F8F347c7;
    // Omnicat [omnicat]
    address internal constant DVN_OMNICAT = 0x25e0e650a78e6304A3983Fc4b7Ffc6544b1bEea6;
    // TSS [tss]
    address internal constant DVN_TSS = 0x377530cdA84DFb2673bF4d145DCF0C4D7fdcB5b6;
}

library LayerZeroV2CantoTestnet {
    // Chain metadata
    uint32 internal constant EID = 40159;
    uint256 internal constant CHAIN_ID = 7701;
    string internal constant CHAIN_NAME = "canto-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x5Bb7F2FFF085f0066430Be92541Db302B9F1e6Af);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x5c68f65B7156cdDC79C1C6f32b3073eB8BBe6e58);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x18252d78a6A9aCBa9fec1cbDfD2Cf5f2c37A426F;
    address internal constant EXECUTOR = 0xcA01DAa8e559Cb6a810ce7906eC2AeA39BDeccE4;
    address internal constant LZ_EXECUTOR = 0x35Bf885a8E60048b46260f30B4F9b1DF7709F5d7;
}

library LayerZeroV2DVNCantoTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x032457E2c87376AD1D0AE8BbAda45d178c9968B3;
    // TSS [tss]
    address internal constant DVN_TSS = 0x3aCAAf60502791D199a5a5F0B173D78229eBFe32;
}

library LayerZeroV2CathayTestnet {
    // Chain metadata
    uint32 internal constant EID = 40171;
    string internal constant CHAIN_NAME = "cathay-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNCathayTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x3aCAAf60502791D199a5a5F0B173D78229eBFe32;
}

library LayerZeroV2CeloMainnet {
    // Chain metadata
    uint32 internal constant EID = 30125;
    uint256 internal constant CHAIN_ID = 42220;
    string internal constant CHAIN_NAME = "celo-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x14a6A3d612A04225df4825A365688F33DA4969De);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x42b4E9C6495B4cFDaE024B1eC32E09F28027620e);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xaDDed4478B423d991C21E525Cd3638FBce1AaD17);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6c47E59BC0600942146BF37668fc92b369C85ab7;
    address internal constant EXECUTOR = 0x1dDbaF8b75F2291A97C22428afEf411b7bB19e28;
    address internal constant DEAD_DVN = 0xc67f8f84d00A4908581B235F1Abe0FE3aFC8126F;
    address internal constant LZ_EXECUTOR = 0x552661d1C85F256E008eE2315103c80fd1E298DF;
}

library LayerZeroV2DVNCeloMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x94AAfe0A92A8300f0A2100A7f3DE47d6845747A9;
    // Curve [curve]
    address internal constant DVN_CURVE = 0xc4305B4a16cb631CBd34b33380FB8c221cdf63Ab;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xEa928f8E62F3DAc51288056015B1D4e3eCfacdAC;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x391A2021483cB476D059a78130f95165C79604b7;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x31F748a368a893Bdb5aBB67ec95F232507601A73;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xc67f8f84d00A4908581B235F1Abe0FE3aFC8126F;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x75b073994560A5c03Cd970414d9170be0C6e5c36;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xD4925B81f62457caCA368412315D230535b9a48a;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x82F6Ad698f3116Ca1B71836A7f1303628FA855DB;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x6CDe6B51d91e9D81B639Abb6552E5b1b04D98A0B;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x7E65BDd15C8Db8995F80aBf0D6593b57dc8BE437;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // TSS [tss]
    address internal constant DVN_TSS = 0x071c3F1bc3046c693c3ABBC03a87ca9A30e43bE2;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x18f76f0d8CCD176BbE59B3870fa486d1Fff87026;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0x1383981c78393b36f59c4F8F4f12f1B4eB249eBF;
}

library LayerZeroV2CeloTestnet {
    // Chain metadata
    uint32 internal constant EID = 40125;
    uint256 internal constant CHAIN_ID = 44787;
    string internal constant CHAIN_NAME = "celo-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x00432463F40E100F6A99fA2E60B09F0182D828DE);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xdb5A808eF72Aa3224D9fA6c15B717E8029B89a4f);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x92a0c779Df6EE9ebfAFC4eD87c0682a9A7eB2828;
    address internal constant EXECUTOR = 0x5468b60ed00F9b389B5Ba660189862Db058D7dC8;
    address internal constant LZ_EXECUTOR = 0x2665a6f509B2D1D30879fECC180Fc70B111cC8EA;
}

library LayerZeroV2DVNCeloTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xbef132Bc69C87f52D173d093A3F8B5B98842275F;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x449391D6812BCe0B0b86d32D752035FF5BE3f159;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xF29601aeD5Bd6cDee3CE2F1F8905E65aD8646957;
    // TSS [tss]
    address internal constant DVN_TSS = 0x894a918a9c2bFa6D32874E40eF4bBa75B820b17c;
}

library LayerZeroV2CitreaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40344;
    uint256 internal constant CHAIN_ID = 5115;
    string internal constant CHAIN_NAME = "citrea-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNCitreaTestnet {
    // Citrea [citrea]
    address internal constant DVN_CITREA = 0xe7e778f704EBc0598902cBF96C6748f3B96BC8d1;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2CodexMainnet {
    // Chain metadata
    uint32 internal constant EID = 30323;
    uint256 internal constant CHAIN_ID = 81224;
    string internal constant CHAIN_NAME = "codex-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNCodexMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x391A2021483cB476D059a78130f95165C79604b7;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x5131E3A44C499B11Bd694d1070635cf49EBFeBf3;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
}

library LayerZeroV2CodexTestnet {
    // Chain metadata
    uint32 internal constant EID = 40311;
    uint256 internal constant CHAIN_ID = 6513784;
    string internal constant CHAIN_NAME = "codex-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNCodexTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2ConcreteMainnet {
    // Chain metadata
    uint32 internal constant EID = 30366;
    uint256 internal constant CHAIN_ID = 12739;
    string internal constant CHAIN_NAME = "concrete-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNConcreteMainnet {
    // Horizen (deprecated) [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind (deprecated) [nethermind]
    address internal constant DVN_NETHERMIND = 0x047d9DBe4fC6B5c916F37237F547f9F42809935a;
}

library LayerZeroV2ConfluxMainnet {
    // Chain metadata
    uint32 internal constant EID = 30212;
    uint256 internal constant CHAIN_ID = 1030;
    string internal constant CHAIN_NAME = "conflux-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xb360A579Dc6f77d6a3E8710A9d983811129C428d);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x16Cc4EF7c128d7FEa96Cf46FFD9dD20f76170347);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x367766BD34572400C7a49B65F56efd5a4707A069;
    address internal constant EXECUTOR = 0x07Dd1bf9F684D81f59B6a6760438d383ad755355;
    address internal constant DEAD_DVN = 0x3E7647e24553d486eD1B1Db94B86C7677eA9aB65;
    address internal constant LZ_EXECUTOR = 0x3E9a1d9aC31B703Ac86874395a2410e123902AE9;
}

library LayerZeroV2DVNConfluxMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xE0F0FbBDBF9d398eCA0dd8c86d1F308D895b9Eb7;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x45A7305c65AAd28384F20a80F87a5183772E4F70;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x3E7647e24553d486eD1B1Db94B86C7677eA9aB65;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x8D183A062e99cad6f3723E6d836F9EA13886B173;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x809CDE2AfcF8627312E87a6a7bbFFaB3F8F347c7;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x38179D3BFa6Ef1d69A8A7b0b671BA3D8836B2AE8;
}

library LayerZeroV2ConfluxTestnet {
    // Chain metadata
    uint32 internal constant EID = 40211;
    uint256 internal constant CHAIN_ID = 71;
    string internal constant CHAIN_NAME = "conflux-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x9325bE62062a8844839C0fF9cbb0bA97b2d9EAF9);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x99710d5cd4650A0E6b34438d0bD860F5A426EFd6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xd6B89da4b5587A47578405A7BDb63772Cd24DD2A;
    address internal constant EXECUTOR = 0xE699078689c771383C8e262DCFeE520c9171ED53;
    address internal constant LZ_EXECUTOR = 0x4235F07eFE67afC9EcaD2B79B5df7479E7489425;
}

library LayerZeroV2DVNConfluxTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x62A731f0840d23970D5Ec36fb7A586E1d61dB9B6;
    // TSS [tss]
    address internal constant DVN_TSS = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
}

library LayerZeroV2ConvergeMainnet {
    // Chain metadata
    uint32 internal constant EID = 30400;
    uint256 internal constant CHAIN_ID = 432;
    string internal constant CHAIN_NAME = "converge-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNConvergeMainnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
}

library LayerZeroV2ConvergeTestnet {
    // Chain metadata
    uint32 internal constant EID = 40402;
    uint256 internal constant CHAIN_ID = 52085144;
    string internal constant CHAIN_NAME = "converge-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNConvergeTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2CoredaoMainnet {
    // Chain metadata
    uint32 internal constant EID = 30153;
    uint256 internal constant CHAIN_ID = 1116;
    string internal constant CHAIN_NAME = "coredao-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x0BcAC336466ef7F1e0b5c184aAB2867C108331aF);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x8F76bAcC52b5730c1f1A2413B8936D4df12aF4f6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xF08f13c080fcc530B1C21DE827C27B7b66874DDc;
    address internal constant EXECUTOR = 0x1785c94d31E3E3Ab1079e7ca8a9fbDf33EEf9dd5;
    address internal constant DEAD_DVN = 0xB872d80dD876FB59085872fB99b1aDE3dbef5390;
    address internal constant LZ_EXECUTOR = 0x53490de975969B34E537E541E19F26b15e368895;
}

library LayerZeroV2DVNCoredaoMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7A7dDC46882220a075934f40380d3A7e1e87d409;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xC133Fd6b4c44277eD592E903C0585936D7585Fa5;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xDe79818C75649773Fc462E9d3134b23B81741481;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xB872d80dD876FB59085872fB99b1aDE3dbef5390;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x3C5575898f59c097681d1Fc239c2c6Ad36B7b41c;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xe6CD8c2E46Ef396DF88048449e5B1C75172b40C3;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
}

library LayerZeroV2CoredaoTestnet {
    // Chain metadata
    uint32 internal constant EID = 40153;
    uint256 internal constant CHAIN_ID = 1115;
    string internal constant CHAIN_NAME = "coredao-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xc8361Fac616435eB86B9F6e2faaff38F38B0d68C);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xD1bbdB62826eDdE4934Ff3A4920eB053ac9D5569);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAe0549FeF1B77d2D187C867Ad9a5432A9e8381C9;
    address internal constant EXECUTOR = 0x3Bdb89Df44e50748fAed8cf851eB25bf95f37d19;
    address internal constant LZ_EXECUTOR = 0xcAdCAc879D0CB4258455160c702670e8299300f3;
}

library LayerZeroV2DVNCoredaoTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xAe9BBF877BF1BD41EdD5dfc3473D263171cF3B9e;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x4bb65BdB2C5d9BBaF25574A882c12fD98f5f994A;
    // TSS [tss]
    address internal constant DVN_TSS = 0xB0487596a0B62D1A71D0C33294bd6eB635Fc6B09;
}

library LayerZeroV2CronosevmMainnet {
    // Chain metadata
    uint32 internal constant EID = 30359;
    uint256 internal constant CHAIN_ID = 25;
    string internal constant CHAIN_NAME = "cronosevm-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3A73033C0b1407574C76BdBAc67f126f6b4a9AA9);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);
    address internal constant BLOCKED_MESSAGE_LIB = 0xf540D892BC671f08E0B1c5B61185c53c2211e8f7;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7;
    address internal constant EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
    address internal constant DEAD_DVN = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant LZ_EXECUTOR = 0x2BF2f59d2E318Bb03C8956E7BC4c3E6c28Bd0fC2;
}

library LayerZeroV2DVNCronosevmMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xF1042Bba248634583d0678d53FB33Bc885E09F11;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xE33de1A8cf9bcdC6b509C44EEF66f47c65dA6d47;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x2Ae36A544b904F2f2960F6Fd1a6084b4b11ba334;
}

library LayerZeroV2CronosevmTestnet {
    // Chain metadata
    uint32 internal constant EID = 40359;
    uint256 internal constant CHAIN_ID = 338;
    string internal constant CHAIN_NAME = "cronosevm-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNCronosevmTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2CronoszkevmMainnet {
    // Chain metadata
    uint32 internal constant EID = 30360;
    uint256 internal constant CHAIN_ID = 388;
    string internal constant CHAIN_NAME = "cronoszkevm-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x5c6cfF4b7C49805F8295Ff73C204ac83f3bC4AE7);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x01047601DB5E63b1574aae317BAd9C684E3C9056);
    address internal constant BLOCKED_MESSAGE_LIB = 0x3258287147FB7887d8A643006e26E19368057377;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9AB633555E460C01f8c7b8ab24C88dD4986dD5A1);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x52fFEeaE5Ffa89D4b31c72F87ead3699FCB79e40;
    address internal constant EXECUTOR = 0x553313dB58dEeFa3D55B1457D27EAB3Fe5EC87E8;
    address internal constant DEAD_DVN = 0x04830f6deCF08Dec9eD6C3fCAD215245B78A59e1;
    address internal constant LZ_EXECUTOR = 0xcaeB82549Ff641C4aF73505a137B5BeD06FEaf64;
}

library LayerZeroV2DVNCronoszkevmMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xc4A1F52fDA034A9A5E1B3b27D14451d15776Fef6;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x1253E268Bc04bB43CB96D2F7Ee858b8A1433Cf6D;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x04830f6deCF08Dec9eD6C3fCAD215245B78A59e1;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x07fD0e370B49919cA8dA0CE842B8177263c0E12c;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x3A5a74f863ec48c1769C4Ee85f6C3d70f5655E2A;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x0D1bc4Efd08940eB109Ef3040c1386d09B6334E0;
}

library LayerZeroV2CronoszkevmTestnet {
    // Chain metadata
    uint32 internal constant EID = 40360;
    uint256 internal constant CHAIN_ID = 240;
    string internal constant CHAIN_NAME = "cronoszkevm-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x9EC2DB700a3c3D35888acCa134F3f860B4a0b41a);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x0e2c52BC2e119b1919e68f4F1874D4d30F6eF9fB);
    address internal constant BLOCKED_MESSAGE_LIB = 0x25aa15242C9D94526f2844E7c03c5A40e8A79256;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x5f04B588B9408d8d5F4ac250e8c71986683C35A5);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC29f0C76E85723ecFbF50D6cbE1ABEac451D0661;
    address internal constant EXECUTOR = 0xe2Ef622A13e71D9Dd2BBd12cd4b27e1516FA8a09;
    address internal constant DEAD_DVN = 0x9c0B5520e3eC0ccE919cEaA1fb5AaA7cdAb437D4;
    address internal constant LZ_EXECUTOR = 0x2DCC8cFb612fDbC0Fb657eA1B51A6F77b8b86448;
}

library LayerZeroV2DVNCronoszkevmTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9c0B5520e3eC0ccE919cEaA1fb5AaA7cdAb437D4;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6869b4348Fae6A911FDb5BaE5e0D153b2aA261f6;
}

library LayerZeroV2CurtisTestnet {
    // Chain metadata
    uint32 internal constant EID = 40306;
    uint256 internal constant CHAIN_ID = 33111;
    string internal constant CHAIN_NAME = "curtis-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNCurtisTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2CyberMainnet {
    // Chain metadata
    uint32 internal constant EID = 30283;
    uint256 internal constant CHAIN_ID = 7560;
    string internal constant CHAIN_NAME = "cyber-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant DEAD_DVN = 0x9c8D8A224545c15024cB50C7c02cf3EA9AA1bF36;
    address internal constant LZ_EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
}

library LayerZeroV2DVNCyberMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x3a855FCE450F7AEf93b14251D94CC4A47F9ff010;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x9885110b909E88bb94f7f767A68ec2558B2AfA73;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9c8D8A224545c15024cB50C7c02cf3EA9AA1bF36;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x2206ceb6809bD39f8707ED5eE618f8CFA57E40F2;
}

library LayerZeroV2CyberTestnet {
    // Chain metadata
    uint32 internal constant EID = 40280;
    uint256 internal constant CHAIN_ID = 111557560;
    string internal constant CHAIN_NAME = "cyber-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNCyberTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2DegenMainnet {
    // Chain metadata
    uint32 internal constant EID = 30267;
    uint256 internal constant CHAIN_ID = 666666666;
    string internal constant CHAIN_NAME = "degen-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant DEAD_DVN = 0xf80cB5F7467B67cBEC77DcE6a13C89f210b554c0;
    address internal constant LZ_EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
}

library LayerZeroV2DVNDegenMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xf10Ea2c0D43bC4973cfBCc94eBAfC39d1D4aF118;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x01a998260Da061EfB9a85b26d42F8f8662bF3d5F;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xf80cB5F7467B67cBEC77DcE6a13C89f210b554c0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x8D77D35604A9f37f488E41D1d916b2A0088F82Dd;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x80442151791BbDd89117719e508115EBc1Ce2D93;
    // TSS [tss]
    address internal constant DVN_TSS = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DexalotMainnet {
    // Chain metadata
    uint32 internal constant EID = 30118;
    uint256 internal constant CHAIN_ID = 432204;
    string internal constant CHAIN_NAME = "dexalot-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x439C059878fA7A747ead101e2e20A65AcA01C7A8);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe01F3c1CD14F39303D175c31c16f58707B28976b);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x5c824c516bA5FA8dB75738ef5bDac4EfDCa691f1;
    address internal constant EXECUTOR = 0xcbD35a9b849342AD34a71e072D9947D4AFb4E164;
    address internal constant DEAD_DVN = 0x92918f4AD410517B635a8961A64e77bDF8798dDC;
    address internal constant LZ_EXECUTOR = 0x060335db0F285F144388E22e851916D654AB26A0;
}

library LayerZeroV2DVNDexalotMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x58DfF8622759eA75910a08DBA5D060579271dcD7;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x9bB011796fC3604D3a4FaA5863f587a33F6224AF;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xd42306DF1a805d8053Bc652cE0Cd9F62BDe80146;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x92918f4AD410517B635a8961A64e77bDF8798dDC;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xB98D764D25d53F803f05d451225612e4A9A3b712;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x70BF42C69173d6e33b834f59630DAC592C70b369;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
}

library LayerZeroV2DexalotTestnet {
    // Chain metadata
    uint32 internal constant EID = 40118;
    uint256 internal constant CHAIN_ID = 432201;
    string internal constant CHAIN_NAME = "dexalot-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x72884B17f92a863fD056Ec3695Bd3484D601f39a);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x4B68C45f6A276485870D56f1699DCf451FEC076F);
    address internal constant BLOCKED_MESSAGE_LIB = 0xcDA3DCEF65eb98DB22bE03f9D84CE747BC120Bd1;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x3De74963B7223343ffD168e230fC4e374282d37b);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x8c2Bc80592FC4E89b536f536159A50F25eA99925;
    address internal constant EXECUTOR = 0x13EA72039D7f02848CDDd67a2F948dd334cDE70e;
    address internal constant LZ_EXECUTOR = 0xAF1e8A7Ea4f30E3CBa6Bc2d87eCa1086C16ff8d3;
}

library LayerZeroV2DVNDexalotTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x433DAF5E5FBA834De2C3D06A82403c9e96DF6B42;
    // TSS [tss]
    address internal constant DVN_TSS = 0xAb38efC6917086576137e4927Af3A4d57da5F00C;
}

library LayerZeroV2DfkMainnet {
    // Chain metadata
    uint32 internal constant EID = 30115;
    uint256 internal constant CHAIN_ID = 53935;
    string internal constant CHAIN_NAME = "dfk-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xc80233AD8251E668BecbC3B0415707fC7075501e);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x556d7664d5b4Db11f381c714B6b47A8Bf0b494FD);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x11bb2991882a86Dc3E38858d922559A385d506bA;
    address internal constant EXECUTOR = 0x1a7CE89220b945e82f80380B14aA6FDC5E5e3B2A;
    address internal constant DEAD_DVN = 0x4caC2E674d1c3C4548a00fbeCBBa713C902579cf;
    address internal constant LZ_EXECUTOR = 0xE1CC9f508c53277534C62B511Eb1F42607993c1b;
}

library LayerZeroV2DVNDfkMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x6A110d94e1baA6984A3d904bab37Ae49b90E6B4f;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xAb6d3d37D8Dc309e7d8086B2e85a953b84Ee5fA9;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xa9Ff468ad000A4D5729826459197a0dB843F433E;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x4caC2E674d1c3C4548a00fbeCBBa713C902579cf;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x1F7E674143031e74bc48a0c570c174A07aA9C5d0;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // TSS [tss]
    address internal constant DVN_TSS = 0x88bD5f18a13C22C41Cf5c8cBA12eB371C4bD18D9;
}

library LayerZeroV2DfkTestnet {
    // Chain metadata
    uint32 internal constant EID = 40115;
    uint256 internal constant CHAIN_ID = 335;
    string internal constant CHAIN_NAME = "dfk-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x94FF3a4d9E9792dc59193ff753B5038A14c59570);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd45316d099dC4f3B15f2462888D62D919bc07a61);
    address internal constant BLOCKED_MESSAGE_LIB = 0xbddcf3Fa3C748d54BA7F75F3006342ee98953399;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x5709988a03d1CC02197F222D2C72CcC6018bCE0B);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC0B1B3c66fEA930A504113C133Af5a040fc8F50A;
    address internal constant EXECUTOR = 0x1b3649C2C06F1fb0d3e57FB001c8B592f5E3CAc6;
    address internal constant LZ_EXECUTOR = 0x2b4875BF114052e808CBD8498635F528c7d50C93;
}

library LayerZeroV2DVNDfkTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x685e66cB79B4864Ce0a01173f2C5EFbf103715ad;
    // TSS [tss]
    address internal constant DVN_TSS = 0x7Cfb4FADEdc96793f844371D8498F4FDCd37Da61;
}

library LayerZeroV2DinariMainnet {
    // Chain metadata
    uint32 internal constant EID = 30385;
    uint256 internal constant CHAIN_ID = 202110;
    string internal constant CHAIN_NAME = "dinari-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);
    address internal constant BLOCKED_MESSAGE_LIB = 0x3ADB8D9c040faE1fbAC9B579799cD4cA8c768f8A;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x377530cdA84DFb2673bF4d145DCF0C4D7fdcB5b6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043;
    address internal constant EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
    address internal constant DEAD_DVN = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant LZ_EXECUTOR = 0x2BF2f59d2E318Bb03C8956E7BC4c3E6c28Bd0fC2;
}

library LayerZeroV2DVNDinariMainnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
}

library LayerZeroV2DinariTestnet {
    // Chain metadata
    uint32 internal constant EID = 40412;
    uint256 internal constant CHAIN_ID = 179205;
    string internal constant CHAIN_NAME = "dinari-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x145C041566B21Bec558B2A37F1a5Ff261aB55998);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);
    address internal constant BLOCKED_MESSAGE_LIB = 0x6F09f1430c4c204c4b5433Abe24C15f342b70699;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x53fd4C4fBBd53F6bC58CaE6704b92dB1f360A648);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C;
    address internal constant EXECUTOR = 0x4dFa426aEAA55E6044d2b47682842460a04aF45c;
    address internal constant DEAD_DVN = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x8A3D588D9f6AC041476b094f97FF94ec30169d3D;
}

library LayerZeroV2DVNDinariTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x55c175DD5b039331dB251424538169D8495C18d1;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
}

library LayerZeroV2Dm2verseMainnet {
    // Chain metadata
    uint32 internal constant EID = 30315;
    uint256 internal constant CHAIN_ID = 68770;
    string internal constant CHAIN_NAME = "dm2verse-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNDm2verseMainnet {
    // Horizen (deprecated) [horizen-labs]
    address internal constant DVN_HORIZEN = 0x4752239901Aa8d8B99C237dcFb0b02d9871d7a1F;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind (deprecated) [nethermind]
    address internal constant DVN_NETHERMIND = 0xF2F6fe29d5B07Bf2eB15846C1331941B9fa06b3C;
}

library LayerZeroV2Dm2verseTestnet {
    // Chain metadata
    uint32 internal constant EID = 40321;
    uint256 internal constant CHAIN_ID = 68775;
    string internal constant CHAIN_NAME = "dm2verse-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2DVNDm2verseTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2DomaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30393;
    uint256 internal constant CHAIN_ID = 97477;
    string internal constant CHAIN_NAME = "doma-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNDomaMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xf835Af1DceA24C255149E0ad7C9FF1a5E8611Fa2;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xa6F5DDBF0Bd4D03334523465439D301080574742;
}

library LayerZeroV2DomaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40425;
    uint256 internal constant CHAIN_ID = 97476;
    string internal constant CHAIN_NAME = "doma-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x2072a32Df77bAE5713853d666f26bA5e47E54717);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x638B6D10D981273e19E32F812C9b916E82c86927);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1B8A0140635a59AF48a9418cbfeAa5a014E9b760;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x340b5E5E90a6D177E7614222081e0f9CDd54f25C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xA9acF19D59359D777C65164dafaAe1A2de647395;
    address internal constant EXECUTOR = 0xb63c87D146cbE60B3C0419003Ebd24F21374c8Ae;
    address internal constant DEAD_DVN = 0x45D90fE9734643B6d08BE5FB729928697B8223A8;
    address internal constant LZ_EXECUTOR = 0x75B3bDfB2b31728104711f52a5DF9f6319128c5d;
}

library LayerZeroV2DVNDomaTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x45D90fE9734643B6d08BE5FB729928697B8223A8;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xFEe867ed545F26621Dc701e6164e02Ead9c6B081;
}

library LayerZeroV2DosMainnet {
    // Chain metadata
    uint32 internal constant EID = 30149;
    uint256 internal constant CHAIN_ID = 7979;
    string internal constant CHAIN_NAME = "dos-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x72C91c46d7033dfF1707091Ef32D4951a73bD099);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xEF7781FC1C4F7B2Fd3Cf03f4d65b6835b27C1A0d);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xCFc3f9dD0205b76FF04e20243f106465Dd829656;
    address internal constant EXECUTOR = 0x5B23E2bAe5C5f00e804EA2C4C9abe601604378fa;
    address internal constant DEAD_DVN = 0x4474B891BF3D93e61676912F0739e04B86232dd5;
    address internal constant LZ_EXECUTOR = 0xBB967E3A329F4c47F654B82a2F7d11E69E5A7143;
}

library LayerZeroV2DVNDosMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x2AC038606fff3FB00317B8F0CcFB4081694aCDD0;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x45A7305c65AAd28384F20a80F87a5183772E4F70;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x33E5fcC13D7439cC62d54c41AA966197145b3Cd7;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x4474B891BF3D93e61676912F0739e04B86232dd5;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x203DFa8CBcbe234821DA01a6e95Fcbf92dA065EA;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xaCDe1f22EEAb249d3ca6Ba8805C8fEe9f52a16e7;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
}

library LayerZeroV2DosTestnet {
    // Chain metadata
    uint32 internal constant EID = 40286;
    uint256 internal constant CHAIN_ID = 3939;
    string internal constant CHAIN_NAME = "dos-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x08416c0eAa8ba93F907eC8D6a9cAb24821C53E64);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xa805000DcA12b38690558785878642BA19Bc4981);
    address internal constant BLOCKED_MESSAGE_LIB = 0x5f670A51065FbcD8CAD924fF64b3AD032ce51C58;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x00D0cd55beAfb96f0A5c37452f56D06DA3765ce8);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x5cbAe69Fdc9CB0AFCC3A6E6dA20760a1471f16B3;
    address internal constant EXECUTOR = 0x06f021541521Ae6dcfaeED4EC9A8bF800528E805;
    address internal constant LZ_EXECUTOR = 0x3Bfd3c601951E1939b4B11c3aF68A48436DF65ee;
}

library LayerZeroV2DVNDosTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9E35059b08DcA75F0f3c3940e4217b8dc73f4Fda;
    // TSS [tss]
    address internal constant DVN_TSS = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2EbiMainnet {
    // Chain metadata
    uint32 internal constant EID = 30282;
    uint256 internal constant CHAIN_ID = 98881;
    string internal constant CHAIN_NAME = "ebi-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant DEAD_DVN = 0x9F3f929F87b29F07A7026CFbC40e0e6B476D2185;
    address internal constant LZ_EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
}

library LayerZeroV2DVNEbiMainnet {
    // Horizen (deprecated) [horizen-labs]
    address internal constant DVN_HORIZEN = 0x3A2d3A2249691809C34FB9733fD0d826D1aee028;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9F3f929F87b29F07A7026CFbC40e0e6B476D2185;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind (deprecated) [nethermind]
    address internal constant DVN_NETHERMIND = 0x261150AB73528dbD51573A52917eab243bE9729A;
    // Stakingcabin (deprecated) [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x796e526dE6EBB62b006ea680E52175A22EADbFf7;
    // Stargate (deprecated) [stargate]
    address internal constant DVN_STARGATE = 0x97841D4AB18E9A923322A002d5b8Eb42b31Ccdb5;
}

library LayerZeroV2EbiTestnet {
    // Chain metadata
    uint32 internal constant EID = 40284;
    uint256 internal constant CHAIN_ID = 98882;
    string internal constant CHAIN_NAME = "ebi-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNEbiTestnet {
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2EduMainnet {
    // Chain metadata
    uint32 internal constant EID = 30328;
    uint256 internal constant CHAIN_ID = 41923;
    string internal constant CHAIN_NAME = "edu-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3A73033C0b1407574C76BdBAc67f126f6b4a9AA9);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);
    address internal constant BLOCKED_MESSAGE_LIB = 0xf540D892BC671f08E0B1c5B61185c53c2211e8f7;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7;
    address internal constant EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
    address internal constant DEAD_DVN = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    address internal constant LZ_EXECUTOR = 0x306B9a8953B9462F8b826e6768a93C8EA7454965;
}

library LayerZeroV2DVNEduMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x73ddc44AA34A838744c53AA23886e784a7B1F734;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xf4672690eF45b46EAa3b688fe2f0Fc09e9366b20;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x97F930a15172F38B7e947778889424e37b5DF316;
}

library LayerZeroV2EonMainnet {
    // Chain metadata
    uint32 internal constant EID = 30215;
    uint256 internal constant CHAIN_ID = 7332;
    string internal constant CHAIN_NAME = "eon-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x5EB6b3Db915d29fc624b8a0e42AC029e36a1D86B);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xF622DFb40bf7340DBCf1e5147D6CFD95d7c5cF1F);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6f1686189f32e78f1D83e7c6Ed433FCeBc3A5B51;
    address internal constant EXECUTOR = 0xA09dB5142654e3eB5Cf547D66833FAe7097B21C3;
    address internal constant DEAD_DVN = 0xf9420F9D2552640e242Ad89CD5D3b625F92705C9;
    address internal constant LZ_EXECUTOR = 0xF9d24d3AbF64A99C6FcdF19b27eF74B723A6110a;
}

library LayerZeroV2DVNEonMainnet {
    // BCW (deprecated) [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Canary (deprecated) [canary]
    address internal constant DVN_CANARY = 0xA1Bc1B9af01A0ec78883AA5DC7DECDCe897E1E76;
    // Horizen (deprecated) [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xf9420F9D2552640e242Ad89CD5D3b625F92705C9;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xe9AE261D3aFf7d3fCCF38Fa2d612DD3897e07B2d;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2EonTestnet {
    // Chain metadata
    uint32 internal constant EID = 40215;
    uint256 internal constant CHAIN_ID = 1663;
    string internal constant CHAIN_NAME = "eon-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNEonTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2EtherealMainnet {
    // Chain metadata
    uint32 internal constant EID = 30391;
    uint256 internal constant CHAIN_ID = 5064014;
    string internal constant CHAIN_NAME = "ethereal-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNEtherealMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x56053A8f4db677e5774F8Ee5BdD9D2dC270075f3;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x2afa3787cd95fee5D5753cd717EF228eb259f4ea;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x6D4fc4bD9f9C29086e2Aa67d4C81F32D2E0F285c;
    // Stargate (deprecated) [stargate]
    address internal constant DVN_STARGATE = 0x8D77D35604A9f37f488E41D1d916b2A0088F82Dd;
}

library LayerZeroV2EtherealTestnet {
    // Chain metadata
    uint32 internal constant EID = 40407;
    uint256 internal constant CHAIN_ID = 657468;
    string internal constant CHAIN_NAME = "ethereal-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNEtherealTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2Ethereal2Testnet {
    // Chain metadata
    uint32 internal constant EID = 40422;
    uint256 internal constant CHAIN_ID = 13374202;
    string internal constant CHAIN_NAME = "ethereal2-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNEthereal2Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2EthereumMainnet {
    // Chain metadata
    uint32 internal constant EID = 30101;
    uint256 internal constant CHAIN_ID = 1;
    string internal constant CHAIN_NAME = "ethereum-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x74F55Bc2a79A27A0bF1D1A35dB5d0Fc36b9FDB9D);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xbB2Ea70C9E858123480642Cf96acbcCE1372dCe1);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xc02Ab410f0734EFa3F14628780e6e695156024C2);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x8FAFC84cAeA1Cef8475cb5CB344658D160c9CE0b;
    address internal constant EXECUTOR = 0x173272739Bd7Aa6e4e214714048a9fE699453059;
    address internal constant DEAD_DVN = 0x747C741496a507E4B404b50463e691A8d692f6Ac;
    address internal constant LZ_EXECUTOR = 0xbF2E102Fb382d6EC52823C8F81A45e9Caa951320;
}

library LayerZeroV2DVNEthereumMainnet {
    // 01node [01node]
    address internal constant DVN_01NODE = 0x58DfF8622759eA75910a08DBA5D060579271dcD7;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB = 0x864B42ddDC43a610E7506C163048C087F0B406Ef;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB_2 = 0x7E65BDd15C8Db8995F80aBf0D6593b57dc8BE437;
    // AltLayer [altlayer]
    address internal constant DVN_ALTLAYER = 0x1E129C36BC3AfC3F0D46a42C9d9cab7586bda94c;
    // Axelar [axelar]
    address internal constant DVN_AXELAR = 0xCE5B47FA5139fC5f3c8c5f4C278ad5F56A7b2016;
    // BCW [bcw]
    address internal constant DVN_BCW = 0xe552485d02EDd3067FE7FCbD4dd56BB1D3A998D2;
    // BCW [bcw]
    address internal constant DVN_BCW_2 = 0x3A283Ed6bcCE8d9dfb673fBfBa6e644C9d02e9Ab;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x7a23612F07d81F16B26cF0b5a4C3eca0E8668df2;
    // Bera [bera]
    address internal constant DVN_BERA = 0xE2e558C85E00B4d7529433C1cc78Ab678Cf62538;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0x05D78174b97cf2EC223eE578CD1f401FF792ca31;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0xc9ca319f6Da263910fd9B037eC3d817A814ef3d8;
    // Blockhunters [blockhunters]
    address internal constant DVN_BLOCKHUNTERS = 0x6E70FCdc42D3d63748B7d8883399Dcb16BBB5c8c;
    // Brale [brale]
    address internal constant DVN_BRALE = 0x707f480A30Fa724658640b65bc233a2a6180f887;
    // CCIP [ccip]
    address internal constant DVN_CCIP = 0x771D10D0C86E26eA8d3b778ad4d31B30533B9Cbf;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xa4fE5A5B9A846458a70Cd0748228aED3bF65c2cd;
    // Chainlink [ccip]
    address internal constant DVN_CHAINLINK = 0x150A58e9E6BF69ccEb1DBA5ae97C166DC8792539;
    // Curve [curve]
    address internal constant DVN_CURVE = 0xcc35923c43893CC31F2815e216afD7EFB60f1fB0;
    // Delegate [delegate]
    address internal constant DVN_DELEGATE = 0x87048402c32632B7c4d0A892d82bC1160E8B2393;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x373a6E5c0C4E89E24819f00AA37ea370917AAfF4;
    // EigenZero [eigenzero]
    address internal constant DVN_EIGENZERO = 0x4184Dd22692c8B50D8d7ee0d7B6028e45dbf8108;
    // FBTC [fbtc]
    address internal constant DVN_FBTC = 0x45C09Dc691B0Ad798e10D38B97e9Dfd917d4B680;
    // Flowdesk [flowdesk]
    address internal constant DVN_FLOWDESK = 0x2fdBb1e2419e13a7e043D07EAf412934B73ad7a8;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x38654142F5E672Ae86a1b21523AAfC765E6A1e08;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN = 0x38179D3BFa6Ef1d69A8A7b0b671BA3D8836B2AE8;
    // Gitcoin [gitcoin]
    address internal constant DVN_GITCOIN_2 = 0x15FaDad87913c3bb95f8f9f2e2b287E71Ba7817D;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x2f0BA3DbB93CF087e32c15Aab46726FDb4Fb24cf;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x380275805876Ff19055EA900CDb2B46a94ecF20D;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x747C741496a507E4B404b50463e691A8d692f6Ac;
    // Lagrange [lagrange-labs]
    address internal constant DVN_LAGRANGE = 0x95729Ea44326f8adD8A9b1d987279DBdC1DD3dFf;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x589dEDbD617e0CBcB916A9223F4d1300c294236b;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xDb979D0A36aF0525AFa60Fc265B1525505c55D79;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x58249a2Ec05c1978bF21DF1f5eC1847e42455CF4;
    // MIM [mim]
    address internal constant DVN_MIM = 0x0Ae4e6a9a8B01EE22c6A49aF22B674A4E033A23D;
    // Mantle Bank [mantle-bank]
    address internal constant DVN_MANTLE_BANK = 0x868e6393AEa25E8c7e58BC5d4c90a5237C573ff6;
    // Mantle01 [mantle01]
    address internal constant DVN_MANTLE01 = 0x7cC59B5062A8291804A21a2a793c6Ce9ea2f0Eb9;
    // Mantle02 (deprecated) [mantle02]
    address internal constant DVN_MANTLE02 = 0x4d45727d2de5ffC811E6A161c3a7233a2Ea2e0E7;
    // Mantle02 [mantle02]
    address internal constant DVN_MANTLE02_2 = 0xdd907f5aF01A829Cd65C99A132E8720d3e990D02;
    // Mantle03 [mantle03]
    address internal constant DVN_MANTLE03 = 0x554833698Ae0FB22ECC90B01222903fD62CA4B47;
    // Muon [muon]
    address internal constant DVN_MUON = 0xA3858e2A9860C935Fc9586a617e9b2A674C3e4c8;
    // Mysten Labs [mysten-labs]
    address internal constant DVN_MYSTEN_LABS = 0x3D68029E411B181FEfA1a8BA60aaf27dbe68636C;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x3a4636E9AB975d28d3Af808b4e1c9fd936374E30;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xF4064220871e3B94Ca6aB3b0CEE8e29178bF47dE;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xa59BA433ac34D2927232918Ef5B2eaAfcF130BA5;
    // Nocturnal [nocturnal-labs]
    address internal constant DVN_NOCTURNAL = 0x7C42F598d22E8711998bAc7C3360a7b3a514863D;
    // Nodesguru [nodes-guru]
    address internal constant DVN_NODESGURU = 0x9F45834F0C8042e36935781b944443e906886a87;
    // Nodit [nodit]
    address internal constant DVN_NODIT = 0x0Cea5a94F8cd3330c4F84944bF4500F8daCD440C;
    // Omnicat [omnicat]
    address internal constant DVN_OMNICAT = 0xf10Ea2c0D43bC4973cfBCc94eBAfC39d1D4aF118;
    // Omnix [omni-x]
    address internal constant DVN_OMNIX = 0xAf75bfD402f3d4EE84978179a6c87D16c4Bd1724;
    // Ondo [ondo]
    address internal constant DVN_ONDO = 0x241c66a979125f230C239E79D103e0c2128C6618;
    // Ondo Staging [ondo-staging]
    address internal constant DVN_ONDO_STAGING = 0xF34D1B07c64c4F4d492aE3DdD0AaB0658A2975eb;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x06559EE34D85a88317Bf0bfE307444116c631b67;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0x94AAfe0A92A8300f0A2100A7f3DE47d6845747A9;
    // Paxos [paxos]
    address internal constant DVN_PAXOS = 0xb0B2EF168F52F6d1e42f461e11117295eF992daf;
    // Planetarium [planetarium-labs]
    address internal constant DVN_PLANETARIUM = 0x972ED7bd3d42D9C0bea3632992Ebf7e97186ea4A;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Predicate [predicate]
    address internal constant DVN_PREDICATE = 0x006E1248BE5e40B4A4E7099397719Df7aB872De7;
    // Quantoz (deprecated) [quantoz]
    address internal constant DVN_QUANTOZ = 0x2C97f92eB72DcB3Cf1b13D8A14b9d599482fc90D;
    // Quantoz [quantoz]
    address internal constant DVN_QUANTOZ_2 = 0x4066b6e7BfD761B579902E7e8D03F4feb9B9536E;
    // Republic [republic-crypto]
    address internal constant DVN_REPUBLIC = 0xA1Bc1B9af01A0ec78883AA5DC7DECDCe897E1E76;
    // Restake [restake]
    address internal constant DVN_RESTAKE = 0xE4193136B92bA91402313e95347c8e9FAD8d27d0;
    // Shrapnel [mercury]
    address internal constant DVN_SHRAPNEL = 0xCe97511db880571A7C31821eB026Ef12fCaC892e;
    // Stablelab [stablelab]
    address internal constant DVN_STABLELAB = 0x5fddD320a1e29bB466Fa635661b125D51D976f92;
    // Stakingcabin (deprecated) [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0xdEb742E71d57603D8F769cE36f4353468007fC02;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN_2 = 0xCd0ca0619fc8dB4d47B19A1f04105312952E5F6D;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x8FafAE7Dd957044088b3d0F67359C327c6200d18;
    // Superduper [portal]
    address internal constant DVN_SUPERDUPER = 0x92ef4381a03372985985E70fb15E9F081E2e8D14;
    // Superform [superform]
    address internal constant DVN_SUPERFORM = 0x7518f30bd5867b5fA86702556245Dead173afE46;
    // Switchboard [switchboard]
    address internal constant DVN_SWITCHBOARD = 0x276e6B1138d2d49C0Cda86658765d12Ef84550c1;
    // TSS [tss]
    address internal constant DVN_TSS = 0x5a54fe5234E811466D5366846283323c954310B2;
    // Tapioca [pearlnet]
    address internal constant DVN_TAPIOCA = 0xD24972c11F91c1bB9eaEe97ec96bB9c33cF7af24;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x3b0531eB02Ab4aD72e7a531180beeF9493a00dD2;
    // Ubisoft [ubisoft]
    address internal constant DVN_UBISOFT = 0xcc9da5B157eD87e24A9cF562E6A7C05D3C3deCD3;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x89CA15937e1033AF26Fe4C5e976216E8C8179408;
    // Wyoming [wyoming]
    address internal constant DVN_WYOMING = 0x6C70Db9CE65fA37499C1f1A150A6440fC9c7273A;
    // Zeeve [zeeve]
    address internal constant DVN_ZEEVE = 0x02041731CB8CBAe90838BB8632c359fC0c2b0775;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0xd42306DF1a805d8053Bc652cE0Cd9F62BDe80146;
}

library LayerZeroV2EthereumTestnet {
    // Chain metadata
    uint32 internal constant EID = 40121;
    uint256 internal constant CHAIN_ID = 11155111;
    string internal constant CHAIN_NAME = "ethereum-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNEthereumTestnet {
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x2dDf08e397541721acD82E5b8a1D0775454a180B;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
}

library LayerZeroV2EtherlinkMainnet {
    // Chain metadata
    uint32 internal constant EID = 30292;
    uint256 internal constant CHAIN_ID = 42793;
    string internal constant CHAIN_NAME = "etherlink-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x12B9C8AbebCE75F00628C8DFa007AE358d8Ed30b);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);
    address internal constant BLOCKED_MESSAGE_LIB = 0x3ADB8D9c040faE1fbAC9B579799cD4cA8c768f8A;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x377530cdA84DFb2673bF4d145DCF0C4D7fdcB5b6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0x6F95f0e1903BDb57b0761c8EfE9BC3bfB7E416BB;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNEtherlinkMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xe7411fca6D67De2aA856570dBD59A19FCde81bD8;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xeCc3Dc1Cc45B1934CE713F8fb0d3D3852C01a5c1;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6F95f0e1903BDb57b0761c8EfE9BC3bfB7E416BB;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xf8F34c79d409f96e700158DE041EBb7Fe754FD27;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x7a23612F07d81F16B26cF0b5a4C3eca0E8668df2;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x4A6B9962945D866F53fd114bB76B38B8791B8C1d;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x31F748a368a893Bdb5aBB67ec95F232507601A73;
    // TSS [tss]
    address internal constant DVN_TSS = 0xb87396e0d0d8B12169319803B56dB763Cd738E63;
    // Zeeve [zeeve]
    address internal constant DVN_ZEEVE = 0x1e023Ed98a1236FB30054bA1317bB82c3C37785F;
}

library LayerZeroV2EtherlinkTestnet {
    // Chain metadata
    uint32 internal constant EID = 40239;
    uint256 internal constant CHAIN_ID = 128123;
    string internal constant CHAIN_NAME = "etherlink-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xec28645346D781674B4272706D8a938dB2BAA2C6);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xE62d066e71fcA410eD48ad2f2A5A860443C04035);
    address internal constant BLOCKED_MESSAGE_LIB = 0xB5a6567364189010E432c457D5332edaE0bb5730;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2072a32Df77bAE5713853d666f26bA5e47E54717);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x72b65B2E699E3B5d664EF776C068236B6b8004d6;
    address internal constant EXECUTOR = 0x417cb9E12cfe7301c8b6ef8f63ffac55263e147C;
    address internal constant LZ_EXECUTOR = 0xFEe867ed545F26621Dc701e6164e02Ead9c6B081;
}

library LayerZeroV2DVNEtherlinkTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x4d97186cD94047E285B7cb78fa63C93E69e7AaD0;
}

library LayerZeroV2EtherlinkshadownetTestnet {
    // Chain metadata
    uint32 internal constant EID = 40430;
    uint256 internal constant CHAIN_ID = 127823;
    string internal constant CHAIN_NAME = "etherlinkshadownet-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNEtherlinkshadownetTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2ExocoreTestnet {
    // Chain metadata
    uint32 internal constant EID = 40259;
    uint256 internal constant CHAIN_ID = 233;
    string internal constant CHAIN_NAME = "exocore-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2DVNExocoreTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2FantomMainnet {
    // Chain metadata
    uint32 internal constant EID = 30112;
    uint256 internal constant CHAIN_ID = 250;
    string internal constant CHAIN_NAME = "fantom-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC17BaBeF02a937093363220b0FB57De04A535D5E);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1Dd69A2D08dF4eA6a30a91cC061ac70F98aAbe3);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x2D45675B4075563d6f4dDf0181Aa8B38Bf1B0E91;
    address internal constant EXECUTOR = 0x2957eBc0D2931270d4a539696514b047756b3056;
    address internal constant DEAD_DVN = 0xdD8D6cc54Fdb9Ec81Cb8EFb8988ee17aBB8Eecd1;
    address internal constant LZ_EXECUTOR = 0x83e72DA23b533b2083eD007223a491ba7EC3CcBe;
}

library LayerZeroV2DVNFantomMainnet {
    // 01node [01node]
    address internal constant DVN_01NODE = 0x8Fc629aa400D4D9c0B118F2685a49316552ABf27;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB = 0x313328609a9C38459CaE56625FFf7F2AD6dcde3b;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x247624e2143504730aeC22912ed41F092498bEf2;
    // Bera [bera]
    address internal constant DVN_BERA = 0x1a53015B6b4d88a943Ed512bD179FbD89a768B6b;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0x3b247F1B48F055EbF2DB593672B98C9597E3081E;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO_2 = 0xDF44a1594d3D516f7CDFb4DC275a79a5F6e3Db1d;
    // Blockhunters [blockhunters]
    address internal constant DVN_BLOCKHUNTERS = 0x547bF6889B1095b7CC6e525A1F8E8Fdb26134a38;
    // Brale [brale]
    address internal constant DVN_BRALE = 0x2D1d241D06b28440c115aFa712695148AD31c47e;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xE5BFfd46776251b70895517D4AB635a640dA61E9;
    // Chainlink [ccip]
    address internal constant DVN_CHAINLINK = 0x150A58e9E6BF69ccEb1DBA5ae97C166DC8792539;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x06a32EFaFC7698c00e87f5225178d7364773E93b;
    // Delegate [delegate]
    address internal constant DVN_DELEGATE = 0x9EEee79F5dBC4D99354b5CB547c138Af432F937b;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x8181F551c95928c0648d4378Dc4d95E847bc3945;
    // Flowdesk [flowdesk]
    address internal constant DVN_FLOWDESK = 0x4C4552785d09a422231A1fB3da02b49a3e99426c;
    // Gitcoin [gitcoin]
    address internal constant DVN_GITCOIN = 0xF4213560F316007082731e8574e1A9630F91f1b1;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN_2 = 0x2afa3787cd95fee5D5753cd717EF228eb259f4ea;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x25e0e650a78e6304A3983Fc4b7Ffc6544b1bEea6;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xdD8D6cc54Fdb9Ec81Cb8EFb8988ee17aBB8Eecd1;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xE60A3959Ca23a92BF5aAf992EF837cA7F828628a;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0xa6F5DDBF0Bd4D03334523465439D301080574742;
    // MIM [mim]
    address internal constant DVN_MIM = 0x1bab20E7FDc79257729CB596BEF85db76C44915E;
    // Muon [muon]
    address internal constant DVN_MUON = 0xA3858e2A9860C935Fc9586a617e9b2A674C3e4c8;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x57555Da46d20F39bC6795BCD6fF50cE425A0E5aF;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x31F748a368a893Bdb5aBB67ec95F232507601A73;
    // Nodesguru [nodes-guru]
    address internal constant DVN_NODESGURU = 0x05AaEfDf9dB6E0f7d27FA3b6EE099EDB33dA029E;
    // Omnix [omni-x]
    address internal constant DVN_OMNIX = 0xE0F0FbBDBF9d398eCA0dd8c86d1F308D895b9Eb7;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x439264FB87581a70Bb6D7bEFd16b636521B0Ad2D;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0x78203678D264063815Dac114eA810E9837Cd80f7;
    // Paxos (deprecated) [paxos]
    address internal constant DVN_PAXOS = 0x1Cf63A377A66006CB9317920E07F8768bd74309B;
    // Planetarium [planetarium-labs]
    address internal constant DVN_PLANETARIUM = 0xF7DDEE427507cdb6885E53CAAaa1973b1Fe29357;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Restake [restake]
    address internal constant DVN_RESTAKE = 0x4D52f5bc932cf1A854381A85ad9ED79B8497c153;
    // Shrapnel [mercury]
    address internal constant DVN_SHRAPNEL = 0xb4FA7f1C67E5Ec99B556Ec92CbDdBCdd384106F2;
    // Stablelab [stablelab]
    address internal constant DVN_STABLELAB = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // Stakingcabin (deprecated) [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x2b8CBEa81315130A4C422e875063362640ddFeB0;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN_2 = 0x193204535913df3A3b350fcd2e1C97D047AbB409;
    // Superduper [portal]
    address internal constant DVN_SUPERDUPER = 0xBD40c9047980500C46B8aed4462e2f889299FEbE;
    // Superform [superform]
    address internal constant DVN_SUPERFORM = 0x2EdfE0220A74d9609c79711a65E3A2F2A85Dc83b;
    // Switchboard [switchboard]
    address internal constant DVN_SWITCHBOARD = 0xf0809F6e760a5452Ee567975EdA7a28dA4a83D38;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA0Cc33Dd6f4819D473226257792AFe230EC3c67f;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0xae675d8a97A06dEA4E74253D429bD324606dEd24;
}

library LayerZeroV2FantomTestnet {
    // Chain metadata
    uint32 internal constant EID = 40112;
    uint256 internal constant CHAIN_ID = 4002;
    string internal constant CHAIN_NAME = "fantom-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x3f41017De79aA979b8f33E2e9518203888458273);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe4a446690Dfaf438EEA2b06394E1fdd0A9435178);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xF62C3D15b455eE8D95e4D16326308CD413B3D9d5;
    address internal constant EXECUTOR = 0x0453b4730BB550363F726aD8eeC9441e763F2835;
    address internal constant LZ_EXECUTOR = 0x31fb3a5fD0B29B77C946e2331d2F301EF7D9d0dB;
}

library LayerZeroV2DVNFantomTestnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x312F5C396CF78A80f6FAc979B55a4DdDE44031F0;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xbac63154331081539DBaBB595C21c47879F425e4;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO_2 = 0xD83401CD9e9EC8C81e4Bf247b0bCE1B85C2eC2b6;
    // Brale [brale]
    address internal constant DVN_BRALE = 0x1d73E5E1f2f2B3a0e327a5bcD62Fe2909508AF85;
    // Delegate [delegate]
    address internal constant DVN_DELEGATE = 0x427859DcF157E29fDA324C2cd90B17FA33D0e300;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN = 0x97f671E60196ff62279Dd06c393948F5B0b90c05;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xbdB61339Dc1cD02982aB459Fa46f858deCF3Cec6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xFffc92A6AbE6480AdC574901ebFDe108A7077Eb8;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x39Ed64E4E063D22F69FB09d5a84ed6582afF120f;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xf10955530720932660589259DAbC44c964d88869;
    // Stablelab [stablelab]
    address internal constant DVN_STABLELAB = 0x134Dc38AE8C853D1aa2103d5047591acDAA16682;
    // Switchboard [switchboard]
    address internal constant DVN_SWITCHBOARD = 0xFD53de8f107538c28148F0bCdF1Fb1f1DFd5461B;
    // TSS [tss]
    address internal constant DVN_TSS = 0x9b743B9846230b657546fB942C6b11a23cFecD9a;
}

library LayerZeroV2FiTestnet {
    // Chain metadata
    uint32 internal constant EID = 40301;
    uint256 internal constant CHAIN_ID = 18026;
    string internal constant CHAIN_NAME = "fi-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNFiTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2FlareMainnet {
    // Chain metadata
    uint32 internal constant EID = 30295;
    uint256 internal constant CHAIN_ID = 14;
    string internal constant CHAIN_NAME = "flare-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x28B6140ead70cb2Fb669705b3598ffB4BEaA060b;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNFlareMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xD791948db16AB4373FA394B74C727DDb7FB02520;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xeAA5a170d2588F84773f965281F8611D61312832;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x28B6140ead70cb2Fb669705b3598ffB4BEaA060b;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x9bCd17A654bffAa6f8fEa38D19661a7210e22196;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0xCe97511db880571A7C31821eB026Ef12fCaC892e;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x8D77D35604A9f37f488E41D1d916b2A0088F82Dd;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x7cEc38c06a2FEC9Fd525B1925544110204CbB5f6;
}

library LayerZeroV2FlareTestnet {
    // Chain metadata
    uint32 internal constant EID = 40294;
    uint256 internal constant CHAIN_ID = 114;
    string internal constant CHAIN_NAME = "flare-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNFlareTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
}

library LayerZeroV2FlowMainnet {
    // Chain metadata
    uint32 internal constant EID = 30336;
    uint256 internal constant CHAIN_ID = 747;
    string internal constant CHAIN_NAME = "flow-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xF411Be8D23A411eBD955C7cD6a3CC29bA789Ad1D);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNFlowMainnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xCCdeBdb5aCFD6Ae062859ac66653b10ED77586C2;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xe4e65D80DEb0E2c8391215bcBA4b5f7603420407;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6BeA5b5799f5FB11dA9D801B2Ae599e3237c92fd;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x5DF51D20CB512898d7a1a38D51bb4C76448EEe8c;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_3 = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x75Ab9D30e4FF4913a4dF9A02aF8Cef3525A93F68;
    // Nethermind (deprecated) [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x49935a9e3f78027Bfbfb013c175179643249e322;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_3 = 0x3C61aAd6D402D867c653F603558F4b8f91AbE952;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xd1C70192CC0eb9a89e3D9032b9FAcab259A0a1e9;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0xbbDc8C15936e5ce33FFBcAF1Aba2A8F17e31eFB5;
}

library LayerZeroV2FlowTestnet {
    // Chain metadata
    uint32 internal constant EID = 40351;
    uint256 internal constant CHAIN_ID = 545;
    string internal constant CHAIN_NAME = "flow-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNFlowTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2FormTestnet {
    // Chain metadata
    uint32 internal constant EID = 40270;
    uint256 internal constant CHAIN_ID = 478;
    string internal constant CHAIN_NAME = "form-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNFormTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2FrameTestnet {
    // Chain metadata
    uint32 internal constant EID = 40222;
    uint256 internal constant CHAIN_ID = 68840142;
    string internal constant CHAIN_NAME = "frame-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNFrameTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2FraxtalMainnet {
    // Chain metadata
    uint32 internal constant EID = 30255;
    uint256 internal constant CHAIN_ID = 252;
    string internal constant CHAIN_NAME = "fraxtal-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x377530cdA84DFb2673bF4d145DCF0C4D7fdcB5b6);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x8bC1e36F015b9902B54b1387A4d733cebc2f5A4e);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x2367325334447C5E1E0f1b3a6fB947b262F58312;
    address internal constant EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
    address internal constant DEAD_DVN = 0x6A6991E0bF27E3CcCDe6B73dE94b7DA6e240FF6E;
    address internal constant LZ_EXECUTOR = 0x306B9a8953B9462F8b826e6768a93C8EA7454965;
}

library LayerZeroV2DVNFraxtalMainnet {
    // Axelar [axelar]
    address internal constant DVN_AXELAR = 0x025BAB5B7271790F9cF188FdcE2c4214857f48D3;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x6398E91001Cc1682bBA103E6B2489Fa5675a5a64;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x05dF4949f0B4dC4c4b1ADc0e01700Bc669E935c3;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x26cD5aBaDf7eC3f0F02b48314bfcA6b2342cddD4;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6A6991E0bF27E3CcCDe6B73dE94b7DA6e240FF6E;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xcCE466a522984415bC91338c232d98869193D46e;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xa7b5189bcA84Cd304D8553977c7C614329750d99;
    // TSS [tss]
    address internal constant DVN_TSS = 0x3A73033C0b1407574C76BdBAc67f126f6b4a9AA9;
}

library LayerZeroV2FraxtalTestnet {
    // Chain metadata
    uint32 internal constant EID = 40255;
    uint256 internal constant CHAIN_ID = 2522;
    string internal constant CHAIN_NAME = "fraxtal-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2DVNFraxtalTestnet {
    // Frax [frax]
    address internal constant DVN_FRAX = 0x560a78EAE34D9f184a5C65DBFBdC53d2B8b96563;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x14CcB1a6ebb0b6F669fcE087a2DbF664A1F57251;
}

library LayerZeroV2FuseMainnet {
    // Chain metadata
    uint32 internal constant EID = 30138;
    uint256 internal constant CHAIN_ID = 122;
    string internal constant CHAIN_NAME = "fuse-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x2762409Baa1804D94D8c0bCFF8400B78Bf915D5B);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xB12514e226E50844E4655696c92c0c36B8A53141);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x28A5536cA9F36c45A9d2AC8d2B62Fc46Fde024B6;
    address internal constant EXECUTOR = 0xc905E74BEb8229E258c3C6E5bC0D6Cc54C534688;
    address internal constant DEAD_DVN = 0xFB01E486d8B2556a70Fe66E4A86d76DEAb4Ba974;
    address internal constant LZ_EXECUTOR = 0x07245eEa05826F5984c7c3C8F478b04892e4df89;
}

library LayerZeroV2DVNFuseMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x7A3D18E2324536294CD6F054cDde7c994f40391A;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xFB01E486d8B2556a70Fe66E4A86d76DEAb4Ba974;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x795F8325aF292Ff6E58249361d1954893BE15Aff;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x809CDE2AfcF8627312E87a6a7bbFFaB3F8F347c7;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x9F45834F0C8042e36935781b944443e906886a87;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
}

library LayerZeroV2FuseTestnet {
    // Chain metadata
    uint32 internal constant EID = 40138;
    uint256 internal constant CHAIN_ID = 123;
    string internal constant CHAIN_NAME = "fuse-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x098Fed01ABd66C63e706Ed9b368726DE54FefBEb);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x253E37074D299b70d11F72eF547cc2EF59fD7f9C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x306202702AF38152D3604cD82af71C3db0eE08CF;
    address internal constant EXECUTOR = 0x86d08462EaA1559345d7F41f937B2C804209DB8A;
    address internal constant LZ_EXECUTOR = 0x7F417F2192B89Cf93b8c4Ee01d558883A0AD7B47;
}

library LayerZeroV2DVNFuseTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x955412C07d9bC1027eb4d481621ee063bFd9f4C6;
    // TSS [tss]
    address internal constant DVN_TSS = 0x340b5E5E90a6D177E7614222081e0f9CDd54f25C;
}

library LayerZeroV2GameswiftTestnet {
    // Chain metadata
    uint32 internal constant EID = 40339;
    uint256 internal constant CHAIN_ID = 10888;
    string internal constant CHAIN_NAME = "gameswift-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xB0487596a0B62D1A71D0C33294bd6eB635Fc6B09);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa97f783E717567ab8d0fc72110714F4fa7967373;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x073f5b4FdF17BBC16b0980d49f6C56123477bb51);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
    address internal constant EXECUTOR = 0x8dF53a660a00C3D977d7E778fB7385ECf4482D16;
    address internal constant DEAD_DVN = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    address internal constant LZ_EXECUTOR = 0xec28645346D781674B4272706D8a938dB2BAA2C6;
}

library LayerZeroV2DVNGameswiftTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2GateTestnet {
    // Chain metadata
    uint32 internal constant EID = 40421;
    uint256 internal constant CHAIN_ID = 10087;
    string internal constant CHAIN_NAME = "gate-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNGateTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2GatelayerMainnet {
    // Chain metadata
    uint32 internal constant EID = 30389;
    uint256 internal constant CHAIN_ID = 10088;
    string internal constant CHAIN_NAME = "gatelayer-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x306B9a8953B9462F8b826e6768a93C8EA7454965;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNGatelayerMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x306B9a8953B9462F8b826e6768a93C8EA7454965;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
}

library LayerZeroV2GlueMainnet {
    // Chain metadata
    uint32 internal constant EID = 30342;
    uint256 internal constant CHAIN_ID = 1300;
    string internal constant CHAIN_NAME = "glue-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x15e51701F245F6D5bd0FEE87bCAf55B0841451B3);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xfd76d9CB0Bac839725aB79127E7411fe71b1e3CA);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNGlueMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xe4e65D80DEb0E2c8391215bcBA4b5f7603420407;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xaA3099F91912E07976c2DD1598DC740d81BD3FeA;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xd1C70192CC0eb9a89e3D9032b9FAcab259A0a1e9;
}

library LayerZeroV2GlueTestnet {
    // Chain metadata
    uint32 internal constant EID = 40296;
    uint256 internal constant CHAIN_ID = 1300;
    string internal constant CHAIN_NAME = "glue-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNGlueTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2GnosisMainnet {
    // Chain metadata
    uint32 internal constant EID = 30145;
    uint256 internal constant CHAIN_ID = 100;
    string internal constant CHAIN_NAME = "gnosis-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x3C156b1f625D2B4E004D43E91aC2c3a719C29c7B);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9714Ccf1dedeF14BaB5013625DB92746C1358cb4);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xe70cA542A9f2D932aD34efE3a681D83828452666;
    address internal constant EXECUTOR = 0x38340337f9ADF5D76029Ab3A667d34E5a032F7BA;
    address internal constant DEAD_DVN = 0x8a893567f27893e6E0c7b6bba8769d9ab3E911Ff;
    address internal constant LZ_EXECUTOR = 0x2F0788fFbf8fCa58B2ea10c05F0CA9931ffC8978;
}

library LayerZeroV2DVNGnosisMainnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x90EE303d4743F460B9a38415e09f3799b85a4efc;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x30c673a1F34B91C4bf4951670A2B7c8C0663b100;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x93d2d7AADC9F2Cf5EbC88e9703E06dB09b8Fd85B;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x6ABdb569Dc985504cCcB541ADE8445E5266e7388;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x8a893567f27893e6E0c7b6bba8769d9ab3E911Ff;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x11bb2991882a86Dc3E38858d922559A385d506bA;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x7cC59B5062A8291804A21a2a793c6Ce9ea2f0Eb9;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x13feb7234Ff60A97af04477d6421415766753Ba3;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xf10Ea2c0D43bC4973cfBCc94eBAfC39d1D4aF118;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0x790d7B1E97a086eb0012393b65a5B32cE58a04Dc;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xFCeA5cEF8b1ae3A454577C9444CDD95c1284B0cF;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0x07C05EaB7716AcB6f83ebF6268F8EECDA8892Ba1;
}

library LayerZeroV2GnosisTestnet {
    // Chain metadata
    uint32 internal constant EID = 40145;
    uint256 internal constant CHAIN_ID = 10200;
    string internal constant CHAIN_NAME = "gnosis-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xddF3266fEAa899ACcf805F4379E5137144cb0A7D);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xC22825d9982365d31E63CC3b5589B17067e795b1);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xEA883534D2d1fE35a993a38c14B037fe4aD07DeF;
    address internal constant EXECUTOR = 0xe3826C822a53a736cC4d8f6FD884a6E3A461d29F;
    address internal constant LZ_EXECUTOR = 0x410612e1721396A3D03bE613b2FE7c31fa6fefb7;
}

library LayerZeroV2DVNGnosisTestnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x1C4Fc6f1E44EAaef53aC701b7cc4c280F536fA75;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xaBfa1F7c3586eaFF6958DC85BAEbBab7D3908fD2;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xb186F85d0604FE58af2Ea33fE40244f5EEF7351B;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x1a94f3aEA1847baA4C90Be9e7Db25d18E7597c47;
    // TSS [tss]
    address internal constant DVN_TSS = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
}

library LayerZeroV2GoatMainnet {
    // Chain metadata
    uint32 internal constant EID = 30361;
    uint256 internal constant CHAIN_ID = 2345;
    string internal constant CHAIN_NAME = "goat-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNGoatMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x396dC0A78F789586E2982fCCD830C5954C193F3c;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDF0771128BD4B9b18eD883d5Af41a6C725C51B38;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xe6CD8c2E46Ef396DF88048449e5B1C75172b40C3;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // TSS [tss]
    address internal constant DVN_TSS = 0x00961ae3250C2c0dB37a476C0ebA2353Ce800Dae;
}

library LayerZeroV2GoatTestnet {
    // Chain metadata
    uint32 internal constant EID = 40356;
    uint256 internal constant CHAIN_ID = 48816;
    string internal constant CHAIN_NAME = "goat-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNGoatTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2GravityMainnet {
    // Chain metadata
    uint32 internal constant EID = 30294;
    uint256 internal constant CHAIN_ID = 1625;
    string internal constant CHAIN_NAME = "gravity-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0xc70AB6f32772f59fBfc23889Caf4Ba3376C84bAf;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNGravityMainnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xcced05c3667877B545285B25f19F794436A1c481;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xe9C24dD582e37FAACa7d44c799530688DE92Da73;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xe95B63C4dA1D94fa5022e7C23c984F278B416ca7;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xc70AB6f32772f59fBfc23889Caf4Ba3376C84bAf;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x4b92BC2A7d681bf5230472C80d92aCFE9A6b9435;
    // Nodesguru [nodes-guru]
    address internal constant DVN_NODESGURU = 0x4D52f5bc932cf1A854381A85ad9ED79B8497c153;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x0D155ec1Dfc983E919C318964fD16078408E99CC;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x70BF42C69173d6e33b834f59630DAC592C70b369;
}

library LayerZeroV2GunzMainnet {
    // Chain metadata
    uint32 internal constant EID = 30371;
    uint256 internal constant CHAIN_ID = 43419;
    string internal constant CHAIN_NAME = "gunz-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNGunzMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x0D7cb4033e0C193F65B3639E61b6986A29Bf1DD4;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xFC977A4e88157B697417aDe965cEF0a2dfA39C70;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x70BF42C69173d6e33b834f59630DAC592C70b369;
}

library LayerZeroV2GunzillaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40236;
    uint256 internal constant CHAIN_ID = 49321;
    string internal constant CHAIN_NAME = "gunzilla-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x82b7dc04A4ABCF2b4aE570F317dcab49f5a10f24);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x306202702AF38152D3604cD82af71C3db0eE08CF);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xE125CB67881E0eEddfB01E5F96659138eBe3a15E;
    address internal constant EXECUTOR = 0x955412C07d9bC1027eb4d481621ee063bFd9f4C6;
    address internal constant LZ_EXECUTOR = 0x4C5302179f37DFBadC61CA7C3DE5FF489667C173;
}

library LayerZeroV2DVNGunzillaTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x8f337D230a5088E2a448515Eab263735181A9039;
}

library LayerZeroV2HarmonyMainnet {
    // Chain metadata
    uint32 internal constant EID = 30116;
    uint256 internal constant CHAIN_ID = 1666600000;
    string internal constant CHAIN_NAME = "harmony-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x795F8325aF292Ff6E58249361d1954893BE15Aff);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x177d36dBE2271A4DdB2Ad8304d82628eb921d790);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xcDF687DdD0e88aBB026910988eB4908BaB86b719;
    address internal constant EXECUTOR = 0xd27B2Fe1d0a60E06A0ec7e64501d2f15e6c65Bd9;
    address internal constant DEAD_DVN = 0x801BfD947905C337d552F8E30cb4E80435771674;
    address internal constant LZ_EXECUTOR = 0xdf3ad32a558578AC0AD1c19AAD41DA1ba5b37d69;
}

library LayerZeroV2DVNHarmonyMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xa6F5DDBF0Bd4D03334523465439D301080574742;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x462A63dBE8Ca43a57D379c88a382C02862B9A2cE;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x801BfD947905C337d552F8E30cb4E80435771674;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x8363302080e711E0CAb978C081b9e69308d49808;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xD24972c11F91c1bB9eaEe97ec96bB9c33cF7af24;
    // TSS [tss]
    address internal constant DVN_TSS = 0x3E2EF091D7606E4CA3B8d84bcAf23da0FfA11053;
}

library LayerZeroV2HarmonyTestnet {
    // Chain metadata
    uint32 internal constant EID = 40133;
    uint256 internal constant CHAIN_ID = 1666900000;
    string internal constant CHAIN_NAME = "harmony-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNHarmonyTestnet {
    // TSS [tss]
    address internal constant DVN_TSS = 0xB099D5a9652a80ff8f4234BDe00f66531aa91c50;
}

library LayerZeroV2HederaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30316;
    uint256 internal constant CHAIN_ID = 295;
    string internal constant CHAIN_NAME = "hedera-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3A73033C0b1407574C76BdBAc67f126f6b4a9AA9);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);
    address internal constant BLOCKED_MESSAGE_LIB = 0xf540D892BC671f08E0B1c5B61185c53c2211e8f7;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNHederaMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x97841D4AB18E9A923322A002d5b8Eb42b31Ccdb5;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xA83A87a0bDce466edfBB6794404E1D7F556B8F20;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x4b92BC2A7d681bf5230472C80d92aCFE9A6b9435;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xd0f50363E1aE33feAC8e0E067e42d0070C394525;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xeCc3Dc1Cc45B1934CE713F8fb0d3D3852C01a5c1;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x178D9517FC35633afDA67b8c236e568997a3Ae03;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x9d5D4983C4ed9253E920Aa82bE9436F1FbeAe0c0;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x8EfB6b7dC61C6B6638714747d5E6B81a3512b5C3;
}

library LayerZeroV2HederaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40285;
    uint256 internal constant CHAIN_ID = 296;
    string internal constant CHAIN_NAME = "hedera-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xbD672D1562Dd32C23B563C989d8140122483631d);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1707575F7cEcdC0Ad53fde9ba9bda3Ed5d4440f4);
    address internal constant BLOCKED_MESSAGE_LIB = 0xEEe3044F72093d25f70DC6C684FBB0c81DdE62d1;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xc0c34919A04d69415EF2637A3Db5D637a7126cd0);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x19D1198b0f43Ec076a897bF98dEb0FD1D6CE8B9f;
    address internal constant EXECUTOR = 0xe514D331c54d7339108045bF4794F8d71cad110e;
    address internal constant LZ_EXECUTOR = 0x4C88bA56a20A77E72F809F08fFD87e8bb6a87dF7;
}

library LayerZeroV2DVNHederaTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xEc7Ee1f9e9060e08dF969Dc08EE72674AfD5E14D;
}

library LayerZeroV2HemiMainnet {
    // Chain metadata
    uint32 internal constant EID = 30329;
    uint256 internal constant CHAIN_ID = 43111;
    string internal constant CHAIN_NAME = "hemi-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNHemiMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x396dC0A78F789586E2982fCCD830C5954C193F3c;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x38179D3BFa6Ef1d69A8A7b0b671BA3D8836B2AE8;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x07C05EaB7716AcB6f83ebF6268F8EECDA8892Ba1;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
}

library LayerZeroV2HemiTestnet {
    // Chain metadata
    uint32 internal constant EID = 40338;
    uint256 internal constant CHAIN_ID = 743111;
    string internal constant CHAIN_NAME = "hemi-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNHemiTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2HoleskyTestnet {
    // Chain metadata
    uint32 internal constant EID = 40217;
    uint256 internal constant CHAIN_ID = 17000;
    string internal constant CHAIN_NAME = "holesky-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x21F33EcF7F65D61f77e554B4B4380829908cD076);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xbAe52D605770aD2f0D17533ce56D146c7C964A0d);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x87FE14Af115F3b14F7d91Be426C0213a24AE9498;
    address internal constant EXECUTOR = 0xBc0C24E6f24eC2F1fd7E859B8322A1277F80aaD5;
    address internal constant LZ_EXECUTOR = 0x9D3C36226c8a32D9F7AAC9CecB3d904529486d12;
}

library LayerZeroV2DVNHoleskyTestnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xD0D47C34937DdbeBBe698267a6BbB1dacE51198D;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0xA38e1ff4b2516f6ed7eBbf1bF12a46c766969937;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0x7ae0755FBb6f397c4147EDd8aF159B805dE68FCa;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x3E43f8ff0175580f7644DA043071c289DDf98118;
    // TSS [tss]
    address internal constant DVN_TSS = 0xb23b28012ee92E8dE39DEb57Af31722223034747;
}

library LayerZeroV2HomeverseMainnet {
    // Chain metadata
    uint32 internal constant EID = 30265;
    uint256 internal constant CHAIN_ID = 19011;
    string internal constant CHAIN_NAME = "homeverse-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x980205D352F198748B626f6f7C38A8a5663Ec981);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xFe7C30860D01e28371D40434806F4A8fcDD3A098);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x66A71Dcef29A0fFBDBE3c6a460a3B5BC225Cd675;
    address internal constant EXECUTOR = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant DEAD_DVN = 0x25dCD7AdC3Ab4c00b8bcf78F33d95A19211Eab48;
    address internal constant LZ_EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
}

library LayerZeroV2DVNHomeverseMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x97841D4AB18E9A923322A002d5b8Eb42b31Ccdb5;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x25dCD7AdC3Ab4c00b8bcf78F33d95A19211Eab48;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x1294E3347ec64Fd63e1d0594Dc1294247cd237C7;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcbD35a9b849342AD34a71e072D9947D4AFb4E164;
    // Ubisoft [ubisoft]
    address internal constant DVN_UBISOFT = 0x60aF1C48AbD2F6013e06269292a77B3285e984b9;
}

library LayerZeroV2HomeverseTestnet {
    // Chain metadata
    uint32 internal constant EID = 40265;
    uint256 internal constant CHAIN_ID = 40875;
    string internal constant CHAIN_NAME = "homeverse-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNHomeverseTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2HorizenTestnet {
    // Chain metadata
    uint32 internal constant EID = 40435;
    uint256 internal constant CHAIN_ID = 2651420;
    string internal constant CHAIN_NAME = "horizen-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNHorizenTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2HubbleMainnet {
    // Chain metadata
    uint32 internal constant EID = 30182;
    uint256 internal constant CHAIN_ID = 1992;
    string internal constant CHAIN_NAME = "hubble-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xBB967E3A329F4c47F654B82a2F7d11E69E5A7143);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x6f1686189f32e78f1D83e7c6Ed433FCeBc3A5B51);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x5B23E2bAe5C5f00e804EA2C4C9abe601604378fa;
    address internal constant EXECUTOR = 0xe9AE261D3aFf7d3fCCF38Fa2d612DD3897e07B2d;
    address internal constant LZ_EXECUTOR = 0xAa76e7DB9D087933Ce06c06f7D0107bA48a96bdb;
}

library LayerZeroV2DVNHubbleMainnet {
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0xe9bA4C1e76D874a43942718Dafc96009ec9D9917;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2HubbleTestnet {
    // Chain metadata
    uint32 internal constant EID = 40182;
    string internal constant CHAIN_NAME = "hubble-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNHubbleTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x45841dd1ca50265Da7614fC43A361e526c0e6160;
}

library LayerZeroV2HumanityMainnet {
    // Chain metadata
    uint32 internal constant EID = 30382;
    uint256 internal constant CHAIN_ID = 6985385;
    string internal constant CHAIN_NAME = "humanity-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x282b3386571f7f794450d5789911a9804FA346b4;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNHumanityMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x97841D4AB18E9A923322A002d5b8Eb42b31Ccdb5;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x7cacBe439EaD55fa1c22790330b12835c6884a91;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
}

library LayerZeroV2HumanityTestnet {
    // Chain metadata
    uint32 internal constant EID = 40410;
    uint256 internal constant CHAIN_ID = 7080969;
    string internal constant CHAIN_NAME = "humanity-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNHumanityTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2HyperliquidMainnet {
    // Chain metadata
    uint32 internal constant EID = 30367;
    uint256 internal constant CHAIN_ID = 999;
    string internal constant CHAIN_NAME = "hyperliquid-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3A73033C0b1407574C76BdBAc67f126f6b4a9AA9);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xefF88eC9555b33A39081231131f0ed001FA9F96C);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xfd76d9CB0Bac839725aB79127E7411fe71b1e3CA);
    address internal constant BLOCKED_MESSAGE_LIB = 0xf540D892BC671f08E0B1c5B61185c53c2211e8f7;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x7cacBe439EaD55fa1c22790330b12835c6884a91);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7;
    address internal constant EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
    address internal constant DEAD_DVN = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant LZ_EXECUTOR = 0x306B9a8953B9462F8b826e6768a93C8EA7454965;
}

library LayerZeroV2DVNHyperliquidMainnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xf55E9dAef79eeC17F76e800F059495F198ef8348;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x83342EC538dF0460e730a8F543Fe63063e2D44C4;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x8a41c07623cdF8995aE8769BfC45859D7cA99e82;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x32fFd21260172518A8844feC76A88C8F239C384b;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x082A08F524C043ec7F6b9a42BAE79A1990D8499a;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xBB83Ecf372CbB6daa629ea9A9A53BEC6d601F229;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xD88d5C7B1779b54C9228Ce00560913FB99C32ACB;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xcCE466a522984415bC91338c232d98869193D46e;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x7ffD4989882A006Ac51f324b4889B3087d71B716;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x9e451905f65eF78D62b93DAc3513486da8429d0a;
    // MIM [mim]
    address internal constant DVN_MIM = 0x32B29d6B6cd4A851548A6E888Cc25E39E8a16d86;
    // Mantle03 [mantle03]
    address internal constant DVN_MANTLE03 = 0xbBD228Fa47A8E80FbBfB778Abc56031Fa2C038ce;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0xcFe987eBFf7612B53D145DD70EE24D00E12d6A1F;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xFFE7244216F46401F541125Bc8349bBbEB666027;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x8E49eF1DfAe17e547CA0E7526FfDA81FbaCA810A;
    // Omnix [omni-x]
    address internal constant DVN_OMNIX = 0x3E3A9bC9149Ddf1D3A3ea51c0A49Eb9fe6347043;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xC7423626016bc40375458bc0277F28681EC91C8e;
    // TSS [tss]
    address internal constant DVN_TSS = 0xacFC61640598C25bdB273291D889816B2218CD9B;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0xaE016a939935D6fe6185900d4c7C7C9b27366caC;
}

library LayerZeroV2HyperliquidTestnet {
    // Chain metadata
    uint32 internal constant EID = 40362;
    uint256 internal constant CHAIN_ID = 998;
    string internal constant CHAIN_NAME = "hyperliquid-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xf9e1815F151024bDE4B7C10BAC10e8Ba9F6b53E1);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x43E505ba192aaC7BABdC1A796c87844171011684);
    address internal constant BLOCKED_MESSAGE_LIB = 0x25E8806A598dF0C7f4C24d3e6eFCdE0D5cA7787d;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x012f6eaE2A0Bf5916f48b5F37C62Bcfb7C1ffdA1);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x386A3922470581155c42282801231762E7343802;
    address internal constant EXECUTOR = 0x72e34F44Eb09058bdDaf1aeEebDEC062f1844b00;
    address internal constant DEAD_DVN = 0xb8815f3f882614048CbE201a67eF9c6F10fe5035;
    address internal constant LZ_EXECUTOR = 0x8eB4FBFD3342538d4d2dbb7225eC2000ae1a1C50;
}

library LayerZeroV2DVNHyperliquidTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xb8815f3f882614048CbE201a67eF9c6F10fe5035;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD_2 = 0x55c175DD5b039331dB251424538169D8495C18d1;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x91E698871030D0e1b6c9268C20bB57E2720618Dd;
    // Mantle01 [mantle01]
    address internal constant DVN_MANTLE01 = 0x003bD8aDc7ba8A7353B950541904b61011e38DaE;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x4c90F152707c6EAB6cd801E326D25b0591E449a2;
}

library LayerZeroV2IdexTestnet {
    // Chain metadata
    uint32 internal constant EID = 40219;
    string internal constant CHAIN_NAME = "idex-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNIdexTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x45841dd1ca50265Da7614fC43A361e526c0e6160;
}

library LayerZeroV2InjectiveTestnet {
    // Chain metadata
    uint32 internal constant EID = 40218;
    uint256 internal constant CHAIN_ID = 1738;
    string internal constant CHAIN_NAME = "injective-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNInjectiveTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
}

library LayerZeroV2Injective1439Testnet {
    // Chain metadata
    uint32 internal constant EID = 40408;
    uint256 internal constant CHAIN_ID = 1439;
    string internal constant CHAIN_NAME = "injective1439-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x9eCf72299027e8AeFee5DC5351D6d92294F46d2b);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xB0487596a0B62D1A71D0C33294bd6eB635Fc6B09);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNInjective1439Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2InjectiveevmMainnet {
    // Chain metadata
    uint32 internal constant EID = 30394;
    uint256 internal constant CHAIN_ID = 1776;
    string internal constant CHAIN_NAME = "injectiveevm-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x37aaaf95887624a363effB7762D489E3C05c2a02);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x15e51701F245F6D5bd0FEE87bCAf55B0841451B3);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNInjectiveevmMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x26cD5aBaDf7eC3f0F02b48314bfcA6b2342cddD4;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
}

library LayerZeroV2InkMainnet {
    // Chain metadata
    uint32 internal constant EID = 30339;
    uint256 internal constant CHAIN_ID = 57073;
    string internal constant CHAIN_NAME = "ink-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xca29f3A6f966Cb2fc0dE625F8f325c0C46dbE958);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x0325D8EcD68c0D6E1fDD7260fF7001478Ad77910);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x76111DE813F83AAAdBD62773Bf41247634e2319a);
    address internal constant BLOCKED_MESSAGE_LIB = 0x796862C4849662BfC30FE7559780923D519d3192;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x473132bb594caEF281c68718F4541f73FE14Dc89);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x658fd63Dca9378e3B7DEb49463D0b25336433F91;
    address internal constant EXECUTOR = 0xFEbCF17b11376C724AB5a5229803C6e838b6eAe5;
    address internal constant DEAD_DVN = 0x5ba261D2b595966A81548B4FbE3851a6dA9Cf92c;
    address internal constant LZ_EXECUTOR = 0xAE3C661292bb4D0AEEe0588b4404778DF1799EE6;
}

library LayerZeroV2DVNInkMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x1E4CE74ccf5498B19900649D9196e64BAb592451;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x18766cA3fEcDE0C1251922Be6D3a088aDf5f53e6;
    // Frax [frax]
    address internal constant DVN_FRAX = 0xF007f1Fef50C0aCAF4418741454BCAEaeCB96B87;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x395B14700812cccC38b8e64F0a06ce2045FE9bA3;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x5fc8C440f7B9C7646c2904aC63C1c0ca714c733e;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x5ba261D2b595966A81548B4FbE3851a6dA9Cf92c;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x174F2bA26f8ADeAfA82663bcf908288d5DbCa649;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x2cabF8F2c0AAe35A771a1c19487684E94388B03a;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x0ad6c9Eb13e373154bFB303561b979BAc5FA2302;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x3a4636E9AB975d28d3Af808b4e1c9fd936374E30;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x96Ca3420BeDD887cAbDAbA29C7dcE6bAD57AF98b;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x68b6Fb5e728dB92A09BA810595915aE3d7399e40;
    // Paxos [paxos]
    address internal constant DVN_PAXOS = 0x1C5C9C9b50885319BD3cB7e67294136CD436BeE3;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xE900e073BADaFdC6F72541F34E6b701bde835487;
    // TSS [tss]
    address internal constant DVN_TSS = 0xf772581dcf3300914D6222C4e6FcF0ed5EF93142;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0xDF44a1594d3D516f7CDFb4DC275a79a5F6e3Db1d;
}

library LayerZeroV2InkTestnet {
    // Chain metadata
    uint32 internal constant EID = 40358;
    uint256 internal constant CHAIN_ID = 763373;
    string internal constant CHAIN_NAME = "ink-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNInkTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x2B35edd4E5eCba555585375f9718FbA97C1bF991;
    // Paxos [paxos]
    address internal constant DVN_PAXOS = 0x900D9b7474afAC222c03FCfA4c0692A329fc9ca7;
}

library LayerZeroV2IntainMainnet {
    // Chain metadata
    uint32 internal constant EID = 30152;
    string internal constant CHAIN_NAME = "intain-mainnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2IntainTestnet {
    // Chain metadata
    uint32 internal constant EID = 10152;
    string internal constant CHAIN_NAME = "intain-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT = ILayerZeroEndpointV2(0xae92d5aD7583AD66E49A0c67BAd18F6ba52dDDc1);

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant RELAYER_V2 = 0xb23b28012ee92E8dE39DEb57Af31722223034747;
    address internal constant F_PVALIDATOR = 0x4e08B1F1AC79898569CfB999FB92B5495FB18A2B;
    address internal constant TREASURY_V2 = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant ULTRA_LIGHT_NODE_V2 = 0x533fB43e6808D9634CC0DD0c6c1195e8921D4FCC;
    address internal constant M_PTVALIDATOR01 = 0x2cA20802fd1Fd9649bA8Aa7E50F0C82b479f35fe;
    address internal constant NONCE_CONTRACT = 0x89acA20831317c6dff2A348a1e4f3D37a48bC498;
}

library LayerZeroV2IotaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30284;
    uint256 internal constant CHAIN_ID = 8822;
    string internal constant CHAIN_NAME = "iota-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant DEAD_DVN = 0xE6f1C3c1674d3Bae71ef33300441e7469a0021fF;
    address internal constant LZ_EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
}

library LayerZeroV2DVNIotaMainnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xD7bB44516b476ca805FB9d6fc5b508ef3Ee9448D;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xeCbaA45c33ce6Fa284995e5F8314f5bC7F1C2008;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDFC9455F8F86b45Fa3b1116967f740905de6Fe51;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xE6f1C3c1674d3Bae71ef33300441e7469a0021fF;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xf18A7d86917653725aFB7C215E47a24F9D784718;
    // TSS [tss]
    address internal constant DVN_TSS = 0x59dAE6516D2fA7F21195adC0Cda14d819D21031C;
}

library LayerZeroV2IotaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40307;
    uint256 internal constant CHAIN_ID = 1075;
    string internal constant CHAIN_NAME = "iota-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNIotaTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2IslanderMainnet {
    // Chain metadata
    uint32 internal constant EID = 30330;
    uint256 internal constant CHAIN_ID = 1480;
    string internal constant CHAIN_NAME = "islander-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNIslanderMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x45A7305c65AAd28384F20a80F87a5183772E4F70;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xca848BcB059e33Adb260d793EE360924B6Aa8E86;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x70BF42C69173d6e33b834f59630DAC592C70b369;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x9EEee79F5dBC4D99354b5CB547c138Af432F937b;
}

library LayerZeroV2JocMainnet {
    // Chain metadata
    uint32 internal constant EID = 30285;
    uint256 internal constant CHAIN_ID = 81;
    string internal constant CHAIN_NAME = "joc-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0xcC2d3d4B88b87775Bec386d92F6951Ee7f8d52D9;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNJocMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x5488a4ca201421cF100dC1B90D1dE5B26b421f64;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xFb02364E3F5e97d8327dC6e4326E93828a28657d;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xcC2d3d4B88b87775Bec386d92F6951Ee7f8d52D9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x57eB450b257E6A5d65CDc9A7B95245139975eaCf;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x34730f2570E6cff8B1C91FaaBF37D0DD917c4367;
}

library LayerZeroV2JocTestnet {
    // Chain metadata
    uint32 internal constant EID = 40242;
    uint256 internal constant CHAIN_ID = 10081;
    string internal constant CHAIN_NAME = "joc-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x9eCf72299027e8AeFee5DC5351D6d92294F46d2b);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xB0487596a0B62D1A71D0C33294bd6eB635Fc6B09);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x1d186C560281B8F1AF831957ED5047fD3AB902F9;
    address internal constant EXECUTOR = 0x4dFa426aEAA55E6044d2b47682842460a04aF45c;
    address internal constant LZ_EXECUTOR = 0x8A3D588D9f6AC041476b094f97FF94ec30169d3D;
}

library LayerZeroV2DVNJocTestnet {
    // Japan Blockchain Foundation [joc]
    address internal constant DVN_JAPAN_BLOCKCHAIN_FOUNDATION = 0x3d4d36a92A597faec770678c1de305D50A7c4307;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    // TSS [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2KatanaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30375;
    uint256 internal constant CHAIN_ID = 747474;
    string internal constant CHAIN_NAME = "katana-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNKatanaMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x53fF818a1c492e667E2cD0b5AFe0FC82c66d33c7;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x7cC59B5062A8291804A21a2a793c6Ce9ea2f0Eb9;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x5FA12ebC08e183C1F5d44678cF897edEfe68738B;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x84a410A8a912e333B957680998a76e526f98e207;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xaCDe1f22EEAb249d3ca6Ba8805C8fEe9f52a16e7;
}

library LayerZeroV2KatanaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40403;
    uint256 internal constant CHAIN_ID = 129399;
    string internal constant CHAIN_NAME = "katana-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNKatanaTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2KavaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30177;
    uint256 internal constant CHAIN_ID = 2222;
    string internal constant CHAIN_NAME = "kava-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x83Fb937054918cB7AccB15bd6cD9234dF9ebb357);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xb7e97ad5661134185Fe608b2A31fe8cEf2147Ba9);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x1eeF2Bd32b5827813d97Cd25b6C392154044f453;
    address internal constant EXECUTOR = 0x41ED8065dd9bC6c0caF21c39766eDCBA0F21851c;
    address internal constant DEAD_DVN = 0x1B3b79f03EE74d4C88f2Bdd84112b58a01EA0167;
    address internal constant LZ_EXECUTOR = 0x0a1dF45fCB28616bd2f45512f8Aa6ca958829eF1;
}

library LayerZeroV2DVNKavaMainnet {
    // Axelar [axelar]
    address internal constant DVN_AXELAR = 0x80C4c3768dD5A3Dd105cf2BD868fdc50280E398B;
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x06b85533967179eD5bC9C754b84aE7d02f7eD830;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x05dF4949f0B4dC4c4b1ADc0e01700Bc669E935c3;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x1B3b79f03EE74d4C88f2Bdd84112b58a01EA0167;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x2D40A7B66F776345Cf763c8EBB83199Cd285e7a3;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x6a4C9096F162f0ab3C0517B0a40dc1CE44785e16;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x9CbAF815eD62Ef45C59E9F2Cb05106bAbb4d31d3;
    // TSS [tss]
    address internal constant DVN_TSS = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
}

library LayerZeroV2KavaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40172;
    uint256 internal constant CHAIN_ID = 2221;
    string internal constant CHAIN_NAME = "kava-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x4B68C45f6A276485870D56f1699DCf451FEC076F);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x3De74963B7223343ffD168e230fC4e374282d37b);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x8c2Bc80592FC4E89b536f536159A50F25eA99925;
    address internal constant EXECUTOR = 0x13EA72039D7f02848CDDd67a2F948dd334cDE70e;
    address internal constant LZ_EXECUTOR = 0xAF1e8A7Ea4f30E3CBa6Bc2d87eCa1086C16ff8d3;
}

library LayerZeroV2DVNKavaTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x433DAF5E5FBA834De2C3D06A82403c9e96DF6B42;
    // TSS [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2KevnetTestnet {
    // Chain metadata
    uint32 internal constant EID = 40328;
    uint256 internal constant CHAIN_ID = 1301;
    string internal constant CHAIN_NAME = "kevnet-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x145C041566B21Bec558B2A37F1a5Ff261aB55998);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);
    address internal constant BLOCKED_MESSAGE_LIB = 0x6F09f1430c4c204c4b5433Abe24C15f342b70699;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x53fd4C4fBBd53F6bC58CaE6704b92dB1f360A648);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C;
    address internal constant EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
    address internal constant DEAD_DVN = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant LZ_EXECUTOR = 0x9A289B849b32FF69A95F8584a03343a33Ff6e5Fd;
}

library LayerZeroV2DVNKevnetTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x55c175DD5b039331dB251424538169D8495C18d1;
}

library LayerZeroV2KiteTestnet {
    // Chain metadata
    uint32 internal constant EID = 40415;
    uint256 internal constant CHAIN_ID = 2368;
    string internal constant CHAIN_NAME = "kite-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNKiteTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2KiwiTestnet {
    // Chain metadata
    uint32 internal constant EID = 40209;
    uint256 internal constant CHAIN_ID = 2037;
    string internal constant CHAIN_NAME = "kiwi-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNKiwiTestnet {
    // TSS [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2Kiwi2Testnet {
    // Chain metadata
    uint32 internal constant EID = 40241;
    uint256 internal constant CHAIN_ID = 2037;
    string internal constant CHAIN_NAME = "kiwi2-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNKiwi2Testnet {
    // TSS [tss]
    address internal constant DVN_TSS = 0xBeF15A890bb0e73312FD38a5ce6F36F33827fcae;
}

library LayerZeroV2KlaytnMainnet {
    // Chain metadata
    uint32 internal constant EID = 30150;
    uint256 internal constant CHAIN_ID = 8217;
    string internal constant CHAIN_NAME = "klaytn-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x9714Ccf1dedeF14BaB5013625DB92746C1358cb4);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x937AbA873827BF883CeD83CA557697427eAA46Ee);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x0a1dF45fCB28616bd2f45512f8Aa6ca958829eF1;
    address internal constant EXECUTOR = 0xe149187a987F129FD3d397ED04a60b0b89D1669f;
    address internal constant DEAD_DVN = 0xdc58A279Bd69B208a4AdfdA0Aa066f76e33E2901;
    address internal constant LZ_EXECUTOR = 0x75b073994560A5c03Cd970414d9170be0C6e5c36;
}

library LayerZeroV2DVNKlaytnMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x28af4dADbc5066e994986E8bb105240023dC44B6;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x1154d04d07AEe26ff2C200Bd373eb76a7e5694d6;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xca29B2be45F1D609189dc467e0f1E48ee202eD0E;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xaCDe1f22EEAb249d3ca6Ba8805C8fEe9f52a16e7;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xdc58A279Bd69B208a4AdfdA0Aa066f76e33E2901;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xc80233AD8251E668BecbC3B0415707fC7075501e;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x6a4C9096F162f0ab3C0517B0a40dc1CE44785e16;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xF7a1963e52b1471d01e320d547b72b05F443C9e6;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x17720E3F361dCc2f70871a2ce3ac51b0Eaa5c2E4;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
}

library LayerZeroV2KlaytnTestnet {
    // Chain metadata
    uint32 internal constant EID = 40150;
    uint256 internal constant CHAIN_ID = 1001;
    string internal constant CHAIN_NAME = "klaytn-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x6bd925aA58325fba65Ea7d4412DDB2E5D2D9427d);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xFc4eA96c3de3Ba60516976390fA4E945a0b8817B);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x0758019941272bF781a7Cb42D223561A2EdAD1D7;
    address internal constant EXECUTOR = 0xddF3266fEAa899ACcf805F4379E5137144cb0A7D;
    address internal constant LZ_EXECUTOR = 0xAe0549FeF1B77d2D187C867Ad9a5432A9e8381C9;
}

library LayerZeroV2DVNKlaytnTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xe4Fe9782b809b7D66f0Dcd10157275D2C4e4898D;
    // TSS [tss]
    address internal constant DVN_TSS = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
}

library LayerZeroV2LensMainnet {
    // Chain metadata
    uint32 internal constant EID = 30373;
    uint256 internal constant CHAIN_ID = 232;
    string internal constant CHAIN_NAME = "lens-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x5c6cfF4b7C49805F8295Ff73C204ac83f3bC4AE7);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x01047601DB5E63b1574aae317BAd9C684E3C9056);
    address internal constant BLOCKED_MESSAGE_LIB = 0x3258287147FB7887d8A643006e26E19368057377;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9AB633555E460C01f8c7b8ab24C88dD4986dD5A1);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x52fFEeaE5Ffa89D4b31c72F87ead3699FCB79e40;
    address internal constant EXECUTOR = 0x553313dB58dEeFa3D55B1457D27EAB3Fe5EC87E8;
    address internal constant DEAD_DVN = 0x04830f6deCF08Dec9eD6C3fCAD215245B78A59e1;
    address internal constant LZ_EXECUTOR = 0xcaeB82549Ff641C4aF73505a137B5BeD06FEaf64;
}

library LayerZeroV2DVNLensMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x27bB790440376dB53c840326263801FAFd9F0EE6;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x04830f6deCF08Dec9eD6C3fCAD215245B78A59e1;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x07fD0e370B49919cA8dA0CE842B8177263c0E12c;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x62aA89bAd332788021F6F4F4Fb196D5Fe59C27a6;
}

library LayerZeroV2LensTestnet {
    // Chain metadata
    uint32 internal constant EID = 40373;
    uint256 internal constant CHAIN_ID = 37111;
    string internal constant CHAIN_NAME = "lens-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x00B7b8ebA1c60183B0D2a10Fc3552902e8DD4f5f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x5f04B588B9408d8d5F4ac250e8c71986683C35A5);
    address internal constant BLOCKED_MESSAGE_LIB = 0x6963f2a5526fe79241fbF181Cd0EBD60484f092c;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x16c693A3924B947298F7227792953Cd6BBb21Ac8);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xf1A4f4FA1643ACf9f867b635A6d66a1990A3C217;
    address internal constant EXECUTOR = 0x5dFcab27C1eEC1eB07FF987846013f19355a04cB;
    address internal constant DEAD_DVN = 0xD5eE0055c37dDfaF7e2e0CA3dECb60f365848Bd5;
    address internal constant LZ_EXECUTOR = 0x89d84D8906E88EEEA14172e2CF6633909651CB39;
}

library LayerZeroV2DVNLensTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xD5eE0055c37dDfaF7e2e0CA3dECb60f365848Bd5;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9c0B5520e3eC0ccE919cEaA1fb5AaA7cdAb437D4;
}

library LayerZeroV2Lif3Testnet {
    // Chain metadata
    uint32 internal constant EID = 40300;
    uint256 internal constant CHAIN_ID = 1811;
    string internal constant CHAIN_NAME = "lif3-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNLif3Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // TSS [tss]
    address internal constant DVN_TSS = 0x45841dd1ca50265Da7614fC43A361e526c0e6160;
}

library LayerZeroV2LightlinkMainnet {
    // Chain metadata
    uint32 internal constant EID = 30309;
    uint256 internal constant CHAIN_ID = 1890;
    string internal constant CHAIN_NAME = "lightlink-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNLightlinkMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xF1042Bba248634583d0678d53FB33Bc885E09F11;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xaCDe1f22EEAb249d3ca6Ba8805C8fEe9f52a16e7;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x18f76f0d8CCD176BbE59B3870fa486d1Fff87026;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x0E95cf21aD9376A26997c97f326C5A0a267bB8FF;
}

library LayerZeroV2LightlinkTestnet {
    // Chain metadata
    uint32 internal constant EID = 40309;
    uint256 internal constant CHAIN_ID = 1891;
    string internal constant CHAIN_NAME = "lightlink-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNLightlinkTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2LineasepTestnet {
    // Chain metadata
    uint32 internal constant EID = 40287;
    uint256 internal constant CHAIN_ID = 59141;
    string internal constant CHAIN_NAME = "lineasep-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x53fd4C4fBBd53F6bC58CaE6704b92dB1f360A648);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9eCf72299027e8AeFee5DC5351D6d92294F46d2b);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2;
    address internal constant EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
    address internal constant LZ_EXECUTOR = 0x9A289B849b32FF69A95F8584a03343a33Ff6e5Fd;
}

library LayerZeroV2DVNLineasepTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2LiskMainnet {
    // Chain metadata
    uint32 internal constant EID = 30321;
    uint256 internal constant CHAIN_ID = 1135;
    string internal constant CHAIN_NAME = "lisk-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNLiskMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x0D155ec1Dfc983E919C318964fD16078408E99CC;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x6c5f923B63Fdd52fb9C45dAeFA8695fA6b55a935;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x4b92BC2A7d681bf5230472C80d92aCFE9A6b9435;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x3fe00587a7b2432421d739A68bb890ceE55Bc18F;
}

library LayerZeroV2LiskTestnet {
    // Chain metadata
    uint32 internal constant EID = 40327;
    uint256 internal constant CHAIN_ID = 4202;
    string internal constant CHAIN_NAME = "lisk-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNLiskTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2Ll1Testnet {
    // Chain metadata
    uint32 internal constant EID = 40271;
    uint256 internal constant CHAIN_ID = 1337;
    string internal constant CHAIN_NAME = "ll1-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
    address internal constant EXECUTOR = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
}

library LayerZeroV2DVNLl1Testnet {
    // Blockdaemon (deprecated) [blockdaemon]
    address internal constant DVN_BLOCKDAEMON = 0xc2d9010B6116fCbfA592077e841D0443322EA61A;
    // IntellectEU (deprecated)
    address internal constant DVN_INTELLECTEU = 0xF898152d3ec65946cf463DaCACE6636415CB8C2B;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
    // Republic (deprecated) [republic-crypto]
    address internal constant DVN_REPUBLIC = 0xcDE82F74624525e24853B1f59c8B20A162A3d297;
}

library LayerZeroV2LootMainnet {
    // Chain metadata
    uint32 internal constant EID = 30197;
    uint256 internal constant CHAIN_ID = 5151706;
    string internal constant CHAIN_NAME = "loot-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xCFf08a35A5f27F306e2DA99ff198dB90f13DEF77);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xBB967E3A329F4c47F654B82a2F7d11E69E5A7143);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x57D9775eE8feC31F1B612a06266f599dA167d211;
    address internal constant EXECUTOR = 0x000CC1A759bC3A15e664Ed5379E321Be5de1c9B6;
    address internal constant DEAD_DVN = 0x34406a8ef674f133B57F32083656787722aEE4dE;
    address internal constant LZ_EXECUTOR = 0x2d24207F9C1F77B2E08F2C3aD430da18e355CF66;
}

library LayerZeroV2DVNLootMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xA1491AdA1168f04df32F72913fc3F27522950acf;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x34406a8ef674f133B57F32083656787722aEE4dE;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x4f8B7a7a346Da5c467085377796e91220d904c15;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2LootTestnet {
    // Chain metadata
    uint32 internal constant EID = 40197;
    uint256 internal constant CHAIN_ID = 9088912;
    string internal constant CHAIN_NAME = "loot-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x6271e24A43cCB1509FBDC22284Ab6176237562EE);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x40d0DC337feCDC4C09774e7F92Cb963674CF7Ef2);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xff866Df85B3AAacAf67bEAEfb325169B2A1FAE89;
    address internal constant EXECUTOR = 0x6460EE1b9D5bDE8375ca928767Cc63FBFA111A98;
    address internal constant LZ_EXECUTOR = 0x99eB7367695C470947B74dd9BE1dBf637CD725DA;
}

library LayerZeroV2DVNLootTestnet {
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x09C3Ff7DF4f480F329Cbee2Df6F66c9a2e7F5A63;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2LyraMainnet {
    // Chain metadata
    uint32 internal constant EID = 30311;
    uint256 internal constant CHAIN_ID = 957;
    string internal constant CHAIN_NAME = "lyra-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNLyraMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x047d9DBe4fC6B5c916F37237F547f9F42809935a;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
}

library LayerZeroV2LyraTestnet {
    // Chain metadata
    uint32 internal constant EID = 40308;
    uint256 internal constant CHAIN_ID = 901;
    string internal constant CHAIN_NAME = "lyra-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNLyraTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2LzjkTestnet {
    // Chain metadata
    uint32 internal constant EID = 40418;
    string internal constant CHAIN_NAME = "lzjk-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNLzjkTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2MantaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30217;
    uint256 internal constant CHAIN_ID = 169;
    string internal constant CHAIN_NAME = "manta-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xD1654C656455E40E2905E96b6B91088AC2B362a2);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xC1EC25A9e8a8DE5Aa346f635B33e5B74c4c081aF);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xF622DFb40bf7340DBCf1e5147D6CFD95d7c5cF1F;
    address internal constant EXECUTOR = 0x8DD9197E51dC6082853aD71D35912C53339777A7;
    address internal constant DEAD_DVN = 0xf9420F9D2552640e242Ad89CD5D3b625F92705C9;
    address internal constant LZ_EXECUTOR = 0xe767e048221197A2b590CeB5C63C3AAD8ebf87eA;
}

library LayerZeroV2DVNMantaMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x809CDE2AfcF8627312E87a6a7bbFFaB3F8F347c7;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xDF44a1594d3D516f7CDFb4DC275a79a5F6e3Db1d;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x31F748a368a893Bdb5aBB67ec95F232507601A73;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xf9420F9D2552640e242Ad89CD5D3b625F92705C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xA09dB5142654e3eB5Cf547D66833FAe7097B21C3;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x247624e2143504730aeC22912ed41F092498bEf2;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xca848BcB059e33Adb260d793EE360924B6Aa8E86;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2MantaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40221;
    uint256 internal constant CHAIN_ID = 3441005;
    string internal constant CHAIN_NAME = "manta-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNMantaTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x45841dd1ca50265Da7614fC43A361e526c0e6160;
}

library LayerZeroV2MantasepTestnet {
    // Chain metadata
    uint32 internal constant EID = 40272;
    uint256 internal constant CHAIN_ID = 3441006;
    string internal constant CHAIN_NAME = "mantasep-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2DVNMantasepTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2MantleMainnet {
    // Chain metadata
    uint32 internal constant EID = 30181;
    uint256 internal constant CHAIN_ID = 5000;
    string internal constant CHAIN_NAME = "mantle-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x0171830E6C8d7f28cbE35A2045919a415B04a5fF);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xde19274c009A22921E3966a1Ec868cEba40A5DaC);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x8da6512De9379fBF4F09BF520Caf7a85435ed93e);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x9BbEb2B2184B9313Cf5ed4a4DDFEa2ef62a2a03B;
    address internal constant EXECUTOR = 0x4Fc3f4A38Acd6E4cC0ccBc04B3Dd1CCAeFd7F3Cd;
    address internal constant DEAD_DVN = 0x2e2AF282E98bfADed5dd6EC51c7240D818DDBBD9;
    address internal constant LZ_EXECUTOR = 0x4E341b9Cf90514A5b7dfec2c9A1f20AA4514C260;
}

library LayerZeroV2DVNMantleMainnet {
    // Axelar [axelar]
    address internal constant DVN_AXELAR = 0x6e6359A9abe2E235eF2b82e48f0F93D1eC16aFbb;
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7A7dDC46882220a075934f40380d3A7e1e87d409;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xa2447e5B58D357c49Bf74B50B14421e6A100e525;
    // Curve [curve]
    address internal constant DVN_CURVE = 0xF18F2C3d86Ec9A350D5E10Cb67c614201f210D3D;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x45f1d581F704B3203d0a4EAb2A572658d7A2E678;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x28B81e60CeA9889dd51Cbd04B7AfC4e92d048447;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x2e2AF282E98bfADed5dd6EC51c7240D818DDBBD9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x28B6140ead70cb2Fb669705b3598ffB4BEaA060b;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xcC49E6fca014c77E1Eb604351cc1E08C84511760;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x315b0e76A510607bB0F706B17716F426D5b385b8;
    // Mantle Bank [mantle-bank]
    address internal constant DVN_MANTLE_BANK = 0xB797053fBA3D41f5067C4BD74dc334328395C4d2;
    // Mantle01 [mantle01]
    address internal constant DVN_MANTLE01 = 0x0D7cb4033e0C193F65B3639E61b6986A29Bf1DD4;
    // Mantle02 [mantle02]
    address internal constant DVN_MANTLE02 = 0x5a4c666E9C7aA86FD4fBFDFbfd04646DcC45C6c5;
    // Mantle02 (deprecated) [mantle02]
    address internal constant DVN_MANTLE02_2 = 0x18f76f0d8CCD176BbE59B3870fa486d1Fff87026;
    // Mantle03 [mantle03]
    address internal constant DVN_MANTLE03 = 0x78203678D264063815Dac114eA810E9837Cd80f7;
    // MantleCross [mantlecross]
    address internal constant DVN_MANTLECROSS = 0x7a7A3Bfa6CF44136CD173fc5FcBd00BCD05d7866;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x58620C352dd33EaaA2f6513877515453e20e8656;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x3E249F6892aCfeF1922Fc3Bce38FEFeec3896817;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xB19A9370D404308040A9760678c8Ca28aFfbbb76;
    // Ondo [ondo]
    address internal constant DVN_ONDO = 0xdEb742E71d57603D8F769cE36f4353468007fC02;
    // Ondo Staging [ondo-staging]
    address internal constant DVN_ONDO_STAGING = 0x377B51593a03B82543c1508fE7e75Aba6acDE008;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x2206ceb6809bD39f8707ED5eE618f8CFA57E40F2;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xfe809470016196573D64A8D17a745bebEA4ecC41;
    // TSS [tss]
    address internal constant DVN_TSS = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0xb832B06aB57da86AfBD6a1AF9857703D548fb37d;
}

library LayerZeroV2MantleTestnet {
    // Chain metadata
    uint32 internal constant EID = 40181;
    uint256 internal constant CHAIN_ID = 5001;
    string internal constant CHAIN_NAME = "mantle-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x19D1198b0f43Ec076a897bF98dEb0FD1D6CE8B9f);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x0E91e0239971B6CF7519e458a742e2eA4Ffb7458);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x44220D45796ECDf3254771C6715bfbc985240709;
    address internal constant EXECUTOR = 0x9dD6727B9636761ff50E375D0A7039BD5447ceDB;
    address internal constant LZ_EXECUTOR = 0xe514D331c54d7339108045bF4794F8d71cad110e;
}

library LayerZeroV2DVNMantleTestnet {
    // BWare (deprecated) [bware-labs]
    address internal constant DVN_BWARE = 0x7F417F2192B89Cf93b8c4Ee01d558883A0AD7B47;
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0x988D898a9Acf43f61FDBC72AAD6eB3f0542e19e1;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x45841dd1ca50265Da7614fC43A361e526c0e6160;
}

library LayerZeroV2MantlesepTestnet {
    // Chain metadata
    uint32 internal constant EID = 40246;
    uint256 internal constant CHAIN_ID = 5003;
    string internal constant CHAIN_NAME = "mantlesep-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x9A289B849b32FF69A95F8584a03343a33Ff6e5Fd);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x8A3D588D9f6AC041476b094f97FF94ec30169d3D);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
    address internal constant EXECUTOR = 0x8BEEe743829af63F5b37e52D5ef8477eF12511dE;
    address internal constant LZ_EXECUTOR = 0x340b5E5E90a6D177E7614222081e0f9CDd54f25C;
}

library LayerZeroV2DVNMantlesepTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9454f0EABc7C4Ea9ebF89190B8bF9051A0468E03;
    // Mantle01 (deprecated) [mantle01]
    address internal constant DVN_MANTLE01 = 0xEc428b5D75D5d0B44ff58cD4b3D3E12AEf3E2C1F;
    // Mantle01 (deprecated) [mantle01]
    address internal constant DVN_MANTLE01_2 = 0xA8B188a6EB601D0CC82685D912718FEcA8D36e2F;
    // Mantle01 [mantle01]
    address internal constant DVN_MANTLE01_3 = 0x1b2FE5096EaC6DA9f452356046953039A90E696c;
    // Mantle02 (deprecated) [mantle02]
    address internal constant DVN_MANTLE02 = 0x3fbe85Cc14B34C9515a1B27dFc9d46fD4B4DBd4c;
    // MantleCross [mantlecross]
    address internal constant DVN_MANTLECROSS = 0xe6cCF6A2bc6671c6E3d862B1148457979F0353c5;
}

library LayerZeroV2MasaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30263;
    uint256 internal constant CHAIN_ID = 13396;
    string internal constant CHAIN_NAME = "masa-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x178F93794328C04988bcD52a1B820eC105b17f2f;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNMasaMainnet {
    // Horizen (deprecated) [horizen-labs]
    address internal constant DVN_HORIZEN = 0xaCDe1f22EEAb249d3ca6Ba8805C8fEe9f52a16e7;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x178F93794328C04988bcD52a1B820eC105b17f2f;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind (deprecated) [nethermind]
    address internal constant DVN_NETHERMIND = 0x77D94a239DCA4b8a92A45dD68EC3e31515a807C0;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xF665989B02709006448dD7ebd20B6Ed25F0828c5;
}

library LayerZeroV2MasaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40263;
    uint256 internal constant CHAIN_ID = 103454;
    string internal constant CHAIN_NAME = "masa-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xb23b28012ee92E8dE39DEb57Af31722223034747);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x45841dd1ca50265Da7614fC43A361e526c0e6160;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNMasaTestnet {
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
}

library LayerZeroV2MegaethMainnet {
    // Chain metadata
    uint32 internal constant EID = 30398;
    uint256 internal constant CHAIN_ID = 4326;
    string internal constant CHAIN_NAME = "megaeth-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNMegaethMainnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
}

library LayerZeroV2MegaethTestnet {
    // Chain metadata
    uint32 internal constant EID = 40370;
    uint256 internal constant CHAIN_ID = 6342;
    string internal constant CHAIN_NAME = "megaeth-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNMegaethTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2Megaeth2Testnet {
    // Chain metadata
    uint32 internal constant EID = 40427;
    uint256 internal constant CHAIN_ID = 6343;
    string internal constant CHAIN_NAME = "megaeth2-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xb23b28012ee92E8dE39DEb57Af31722223034747);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);
    address internal constant BLOCKED_MESSAGE_LIB = 0xD69769251c2DE60f0c44f4c2DBFDae9D1897E4c4;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x45841dd1ca50265Da7614fC43A361e526c0e6160;
    address internal constant EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4dFa426aEAA55E6044d2b47682842460a04aF45c;
}

library LayerZeroV2DVNMegaeth2Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2MemecoreformicariumTestnet {
    // Chain metadata
    uint32 internal constant EID = 40354;
    uint256 internal constant CHAIN_ID = 43521;
    string internal constant CHAIN_NAME = "memecoreformicarium-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x145C041566B21Bec558B2A37F1a5Ff261aB55998);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x12523de19dc41c91F7d2093E0CFbB76b17012C8d);
    address internal constant BLOCKED_MESSAGE_LIB = 0x6F09f1430c4c204c4b5433Abe24C15f342b70699;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9dB9Ca3305B48F196D18082e91cB64663b13d014);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0x9A289B849b32FF69A95F8584a03343a33Ff6e5Fd;
}

library LayerZeroV2DVNMemecoreformicariumTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x35b24D49241FFe21e93b7745411Fc72F06B7e7ce;
}

library LayerZeroV2MeritcircleMainnet {
    // Chain metadata
    uint32 internal constant EID = 30198;
    uint256 internal constant CHAIN_ID = 4337;
    string internal constant CHAIN_NAME = "meritcircle-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x763BfcE1Ed335885D0EeC1F182fE6E6B85BAbC92);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe767e048221197A2b590CeB5C63C3AAD8ebf87eA);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xF9d24d3AbF64A99C6FcdF19b27eF74B723A6110a;
    address internal constant EXECUTOR = 0x9Bdf3aE7E2e3D211811E5e782a808Ca0a75BF1Fc;
    address internal constant DEAD_DVN = 0x690b1857EaA8c55850547d7C22148C0B99a71dCd;
    address internal constant LZ_EXECUTOR = 0xe01F3c1CD14F39303D175c31c16f58707B28976b;
}

library LayerZeroV2DVNMeritcircleMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xA1Bc1B9af01A0ec78883AA5DC7DECDCe897E1E76;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x690b1857EaA8c55850547d7C22148C0B99a71dCd;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x5E38c31C28d0F485d6dc3fFAbF8980bBCD882294;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2MeritcircleTestnet {
    // Chain metadata
    uint32 internal constant EID = 40178;
    uint256 internal constant CHAIN_ID = 13337;
    string internal constant CHAIN_NAME = "meritcircle-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x6f3a314C1279148E53f51AF154817C3EF2C827B1);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x0F7De6155DDC16A96c0d110A488bc966Aad3991b);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x0F0843fF71918B8Cb8e480BD8C581373BE3c1f9b;
    address internal constant EXECUTOR = 0xA60A7a9D9723d6Adda826f5bDae29c6038B68DD3;
    address internal constant LZ_EXECUTOR = 0x4d2a0Ffc93146a086b586C2C88135d9687508cd5;
}

library LayerZeroV2DVNMeritcircleTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x51B5bA90288c2253cFa03CA71bd1F04b53c423dd;
    // TSS [tss]
    address internal constant DVN_TSS = 0x3aCAAf60502791D199a5a5F0B173D78229eBFe32;
}

library LayerZeroV2MerlinMainnet {
    // Chain metadata
    uint32 internal constant EID = 30266;
    uint256 internal constant CHAIN_ID = 4200;
    string internal constant CHAIN_NAME = "merlin-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant DEAD_DVN = 0x5EE3Cb252978C2A51671e6AAD109491e62f04d8f;
    address internal constant LZ_EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
}

library LayerZeroV2DVNMerlinMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x4134190B4CC18A9745ee0422CbC91c94F46a4cc1;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x439264FB87581a70Bb6D7bEFd16b636521B0Ad2D;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x5EE3Cb252978C2A51671e6AAD109491e62f04d8f;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0xfd4AD9CDBd06FD4D8cA521307BF63a20239208ef;
    // TSS [tss]
    address internal constant DVN_TSS = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2MerlinTestnet {
    // Chain metadata
    uint32 internal constant EID = 40264;
    uint256 internal constant CHAIN_ID = 686868;
    string internal constant CHAIN_NAME = "merlin-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2DVNMerlinTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x3Bd9Af5Aa8C33b1e71C94cAe7c009C36413e08FD;
}

library LayerZeroV2MeterMainnet {
    // Chain metadata
    uint32 internal constant EID = 30176;
    uint256 internal constant CHAIN_ID = 82;
    string internal constant CHAIN_NAME = "meter-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xef02BacD67C0AB45510927749009F6B9ffCE0631);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xD721315eB3d2e7e8cFDfC7d82C02a1DCe144f8E4);
    address internal constant BLOCKED_MESSAGE_LIB = 0x5250cD435254987DE4CB824EC7363507461eFD84;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xffA387da7E7c2d444A78cd9ebcfA89AfBF980d71);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xCADf62C0E78C82C97bDB17c68777B3Ce2482E40e;
    address internal constant EXECUTOR = 0x27b7Bf5f95c2DD6Bc07Ce4ed8598b20Fb73fF5c1;
    address internal constant DEAD_DVN = 0x6008B58840B2353996797D65f8539d42e01Bb297;
    address internal constant LZ_EXECUTOR = 0x8856eE4f4e352487a099BA83A148F0E82bc54229;
}

library LayerZeroV2DVNMeterMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0xC4e1b199C3B24954022FcE7ba85419B3f0669142;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x3F10b9B75b05f103995eE8B8E2803AA6c7A9dcDf;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6008B58840B2353996797D65f8539d42e01Bb297;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xB792aFc44214B5f910216Bc904633dbD15b31680;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x08095eceD6c0b46D50eE45a6a59C0fD3De0b0855;
    // TSS [tss]
    address internal constant DVN_TSS = 0x51A6E62D12F2260E697039Ff53bCB102053f5ab7;
}

library LayerZeroV2MeterTestnet {
    // Chain metadata
    uint32 internal constant EID = 40156;
    uint256 internal constant CHAIN_ID = 83;
    string internal constant CHAIN_NAME = "meter-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3E03163f253ec436d4562e5eFd038cf98827B7eC);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x6B946AF0b8F3B4D33a36f90C5227D0054722FF32);
    address internal constant BLOCKED_MESSAGE_LIB = 0x82bD6930d894a2c35145A39D95A1b849540b2EbD;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xeA2B12219472e0d2a7795c7f61B0602bF5c36E25);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x5Ee5B5D0a9e13A4a348b0888Db3Fe17b046F07cb;
    address internal constant EXECUTOR = 0x68921A9530579203EE812ebddd0eE31ED43E7040;
    address internal constant LZ_EXECUTOR = 0xe43c4D4d9C7760f44491773A7A08A66aF15545AD;
}

library LayerZeroV2DVNMeterTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xE3A4539200E8906C957cD85b3E7a515c9883Fd81;
    // TSS [tss]
    address internal constant DVN_TSS = 0x0E8738298a8E437035e3AeBd57F8DDdC1A1bc44a;
}

library LayerZeroV2MetisMainnet {
    // Chain metadata
    uint32 internal constant EID = 30151;
    uint256 internal constant CHAIN_ID = 1088;
    string internal constant CHAIN_NAME = "metis-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x63e39ccB510926d05a0ae7817c8f1CC61C5BdD6c);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x5539Eb17a84E1D59d37C222Eb2CC4C81b502D1Ac);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x810c1d4A310F2d906e47e7D3DF1F1d55B367ed6f;
    address internal constant EXECUTOR = 0xE6AB3B3E632f3C65c3cb4c250DcC42f5E915A1cf;
    address internal constant DEAD_DVN = 0x4CC028221B4567c7439dC618D2d7f7a22315C1e4;
    address internal constant LZ_EXECUTOR = 0xc1b85974F7c2F0Ccb01d763F4a34BFB41a33D612;
}

library LayerZeroV2DVNMetisMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7A7dDC46882220a075934f40380d3A7e1e87d409;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xAf75bfD402f3d4EE84978179a6c87D16c4Bd1724;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x4CC028221B4567c7439dC618D2d7f7a22315C1e4;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x32d4F92437454829b3Fe7BEBfeCE5D0523DEb475;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x6ABdb569Dc985504cCcB541ADE8445E5266e7388;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x61A1B61A1087be03ABeDC04900Cfcc1C14187237;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
}

library LayerZeroV2MetisTestnet {
    // Chain metadata
    uint32 internal constant EID = 40151;
    uint256 internal constant CHAIN_ID = 599;
    string internal constant CHAIN_NAME = "metis-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNMetisTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
}

library LayerZeroV2MetissepTestnet {
    // Chain metadata
    uint32 internal constant EID = 40292;
    uint256 internal constant CHAIN_ID = 59902;
    string internal constant CHAIN_NAME = "metissep-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNMetissepTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
}

library LayerZeroV2MinatoTestnet {
    // Chain metadata
    uint32 internal constant EID = 40334;
    uint256 internal constant CHAIN_ID = 1946;
    string internal constant CHAIN_NAME = "minato-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa97f783E717567ab8d0fc72110714F4fa7967373;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
    address internal constant EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    address internal constant DEAD_DVN = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x4dFa426aEAA55E6044d2b47682842460a04aF45c;
}

library LayerZeroV2DVNMinatoTestnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xd351A601Cd3821AE15466c109d807362b10Eee1A;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x55c175DD5b039331dB251424538169D8495C18d1;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xEAB9a73194501424372d468970Cd5e37529eA971;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x5C6727DE9BF3cB10e4de39CD3dB6D77dbC9135Ea;
}

library LayerZeroV2MocaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40433;
    uint256 internal constant CHAIN_ID = 222888;
    string internal constant CHAIN_NAME = "moca-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNMocaTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2ModeMainnet {
    // Chain metadata
    uint32 internal constant EID = 30260;
    uint256 internal constant CHAIN_ID = 34443;
    string internal constant CHAIN_NAME = "mode-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x44a32b54E422f8B53eeD3078A632bE69E6ed355E);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x7B9E184e07a6EE1aC23eAe0fe8D6Be2f663f05e6;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNModeMainnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x10901f74caE315f674D3f6FC0645217FE4faD77C;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x5D8aeD4182A8EcC47386e88Aa8753Dde7423996e;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x315b0e76A510607bB0F706B17716F426D5b385b8;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x7C42F598d22E8711998bAc7C3360a7b3a514863D;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xaCDe1f22EEAb249d3ca6Ba8805C8fEe9f52a16e7;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x7B9E184e07a6EE1aC23eAe0fe8D6Be2f663f05e6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x47FE112E334F5F766db3c44F7C1813468240EdE9;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xcd37CA043f8479064e10635020c65FfC005d36f6;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xE4ef857900a0ca59BCB903E7b2cCfB050Be7Dc97;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x06559EE34D85a88317Bf0bfE307444116c631b67;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2ModeTestnet {
    // Chain metadata
    uint32 internal constant EID = 40260;
    uint256 internal constant CHAIN_ID = 919;
    string internal constant CHAIN_NAME = "mode-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNModeTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
}

library LayerZeroV2MokshaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40342;
    uint256 internal constant CHAIN_ID = 14800;
    string internal constant CHAIN_NAME = "moksha-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x53fd4C4fBBd53F6bC58CaE6704b92dB1f360A648);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9eCf72299027e8AeFee5DC5351D6d92294F46d2b);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x8dF53a660a00C3D977d7E778fB7385ECf4482D16;
    address internal constant DEAD_DVN = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    address internal constant LZ_EXECUTOR = 0xec28645346D781674B4272706D8a938dB2BAA2C6;
}

library LayerZeroV2DVNMokshaTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2MonadMainnet {
    // Chain metadata
    uint32 internal constant EID = 30390;
    uint256 internal constant CHAIN_ID = 143;
    string internal constant CHAIN_NAME = "monad-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNMonadMainnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xdD107f9B5209670840f9cD58e241F460651C16C4;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x493626C5D852B9B187a9eb709D0b0978a3877238;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x2c7185f5B0976397d9eB5c19d639d4005e6708f0;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xdCdd4628F858b45260C31D6ad076bD2C3D3c2f73;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Mantle Bank [mantle-bank]
    address internal constant DVN_MANTLE_BANK = 0xe00Ff3Ebb0CD942D846FB27e4739d2da66989b4F;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xaCDe1f22EEAb249d3ca6Ba8805C8fEe9f52a16e7;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x2DCbD79F38D6871232422db88EC29e8D97135Ac7;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x6398E91001Cc1682bBA103E6B2489Fa5675a5a64;
}

library LayerZeroV2MonadTestnet {
    // Chain metadata
    uint32 internal constant EID = 40204;
    uint256 internal constant CHAIN_ID = 10143;
    string internal constant CHAIN_NAME = "monad-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x9d856a61b50e8935ef607c10eB531261812580B6);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNMonadTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xfeF495e5E7E3d26844a393B77EFb3a1fbf27fF90;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // Mantle01 [mantle01]
    address internal constant DVN_MANTLE01 = 0x7d7640982Fe23482Ee6D11F1e5636644Ba186d1d;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xB365Da66084D135E9bfaef73EB8be06029271681;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x85F3F409cC9577dc1AfB138a3c81057d09B0C143;
    // TSS [tss]
    address internal constant DVN_TSS = 0x91E698871030D0e1b6c9268C20bB57E2720618Dd;
}

library LayerZeroV2MoonbeamMainnet {
    // Chain metadata
    uint32 internal constant EID = 30126;
    uint256 internal constant CHAIN_ID = 1284;
    string internal constant CHAIN_NAME = "moonbeam-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xeac136456d078bB76f59DCcb2d5E008b31AfE1cF);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2F4C6eeA955e95e6d65E08620D980C0e0e92211F);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x125BD5c6C5066dcb4BB448b6eA8b9234Ed60e160;
    address internal constant EXECUTOR = 0xEC0906949f88f72bF9206E84764163e24a56a499;
    address internal constant DEAD_DVN = 0x28eEE23B2b6C5582112037FD43A4d8C359F54D4D;
    address internal constant LZ_EXECUTOR = 0x05B52859Adb077a7b7D6277a512aEfEFbaDDc9C8;
}

library LayerZeroV2DVNMoonbeamMainnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x33E5fcC13D7439cC62d54c41AA966197145b3Cd7;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x7DEcC6Df3aF9CFc275E25d2f9703eCF7ad800D5D;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x34730f2570E6cff8B1C91FaaBF37D0DD917c4367;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x28eEE23B2b6C5582112037FD43A4d8C359F54D4D;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x8B9b67b22ab2ed6Ee324C2fd43734dBd2dDDD045;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x790d7B1E97a086eb0012393b65a5B32cE58a04Dc;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // TSS [tss]
    address internal constant DVN_TSS = 0xdEeF80c12d49e5DA8e01B05636E2d0C776F6b78D;
}

library LayerZeroV2MoonbeamTestnet {
    // Chain metadata
    uint32 internal constant EID = 40126;
    uint256 internal constant CHAIN_ID = 1287;
    string internal constant CHAIN_NAME = "moonbeam-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x4CC50568EdC84101097E06bCf736918f637e6aB7);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x5468b60ed00F9b389B5Ba660189862Db058D7dC8);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xbef132Bc69C87f52D173d093A3F8B5B98842275F;
    address internal constant EXECUTOR = 0xd10fe0817Ebb477Bc05Df7d503dE9d022B6B0831;
    address internal constant LZ_EXECUTOR = 0xf2aC82dBc8b6c08BF8f47db164DA2B12f1299763;
}

library LayerZeroV2DVNMoonbeamTestnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xcC9A31f253970Ad46cb45E6Db19513e2248eD1fE;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x90CcFDCd75A66DAc697AB9C49F9ee0e32fD77e9F;
    // TSS [tss]
    address internal constant DVN_TSS = 0xa85BFAA7bEc20e014e5C29cb3536231116f3f789;
}

library LayerZeroV2MoonriverMainnet {
    // Chain metadata
    uint32 internal constant EID = 30167;
    uint256 internal constant CHAIN_ID = 1285;
    string internal constant CHAIN_NAME = "moonriver-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1BAcC2205312534375c8d1801C27D28370656cFf);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe8BAa65CeD8E46DA43520375Af6fAbC31D7bCb8B);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x87794d2f64e076694a153aFdb12cA62eb9C2ea5B;
    address internal constant EXECUTOR = 0x1E1E9A04735B9ca509eF8a46255f5104C10C6e99;
    address internal constant DEAD_DVN = 0x24D7ff228a81e827Efc29ec45E7b30a99B96C653;
    address internal constant LZ_EXECUTOR = 0xb7e97ad5661134185Fe608b2A31fe8cEf2147Ba9;
}

library LayerZeroV2DVNMoonriverMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7A7dDC46882220a075934f40380d3A7e1e87d409;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x8fa9eEf18c2A1459024f0B44714e5aCc1Ce7f5e8;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x24D7ff228a81e827Efc29ec45E7b30a99B96C653;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x2b3eBE6662Ad402317EE7Ef4e6B25c79a0f91015;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xfE1cD27827E16b07E61A4AC96b521bDB35e00328;
    // TSS [tss]
    address internal constant DVN_TSS = 0x84070061032F3e7ea4E068f447FB7cDfC98d57Fe;
}

library LayerZeroV2MorphMainnet {
    // Chain metadata
    uint32 internal constant EID = 30322;
    uint256 internal constant CHAIN_ID = 2818;
    string internal constant CHAIN_NAME = "morph-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNMorphMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xf10Ea2c0D43bC4973cfBCc94eBAfC39d1D4aF118;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x6c5f923B63Fdd52fb9C45dAeFA8695fA6b55a935;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xdf30C9f6A70cE65A152c5Bd09826525D7E97Ba49;
    // TSS [tss]
    address internal constant DVN_TSS = 0xb250B0b2A9891a035080615Ac30f040d2b7E7FAB;
}

library LayerZeroV2MorphTestnet {
    // Chain metadata
    uint32 internal constant EID = 40322;
    uint256 internal constant CHAIN_ID = 2810;
    string internal constant CHAIN_NAME = "morph-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNMorphTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0x55c175DD5b039331dB251424538169D8495C18d1;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2Mp1Mainnet {
    // Chain metadata
    uint32 internal constant EID = 30331;
    uint256 internal constant CHAIN_ID = 21000000;
    string internal constant CHAIN_NAME = "mp1-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNMp1Mainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x5311241a20055f9C0b02d18d6c52F2b711c07B03;
    // Curve [curve]
    address internal constant DVN_CURVE = 0xDD779AAAd20E62275457Af91b123bB13dd5aFd0B;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xE33de1A8cf9bcdC6b509C44EEF66f47c65dA6d47;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x91f93749e44C7b6510dcD236aeADE39dFc901D49;
}

library LayerZeroV2Mp1Testnet {
    // Chain metadata
    uint32 internal constant EID = 40345;
    uint256 internal constant CHAIN_ID = 21000001;
    string internal constant CHAIN_NAME = "mp1-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNMp1Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2NexeraMainnet {
    // Chain metadata
    uint32 internal constant EID = 30395;
    uint256 internal constant CHAIN_ID = 7208;
    string internal constant CHAIN_NAME = "nexera-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNNexeraMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xa83C79E69117EEFB888592A23Bc02cB6029aDA3a;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0xF007f1Fef50C0aCAF4418741454BCAEaeCB96B87;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x8D77D35604A9f37f488E41D1d916b2A0088F82Dd;
}

library LayerZeroV2NexeraTestnet {
    // Chain metadata
    uint32 internal constant EID = 40426;
    uint256 internal constant CHAIN_ID = 72080;
    string internal constant CHAIN_NAME = "nexera-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNNexeraTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2NibiruMainnet {
    // Chain metadata
    uint32 internal constant EID = 30369;
    uint256 internal constant CHAIN_ID = 6900;
    string internal constant CHAIN_NAME = "nibiru-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x2a5E79DEE6E3544588BB3b675B1Cc3354Df2AEFD);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd1FA2df582C6C986Ec573e1a3B0218049CF1E5c7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xf540D892BC671f08E0B1c5B61185c53c2211e8f7;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xeB8b16D080B0FcB0C6A89544f4Dd31e595382E8B);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x2aA258ed5D0FCdb54054e87AB5a33d22008BBc10;
    address internal constant EXECUTOR = 0x6A02D83e8d433304bba74EF1c427913958187142;
    address internal constant DEAD_DVN = 0x3823094993190Fbb3bFABfEC8365b8C18517566F;
    address internal constant LZ_EXECUTOR = 0xCd3F213AD101472e1713C72B1697E727C803885b;
}

library LayerZeroV2DVNNibiruMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xf0809F6e760a5452Ee567975EdA7a28dA4a83D38;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x3823094993190Fbb3bFABfEC8365b8C18517566F;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD_2 = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x5727E81A40015961145330D91cC27b5E189fF3e1;
    // MIM [mim]
    address internal constant DVN_MIM = 0x53Fa9f0bd34F3f0e80580d1c93168F56c9555cA4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x06D99Ffd7c09Ea72e962a06B6e311e513d7c3d20;
}

library LayerZeroV2NibiruTestnet {
    // Chain metadata
    uint32 internal constant EID = 40369;
    uint256 internal constant CHAIN_ID = 7210;
    string internal constant CHAIN_NAME = "nibiru-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x19Aa25541F9f1414dcEd4C9bA4225c2a24c77CFe);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x3aADdd4ECcbB187017Ff1215Babc4Ee90B97BA23);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1653130D80bbd93a5c43F25E311A0EE3565984Fe;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9DAA2CB7756a9D80b4105Dd57AA4ad130b746B76);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xFD2c171C95dafb092f039782545fd5BEc57607BD;
    address internal constant EXECUTOR = 0x1567AD0EE3F4818DcA5cC2A76fE13fFC11bfeb10;
    address internal constant DEAD_DVN = 0x70FcAA7A17ee7E678ec808E095268417A3c054b4;
    address internal constant LZ_EXECUTOR = 0xf3057091d82F13f67dF1e6f6464B6263a4612B23;
}

library LayerZeroV2DVNNibiruTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD_2 = 0x70FcAA7A17ee7E678ec808E095268417A3c054b4;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xc5191De5f224fb78C2Ad0f0B66159b09cC6baEA6;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x55c175DD5b039331dB251424538169D8495C18d1;
}

library LayerZeroV2NovaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30175;
    uint256 internal constant CHAIN_ID = 42170;
    string internal constant CHAIN_NAME = "nova-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xef32f931ac53808e695B7eF3D1b6C5016024a68f);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xB81F326b95e79eaC4aba800Ae545efb4C602973D);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x8E721E1930B4559AcAfDf06eE591af2FFCB93b8D;
    address internal constant EXECUTOR = 0x8Ee02736F8a0c28164a20c25f3d199a74DF7F24B;
    address internal constant DEAD_DVN = 0x1BE6093E02A7AbF324053eE3f501CF2c049dA471;
    address internal constant LZ_EXECUTOR = 0x02E5fc018fa140eC2eE934f3Bf22a05DF62ba908;
}

library LayerZeroV2DVNNovaMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x34730f2570E6cff8B1C91FaaBF37D0DD917c4367;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xE4193136B92bA91402313e95347c8e9FAD8d27d0;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x1BE6093E02A7AbF324053eE3f501CF2c049dA471;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xb7e97ad5661134185Fe608b2A31fe8cEf2147Ba9;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // TSS [tss]
    address internal constant DVN_TSS = 0x37aaaf95887624a363effB7762D489E3C05c2a02;
}

library LayerZeroV2OdaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40208;
    uint256 internal constant CHAIN_ID = 25;
    string internal constant CHAIN_NAME = "oda-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2OdysseyTestnet {
    // Chain metadata
    uint32 internal constant EID = 40340;
    uint256 internal constant CHAIN_ID = 1516;
    string internal constant CHAIN_NAME = "odyssey-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xB0487596a0B62D1A71D0C33294bd6eB635Fc6B09);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x073f5b4FdF17BBC16b0980d49f6C56123477bb51);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
    address internal constant EXECUTOR = 0x8dF53a660a00C3D977d7E778fB7385ECf4482D16;
    address internal constant DEAD_DVN = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    address internal constant LZ_EXECUTOR = 0xec28645346D781674B4272706D8a938dB2BAA2C6;
}

library LayerZeroV2DVNOdysseyTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2OgMainnet {
    // Chain metadata
    uint32 internal constant EID = 30388;
    uint256 internal constant CHAIN_ID = 16661;
    string internal constant CHAIN_NAME = "og-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNOgMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x183940c4855a01da92bc2f96F7e0A8Aecbf797ff;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x2EF2097f8C2467A0e274C9022142dc91aaE457A8;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0xE6655528dbB0f7d1407264aA878A5B5363B8752c;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x95729Ea44326f8adD8A9b1d987279DBdC1DD3dFf;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x8D77D35604A9f37f488E41D1d916b2A0088F82Dd;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0xE40D78243074711E21cA5290eE190062BdCe09B5;
}

library LayerZeroV2OgTestnet {
    // Chain metadata
    uint32 internal constant EID = 40419;
    uint256 internal constant CHAIN_ID = 16601;
    string internal constant CHAIN_NAME = "og-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNOgTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2OggalileoTestnet {
    // Chain metadata
    uint32 internal constant EID = 40428;
    uint256 internal constant CHAIN_ID = 16602;
    string internal constant CHAIN_NAME = "oggalileo-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNOggalileoTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2OkxMainnet {
    // Chain metadata
    uint32 internal constant EID = 30155;
    uint256 internal constant CHAIN_ID = 66;
    string internal constant CHAIN_NAME = "okx-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x7807888fAC5c6f23F6EeFef0E6987DF5449C1BEb);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x51Ae634318E7191C7ffc5778E2D9f860e1e60361);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xCd3207826Cf70d48B74140aBDfB4bF5598B2CceD;
    address internal constant EXECUTOR = 0x1658766898B42547297A429a51FDea03BC4a863F;
    address internal constant DEAD_DVN = 0x641A8990001199692fd8042dc37445F07355d6CE;
    address internal constant LZ_EXECUTOR = 0x89D3F96Cf0E2aE22Cc88f8caCA1ee7bB622b5E68;
}

library LayerZeroV2DVNOkxMainnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x07653d28b0f53D4c54b70eb1f9025795B23a9D6e;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x641A8990001199692fd8042dc37445F07355d6CE;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x52EEA5c490fB89c7A0084B32FEAB854eefF07c82;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
}

library LayerZeroV2OkxTestnet {
    // Chain metadata
    uint32 internal constant EID = 40155;
    uint256 internal constant CHAIN_ID = 65;
    string internal constant CHAIN_NAME = "okx-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x4eb38E1743669C6753C44A58B2F11E0c592183eD);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xaaed103E18acf972b9b68743E3d4bDeBb9Ce5E5b);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x2E4c006d26cdDb8FAe7734fF4A97d5B2F8e0d823;
    address internal constant EXECUTOR = 0x826b93439CB1d53467566d04A9Ddc03F73614e59;
    address internal constant LZ_EXECUTOR = 0x1a2fd0712Ded46794022DdB16a282e798D22a7FB;
}

library LayerZeroV2DVNOkxTestnet {
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xdBdC042321A87DFf222C6BF26be68Ad7b3d7543f;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
}

library LayerZeroV2OliveTestnet {
    // Chain metadata
    uint32 internal constant EID = 40277;
    uint256 internal constant CHAIN_ID = 8101902;
    string internal constant CHAIN_NAME = "olive-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNOliveTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2OndoTestnet {
    // Chain metadata
    uint32 internal constant EID = 40375;
    uint256 internal constant CHAIN_ID = 9000;
    string internal constant CHAIN_NAME = "ondo-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNOndoTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2OpbnbMainnet {
    // Chain metadata
    uint32 internal constant EID = 30202;
    uint256 internal constant CHAIN_ID = 204;
    string internal constant CHAIN_NAME = "opbnb-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x44289609cc6781fa2C665796b6c5AAbf9FFceDC5);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9c9e25F9fC4e8134313C2a9f5c719f5c9F4fbD95);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xbBDd27544348636a3FeBe51Df7531Cc1726f3c8B;
    address internal constant EXECUTOR = 0xACbD57daAafb7D9798992A7b0382fc67d3E316f3;
    address internal constant DEAD_DVN = 0xd0a9ec7544106258c5836121fA032AE65c83f99B;
    address internal constant LZ_EXECUTOR = 0x2F64656569c098fdfb0bD0ab2f3616005E295810;
}

library LayerZeroV2DVNOpbnbMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x2AC038606fff3FB00317B8F0CcFB4081694aCDD0;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xE5491Fac6965Aa664EFD6d1aE5e7D1d56Da4FDDa;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xd0a9ec7544106258c5836121fA032AE65c83f99B;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x3eBb618B5c9d09DE770979D552b27D6357Aff73B;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x6a4C9096F162f0ab3C0517B0a40dc1CE44785e16;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA658742d33ebd2ce2F0bdFf73515Aa797Fd161D9;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0xeFdC8b6E2757118dE5990260D2A4eF39d31f9e49;
}

library LayerZeroV2OpbnbTestnet {
    // Chain metadata
    uint32 internal constant EID = 40202;
    uint256 internal constant CHAIN_ID = 5611;
    string internal constant CHAIN_NAME = "opbnb-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xf514191C4a2D3b9A629fB658702015a5bCd570BC);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x4b21Ad992A05Fb14e08df2cAF8d71A5c28b1f5E9);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x9130D98D47984BF9dc796829618C36CBdA43EBb9;
    address internal constant EXECUTOR = 0x0F0843fF71918B8Cb8e480BD8C581373BE3c1f9b;
    address internal constant LZ_EXECUTOR = 0x6f3a314C1279148E53f51AF154817C3EF2C827B1;
}

library LayerZeroV2DVNOpbnbTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x15E62434AADD26Acc8a045e89404eCEb4f6D2A52;
    // TSS [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2OpencampusTestnet {
    // Chain metadata
    uint32 internal constant EID = 40297;
    uint256 internal constant CHAIN_ID = 656476;
    string internal constant CHAIN_NAME = "opencampus-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNOpencampusTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2OpenledgerMainnet {
    // Chain metadata
    uint32 internal constant EID = 30392;
    uint256 internal constant CHAIN_ID = 1612;
    string internal constant CHAIN_NAME = "openledger-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3A73033C0b1407574C76BdBAc67f126f6b4a9AA9);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);
    address internal constant BLOCKED_MESSAGE_LIB = 0xf540D892BC671f08E0B1c5B61185c53c2211e8f7;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7;
    address internal constant EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
    address internal constant DEAD_DVN = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    address internal constant LZ_EXECUTOR = 0x306B9a8953B9462F8b826e6768a93C8EA7454965;
}

library LayerZeroV2DVNOpenledgerMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xCee801c12814a7C5b8d792098f624fb3D7aD8651;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x97841D4AB18E9A923322A002d5b8Eb42b31Ccdb5;
}

library LayerZeroV2OpenledgerTestnet {
    // Chain metadata
    uint32 internal constant EID = 40413;
    uint256 internal constant CHAIN_ID = 161201;
    string internal constant CHAIN_NAME = "openledger-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNOpenledgerTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2OptimismMainnet {
    // Chain metadata
    uint32 internal constant EID = 30111;
    uint256 internal constant CHAIN_ID = 10;
    string internal constant CHAIN_NAME = "optimism-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x01B29c03fAD8F455184573D6624a8136cF6106Fb);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1322871e4ab09Bc7f5717189434f97bBD9546e95);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x3c4962Ff6258dcfCafD23a814237B7d6Eb712063);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xECEE8B581960634aF89f467AE624Ff468a9Db14B;
    address internal constant EXECUTOR = 0x2D2ea0697bdbede3F01553D2Ae4B8d0c486B666e;
    address internal constant DEAD_DVN = 0xEbc3065003e67CaaC747836dA272d9E5271A37e1;
    address internal constant LZ_EXECUTOR = 0xb02763373589c440Ed6ff32f47cf4b81CA285D01;
}

library LayerZeroV2DVNOptimismMainnet {
    // 01node [01node]
    address internal constant DVN_01NODE = 0x969A0bdd86A230345AD87A6a381DE5ED9E6cda85;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB = 0x3b247F1B48F055EbF2DB593672B98C9597E3081E;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB_2 = 0x7B8a0fD9D6ae5011d5cBD3E85Ed6D5510F98c9Bf;
    // AltLayer [altlayer]
    address internal constant DVN_ALTLAYER = 0x06e8042729CeF3aE6D6DB5350f48F9D736C3675d;
    // Axelar [axelar]
    address internal constant DVN_AXELAR = 0x218B462e19d00c8feD4adbCe78f33aEf88d2ccFc;
    // BCW [bcw]
    address internal constant DVN_BCW = 0x41f3A349e6AC46CAAD2da04cFceAe3e0dE0E6C0C;
    // BCW [bcw]
    address internal constant DVN_BCW_2 = 0x73DDc92E39aEdA95FEb8D3E0008016d9F1268c76;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x19670Df5E16bEa2ba9b9e68b48C054C5bAEa06B8;
    // Bera [bera]
    address internal constant DVN_BERA = 0x5F5512c760f69A338Cf2758d1E6A957571bB6ee0;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xF24Dc834039a1E39F6b99A51Df05Df9c91e35b2d;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO_2 = 0x90EE303d4743F460B9a38415e09f3799b85a4efc;
    // Blockhunters [blockhunters]
    address internal constant DVN_BLOCKHUNTERS = 0xB3Ce0A5D132Cd9Bf965aBa435E650c55Edce0062;
    // Brale [brale]
    address internal constant DVN_BRALE = 0xd37ADF2200142eC766A519099e7B55cB9198B640;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x5b6735c66d97479cCD18294fc96B3084EcB2fa3f;
    // Chainlink [ccip]
    address internal constant DVN_CHAINLINK = 0x150A58e9E6BF69ccEb1DBA5ae97C166DC8792539;
    // Curve [curve]
    address internal constant DVN_CURVE = 0xb908Fc507fE3145e855cf63127349756b9eCF3a6;
    // Delegate [delegate]
    address internal constant DVN_DELEGATE = 0x7A205ED4e3d7f9d0777594501705D8CD405c3B05;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x427bd19a0463fc4eDc2e247d35eB61323d7E5541;
    // Flowdesk [flowdesk]
    address internal constant DVN_FLOWDESK = 0x57F61546bd2259Db04EE7132AC385e5447174403;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x7240264781Aa2f97Cb994C6231297A8606483242;
    // Gitcoin [gitcoin]
    address internal constant DVN_GITCOIN = 0x37a37d958a43810Ec169eeCE501C525664ddF890;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN_2 = 0xb4FA7f1C67E5Ec99B556Ec92CbDdBCdd384106F2;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x9E930731cb4A6bf7eCc11F695A295c60bDd212eB;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xeb64C44109eDE90CC6E34953AB122A1F09460a44;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xEbc3065003e67CaaC747836dA272d9E5271A37e1;
    // Lagrange [lagrange-labs]
    address internal constant DVN_LAGRANGE = 0xA4281c1c88F0278FF696eDeb517052153190FC9E;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6A02D83e8d433304bba74EF1c427913958187142;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xD4925B81f62457caCA368412315D230535b9a48a;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0xd841A741Addcb6Dea735D3B8C9Faf96BA3f3d30D;
    // MIM [mim]
    address internal constant DVN_MIM = 0xD954bF7968eF68875c9100c9ec890f969504d120;
    // Muon [muon]
    address internal constant DVN_MUON = 0xA3858e2A9860C935Fc9586a617e9b2A674C3e4c8;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x3b0531eB02Ab4aD72e7a531180beeF9493a00dD2;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x6075e53DC2DDcFA81142fBAD52315AE627FfcE75;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xa7b5189bcA84Cd304D8553977c7C614329750d99;
    // Nocturnal [nocturnal-labs]
    address internal constant DVN_NOCTURNAL = 0x47039f4327f74e755F65821040a7e0adDd596D09;
    // Nodesguru [nodes-guru]
    address internal constant DVN_NODESGURU = 0xe6CD8c2E46Ef396DF88048449e5B1C75172b40C3;
    // Nodit [nodit]
    address internal constant DVN_NODIT = 0x1288cDad593856D7672F82e4cC5fdFE1CF59646d;
    // Omnix [omni-x]
    address internal constant DVN_OMNIX = 0x03d2414476a742Aba715BcC337583C820525E22a;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x539008c98B17803A273eDf98aBA2d4414Ee3f4D7;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0xe552485d02EDd3067FE7FCbD4dd56BB1D3A998D2;
    // Paxos (deprecated) [paxos]
    address internal constant DVN_PAXOS = 0xD77a62b54EE18bCd667b6CD158d5A000182AF5cf;
    // Planetarium [planetarium-labs]
    address internal constant DVN_PLANETARIUM = 0x021e401C2a1A60618c5E6353A40524971Eba1E8D;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Restake [restake]
    address internal constant DVN_RESTAKE = 0xcced05c3667877B545285B25f19F794436A1c481;
    // Shrapnel [mercury]
    address internal constant DVN_SHRAPNEL = 0xd36246C322Ee102A2203bCA9cafb84c179D306F6;
    // Stablelab [stablelab]
    address internal constant DVN_STABLELAB = 0xcd37CA043f8479064e10635020c65FfC005d36f6;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x56D675bFd1574fF170723689223c3A93DeE5fA78;
    // Stakingcabin (deprecated) [stakingcabin]
    address internal constant DVN_STAKINGCABIN_2 = 0xEa0c32623D19D888E926e68667a5e42853FA91B4;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xfe6507F094155caBB4784403Cd784C2DF04122dd;
    // Superduper [portal]
    address internal constant DVN_SUPERDUPER = 0xdf30C9f6A70cE65A152c5Bd09826525D7E97Ba49;
    // Superform [superform]
    address internal constant DVN_SUPERFORM = 0xb0B2EF168F52F6d1e42f461e11117295eF992daf;
    // Switchboard [switchboard]
    address internal constant DVN_SWITCHBOARD = 0x313328609a9C38459CaE56625FFf7F2AD6dcde3b;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA0Cc33Dd6f4819D473226257792AFe230EC3c67f;
    // Tapioca [pearlnet]
    address internal constant DVN_TAPIOCA = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x947Bb89919d1E5996d6C46223626AC2E97BcF8A3;
    // Ubisoft [ubisoft]
    address internal constant DVN_UBISOFT = 0x51ACCFB59e4BDA0F8324934f9789e9Ea19fBEff4;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x6F798D30577c91E8F9291e82e633Dbe4dCe16b93;
    // Wyoming [wyoming]
    address internal constant DVN_WYOMING = 0x94eC5934Daa761d7597B76fD0fecf8385De143be;
    // Zeeve [zeeve]
    address internal constant DVN_ZEEVE = 0x4873d56816F45eF341a8819d7039E4746Ed77C21;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0xAf75bfD402f3d4EE84978179a6c87D16c4Bd1724;
}

library LayerZeroV2OptimismTestnet {
    // Chain metadata
    uint32 internal constant EID = 40132;
    uint256 internal constant CHAIN_ID = 420;
    string internal constant CHAIN_NAME = "optimism-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNOptimismTestnet {
    // Google (deprecated) [google-cloud]
    address internal constant DVN_GOOGLE = 0xd9777221E6Acc6e13F745Da6EE1849C774Fe8Ed9;
    // Nethermind (deprecated) [nethermind]
    address internal constant DVN_NETHERMIND = 0xd40527cCD4cC3c0d1eFC33363539349544C18B5f;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x97597016F7daC89e55005105FC755C0513973fA8;
}

library LayerZeroV2OptsepTestnet {
    // Chain metadata
    uint32 internal constant EID = 40232;
    uint256 internal constant CHAIN_ID = 11155420;
    string internal constant CHAIN_NAME = "optsep-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xB31D2cb502E25B30C651842C7C3293c51Fe6d16f);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9284fd59B95b9143AF0b9795CAC16eb3C723C9Ca);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x1e5432719b432738aDeb8F8C5bb6d118e09E768d;
    address internal constant EXECUTOR = 0xDc0D68899405673b932F0DB7f8A49191491A5bcB;
    address internal constant LZ_EXECUTOR = 0x89e0599C9EA2F36d255e9B500486DC406457E3De;
}

library LayerZeroV2DVNOptsepTestnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x3e9d8fA8067938f2A62Baa7114EeD183040824aB;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0x938b28dc069a7b0880f4749655CB3C727C07a442;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0x4Fe728B39d5e19ff3a9702C5E156bBC6cd8c6021;
    // Citrea [citrea]
    address internal constant DVN_CITREA = 0xF1Eb575035fCb1291a4C1801FCaC8BD93b4E281B;
    // Frax (deprecated) [frax]
    address internal constant DVN_FRAX = 0xfdd7dAbc2f892BbF8e9abD2BA580ddCd85c7c055;
    // Frax [frax]
    address internal constant DVN_FRAX_2 = 0x4CD993429e3D478858a3Ddf6EDAe48627A3483A4;
    // Frax (deprecated) [frax]
    address internal constant DVN_FRAX_3 = 0xA33e18B98C23A93b5195fDF73dD025329A014976;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xC041606700EF1Ae6C0430d7a6f3013cb6AeBdfdB;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xd680ec569f269aa7015F7979b4f1239b5aa4582C;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x2d15d4e61558480A9300632772E68d8b5e7Cc7e5;
    // TSS [tss]
    address internal constant DVN_TSS = 0x45841dd1ca50265Da7614fC43A361e526c0e6160;
    // Wyoming [wyoming]
    address internal constant DVN_WYOMING = 0xc9997D7E5345C8F432e98E48e34EB2719d8cF8Ff;
}

library LayerZeroV2OrderlyMainnet {
    // Chain metadata
    uint32 internal constant EID = 30213;
    uint256 internal constant CHAIN_ID = 291;
    string internal constant CHAIN_NAME = "orderly-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x5B23E2bAe5C5f00e804EA2C4C9abe601604378fa);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xCFf08a35A5f27F306e2DA99ff198dB90f13DEF77);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xeDf930Cd8095548f97b21ec4E2dE5455a7382f04;
    address internal constant EXECUTOR = 0x1aCe9DD1BC743aD036eF2D92Af42Ca70A1159df5;
    address internal constant DEAD_DVN = 0x690b1857EaA8c55850547d7C22148C0B99a71dCd;
    address internal constant LZ_EXECUTOR = 0xe9AE261D3aFf7d3fCCF38Fa2d612DD3897e07B2d;
}

library LayerZeroV2DVNOrderlyMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xd42306DF1a805d8053Bc652cE0Cd9F62BDe80146;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x690b1857EaA8c55850547d7C22148C0B99a71dCd;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF53857dbc0D2c59D5666006EC200cbA2936B8c35;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x6a4C9096F162f0ab3C0517B0a40dc1CE44785e16;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xD074B6bbCBEC2f2B4c4265DE3D95e521f82bF669;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2OrderlyTestnet {
    // Chain metadata
    uint32 internal constant EID = 40200;
    uint256 internal constant CHAIN_ID = 4460;
    string internal constant CHAIN_NAME = "orderly-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x8e3Dc55b7A1f7Fe4ce328A1c90dC1B935a30Cc42);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x3013C32e5F45E69ceA9baD4d96786704C2aE148c);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x3DD8c635FBb3f6757F442D6862f67f25D34c8f97;
    address internal constant EXECUTOR = 0x1e567E344B2d990D2ECDFa4e14A1c9a1Beb83e96;
    address internal constant LZ_EXECUTOR = 0x98325A9d9B05FfBd179362a836201E3856AeDDA2;
}

library LayerZeroV2DVNOrderlyTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x175d2B829604b82270D384393D25C666a822ab60;
    // TSS [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2OtherworldTestnet {
    // Chain metadata
    uint32 internal constant EID = 40337;
    uint256 internal constant CHAIN_ID = 48795;
    string internal constant CHAIN_NAME = "otherworld-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xBa8dF7424dAE9C2CDB4BC1aD2b63ABD97194fDb6);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x012f6eaE2A0Bf5916f48b5F37C62Bcfb7C1ffdA1);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1cB71FA146E1FF13FBEBD1E4394D57211C931b67;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x4aEFf6244dce72a2C71A3c2a75d35b2C396d7C5d);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x30cdC72034b4E47cC9A09E491968210Bab05BaeB;
    address internal constant EXECUTOR = 0xfa91bFC0BF66fA4AA4340e6fb920485d4f2c153D;
    address internal constant DEAD_DVN = 0xF6268056Ce73E997450F42aa79DE88103CfEfd09;
    address internal constant LZ_EXECUTOR = 0x7110205FA59d9CfEE406293D0BaE0d6240985Cd3;
}

library LayerZeroV2DVNOtherworldTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF6268056Ce73E997450F42aa79DE88103CfEfd09;
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xB099D5a9652a80ff8f4234BDe00f66531aa91c50;
}

library LayerZeroV2OzeanTestnet {
    // Chain metadata
    uint32 internal constant EID = 40323;
    uint256 internal constant CHAIN_ID = 7849306;
    string internal constant CHAIN_NAME = "ozean-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x145C041566B21Bec558B2A37F1a5Ff261aB55998);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);
    address internal constant BLOCKED_MESSAGE_LIB = 0x6F09f1430c4c204c4b5433Abe24C15f342b70699;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x53fd4C4fBBd53F6bC58CaE6704b92dB1f360A648);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C;
    address internal constant EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
    address internal constant DEAD_DVN = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant LZ_EXECUTOR = 0x9A289B849b32FF69A95F8584a03343a33Ff6e5Fd;
}

library LayerZeroV2DVNOzeanTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x55c175DD5b039331dB251424538169D8495C18d1;
}

library LayerZeroV2PeaqMainnet {
    // Chain metadata
    uint32 internal constant EID = 30302;
    uint256 internal constant CHAIN_ID = 3338;
    string internal constant CHAIN_NAME = "peaq-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNPeaqMainnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x790d7B1E97a086eb0012393b65a5B32cE58a04Dc;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x0C0C8fd5351fd936A987c790d88B137df4E73D64;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x21cAF0BCE846AAA78C9f23C5A4eC5988EcBf9988;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0xc2A0C36f5939A14966705c7Cec813163FaEEa1F0;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x725fAFe20B74FF6f88DAEA0C506190A8f1037635;
    // Nodesguru [nodes-guru]
    address internal constant DVN_NODESGURU = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x795720d981C1f4D4d4381682225572c431284592;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x2EdfE0220A74d9609c79711a65E3A2F2A85Dc83b;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x18f76f0d8CCD176BbE59B3870fa486d1Fff87026;
    // TSS [tss]
    address internal constant DVN_TSS = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2PeaqTestnet {
    // Chain metadata
    uint32 internal constant EID = 40299;
    uint256 internal constant CHAIN_ID = 9990;
    string internal constant CHAIN_NAME = "peaq-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNPeaqTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2PgjjtkTestnet {
    // Chain metadata
    uint32 internal constant EID = 40207;
    string internal constant CHAIN_NAME = "pgjjtk-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2PgnMainnet {
    // Chain metadata
    uint32 internal constant EID = 30218;
    uint256 internal constant CHAIN_ID = 424;
    string internal constant CHAIN_NAME = "pgn-mainnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNPgnMainnet {
    // Horizen (deprecated) [horizen-labs]
    address internal constant DVN_HORIZEN = 0x8D77D35604A9f37f488E41D1d916b2A0088F82Dd;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2PgnTestnet {
    // Chain metadata
    uint32 internal constant EID = 40223;
    uint256 internal constant CHAIN_ID = 58008;
    string internal constant CHAIN_NAME = "pgn-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNPgnTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2PlasmaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30383;
    uint256 internal constant CHAIN_ID = 9745;
    string internal constant CHAIN_NAME = "plasma-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xDa9B06132Dd3B5CdA3cAb2d1516038A8625fef08);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNPlasmaMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x2465eE263149A18d61c9224244c61a5871dc0473;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xF81da1B0f3ac725503AD0c2c229d1Edc57204787;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x0a5a808dc5f9280B26EBE11b356D200e34a48517;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xd4CE45957FBCb88b868ad2c759C7DB9BC2741e56;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xE5BFfd46776251b70895517D4AB635a640dA61E9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xa51cE237FaFA3052D5d3308Df38A024724Bb1274;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x193204535913df3A3b350fcd2e1C97D047AbB409;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xfD429433af17c5C75E4c8BC84b8F6dCD1b2C051A;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0xdCdd4628F858b45260C31D6ad076bD2C3D3c2f73;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x3b65E87E2A4690f14cae0483014259DeD8215adc;
}

library LayerZeroV2PlasmaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40409;
    uint256 internal constant CHAIN_ID = 9746;
    string internal constant CHAIN_NAME = "plasma-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNPlasmaTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2Plasma2Testnet {
    // Chain metadata
    uint32 internal constant EID = 40411;
    uint256 internal constant CHAIN_ID = 9746;
    string internal constant CHAIN_NAME = "plasma2-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNPlasma2Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2Plasma3Testnet {
    // Chain metadata
    uint32 internal constant EID = 40417;
    uint256 internal constant CHAIN_ID = 9746;
    string internal constant CHAIN_NAME = "plasma3-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNPlasma3Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2PlumeMainnet {
    // Chain metadata
    uint32 internal constant EID = 30318;
    uint256 internal constant CHAIN_ID = 98865;
    string internal constant CHAIN_NAME = "plume-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNPlumeMainnet {
    // Horizen (deprecated) [horizen-labs]
    address internal constant DVN_HORIZEN = 0xd841A741Addcb6Dea735D3B8C9Faf96BA3f3d30D;
    // Horizen (deprecated) [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xD537497b751f1ac77E39F3F53771302cCC11f0e2;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind (deprecated) [nethermind]
    address internal constant DVN_NETHERMIND = 0x07C05EaB7716AcB6f83ebF6268F8EECDA8892Ba1;
    // Ondo (deprecated) [ondo]
    address internal constant DVN_ONDO = 0x54dD79f5cE72b51FCBbcb170Dd01E32034323565;
    // Ondo Staging (deprecated) [ondo-staging]
    address internal constant DVN_ONDO_STAGING = 0xCBfb74e751052404DcDaB09494e5A502F9bE0438;
    // P2P (deprecated) [p2p]
    address internal constant DVN_P2P = 0x0BE6682ac7d5841ae8f72e1913a6D74Fb94A43fe;
    // Stargate (deprecated) [stargate]
    address internal constant DVN_STARGATE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xe2e3A0D9A869dDA2a98FcBa032725cdAe85436DF;
}

library LayerZeroV2PlumeTestnet {
    // Chain metadata
    uint32 internal constant EID = 40304;
    uint256 internal constant CHAIN_ID = 161221135;
    string internal constant CHAIN_NAME = "plume-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNPlumeTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2Plume2Testnet {
    // Chain metadata
    uint32 internal constant EID = 40329;
    uint256 internal constant CHAIN_ID = 18230;
    string internal constant CHAIN_NAME = "plume2-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNPlume2Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2PlumephoenixMainnet {
    // Chain metadata
    uint32 internal constant EID = 30370;
    uint256 internal constant CHAIN_ID = 98866;
    string internal constant CHAIN_NAME = "plumephoenix-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xC1b15d3B262bEeC0e3565C11C9e0F6134BdaCB36);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x7155c16E82919Ee77927d3A8cE180930f04d4428);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xFe7C30860D01e28371D40434806F4A8fcDD3A098);
    address internal constant BLOCKED_MESSAGE_LIB = 0x9e611dB91aDe3312534064ae6Ae700F5B531844c;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x5B19bd330A84c049b62D5B0FC2bA120217a18C1C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x38dE71124f7a447a01D67945a51eDcE9FF491251;
    address internal constant EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
    address internal constant DEAD_DVN = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant LZ_EXECUTOR = 0x306B9a8953B9462F8b826e6768a93C8EA7454965;
}

library LayerZeroV2DVNPlumephoenixMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x395B14700812cccC38b8e64F0a06ce2045FE9bA3;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x8Ede21203E062D7D1EAeC11c4c72Ad04cDc15658;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x1E4CE74ccf5498B19900649D9196e64BAb592451;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x5E0744f8FBF26446c683BcF4cD405ad56bA76F8A;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xAf75bfD402f3d4EE84978179a6c87D16c4Bd1724;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x882a1EE8891c7d22310dedf032eF9653785532B8;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xCBfb74e751052404DcDaB09494e5A502F9bE0438;
    // Predicate [predicate]
    address internal constant DVN_PREDICATE = 0xD7bB44516b476ca805FB9d6fc5b508ef3Ee9448D;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
}

library LayerZeroV2PolygonMainnet {
    // Chain metadata
    uint32 internal constant EID = 30109;
    uint256 internal constant CHAIN_ID = 137;
    string internal constant CHAIN_NAME = "polygon-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xc214d690031d3F873365f94d381D6D50c35AA7FA);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x6c26c61a97006888ea9E4FA36584c7df57Cd9dA3);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x1322871e4ab09Bc7f5717189434f97bBD9546e95);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x1Bef2d7C5c60fD826Cc1b1f29cA357Af2d0Ae2c6;
    address internal constant EXECUTOR = 0xCd3F213AD101472e1713C72B1697E727C803885b;
    address internal constant DEAD_DVN = 0x43CFcc293CdF99F7D021F21FfD443f174AB0e843;
    address internal constant LZ_EXECUTOR = 0xe25741bda30bb79a66ADf656E7f2D3f0C4fb3191;
}

library LayerZeroV2DVNPolygonMainnet {
    // 01node [01node]
    address internal constant DVN_01NODE = 0xf0809F6e760a5452Ee567975EdA7a28dA4a83D38;
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB = 0xa6F5DDBF0Bd4D03334523465439D301080574742;
    // ABDB (deprecated) [animoca-blockdaemon]
    address internal constant DVN_ABDB_2 = 0xAb6d3d37D8Dc309e7d8086B2e85a953b84Ee5fA9;
    // AltLayer [altlayer]
    address internal constant DVN_ALTLAYER = 0xBABbb709b3CefE563f2aB14898a53301686D48b9;
    // BCW [bcw]
    address internal constant DVN_BCW = 0x66d771B8F938ccb82A1A9cb7a93671cb92016aB0;
    // BCW [bcw]
    address internal constant DVN_BCW_2 = 0xd410dDB726991f372b69A05b006D2ae5A8CedBD6;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x247624e2143504730aeC22912ed41F092498bEf2;
    // Bera [bera]
    address internal constant DVN_BERA = 0xCF46153f01355036bF07E5f7Fb1eb262f25dFeDd;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0xc30291521305Bc76115de7Bca8034ea7147ABE36;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0x02152F4624596602dCBB8B8EAD2988Ad44EDc865;
    // Blockhunters [blockhunters]
    address internal constant DVN_BLOCKHUNTERS = 0xBD40c9047980500C46B8aed4462e2f889299FEbE;
    // Brale [brale]
    address internal constant DVN_BRALE = 0x8B430DF07cE9666fDFFD99C1Ea0153f6E178bCD6;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x13feb7234Ff60A97af04477d6421415766753Ba3;
    // Chainlink [ccip]
    address internal constant DVN_CHAINLINK = 0x150A58e9E6BF69ccEb1DBA5ae97C166DC8792539;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x4066b6e7BfD761B579902E7e8D03F4feb9B9536E;
    // Delegate [delegate]
    address internal constant DVN_DELEGATE = 0x4D52f5bc932cf1A854381A85ad9ED79B8497c153;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x5CcCb8DE6Cdba9D2Af9d84465653af7390FDf9Dd;
    // Flowdesk [flowdesk]
    address internal constant DVN_FLOWDESK = 0x2cabF8F2c0AAe35A771a1c19487684E94388B03a;
    // Frax [frax]
    address internal constant DVN_FRAX = 0xdab6E6ecB3513A8D2614AD75199b4b264A731050;
    // Gitcoin [gitcoin]
    address internal constant DVN_GITCOIN = 0xeCB3ac94976F11a53ae74Af1f36FB89E247FAEEF;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN_2 = 0x047d9DBe4fC6B5c916F37237F547f9F42809935a;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x5cfF49d69D79d677Dd3E5B38E048A0DCB6d86aaf;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x25e0e650a78e6304A3983Fc4b7Ffc6544b1bEea6;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x43CFcc293CdF99F7D021F21FfD443f174AB0e843;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x23DE2FE932d9043291f870324B74F820e11dc81A;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xA70C51C38D5A9990F3113a403D74EBa01fce4CCb;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0xD1b5493e712081A6FBAb73116405590046668F6b;
    // MIM [mim]
    address internal constant DVN_MIM = 0x1bab20E7FDc79257729CB596BEF85db76C44915E;
    // Muon [muon]
    address internal constant DVN_MUON = 0xA3858e2A9860C935Fc9586a617e9b2A674C3e4c8;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x0a8618F71dB88AB5D0CAF0610Ede19F0AB8817c5;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x31F748a368a893Bdb5aBB67ec95F232507601A73;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xbCefdAdB8d24b1d36c26B522235012Cd4cf162f6;
    // Nocturnal [nocturnal-labs]
    address internal constant DVN_NOCTURNAL = 0xf60C89799C85D8FaB79519f7666dcDe2A7C97CCA;
    // Nodesguru [nodes-guru]
    address internal constant DVN_NODESGURU = 0xF7DDEE427507cdb6885E53CAAaa1973b1Fe29357;
    // Nodit [nodit]
    address internal constant DVN_NODIT = 0x4c41b4EDf85DEe828C2cFcc80019CB2BbCFb69a5;
    // Omnicat [omnicat]
    address internal constant DVN_OMNICAT = 0xa2d10677441230C4AeD58030e4EA6Ba7Bfd80393;
    // Omnix [omni-x]
    address internal constant DVN_OMNIX = 0x06b85533967179eD5bC9C754b84aE7d02f7eD830;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x9EEee79F5dBC4D99354b5CB547c138Af432F937b;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0xa75ABcC0FAB6aE09c8FD808bEc7bE7E88fe31D6B;
    // Paxos (deprecated) [paxos]
    address internal constant DVN_PAXOS = 0x7DEcC6Df3aF9CFc275E25d2f9703eCF7ad800D5D;
    // Planetarium [planetarium-labs]
    address internal constant DVN_PLANETARIUM = 0x2AC038606fff3FB00317B8F0CcFB4081694aCDD0;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Quantoz [quantoz]
    address internal constant DVN_QUANTOZ = 0xA773b91c42FC8e77C37d7396B2814b8FA485b2c3;
    // Quantoz (deprecated) [quantoz]
    address internal constant DVN_QUANTOZ_2 = 0xab98Becd7ED5494E7Da7BD6c698a282f21492D6d;
    // Republic [republic-crypto]
    address internal constant DVN_REPUBLIC = 0x547bF6889B1095b7CC6e525A1F8E8Fdb26134a38;
    // Restake [restake]
    address internal constant DVN_RESTAKE = 0x2afa3787cd95fee5D5753cd717EF228eb259f4ea;
    // Shrapnel [mercury]
    address internal constant DVN_SHRAPNEL = 0x54dD79f5cE72b51FCBbcb170Dd01E32034323565;
    // Stablelab [stablelab]
    address internal constant DVN_STABLELAB = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0xcd19d26710CACf8241583769f353EA7395159007;
    // Stakingcabin (deprecated) [stakingcabin]
    address internal constant DVN_STAKINGCABIN_2 = 0x53BDCE6DCcf7505A55813022F53C43FaBfEF7b3A;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xC79F0B1bcb7cDAE9f9BA547dcFc57cBfcd2993A5;
    // Superduper [portal]
    address internal constant DVN_SUPERDUPER = 0x8Fc629aa400D4D9c0B118F2685a49316552ABf27;
    // Superform [superform]
    address internal constant DVN_SUPERFORM = 0x1E4CE74ccf5498B19900649D9196e64BAb592451;
    // Switchboard [switchboard]
    address internal constant DVN_SWITCHBOARD = 0xC6D46F63578635E4a7140cdf4D0eea0fd7bB50eC;
    // TSS [tss]
    address internal constant DVN_TSS = 0x5a54fe5234E811466D5366846283323c954310B2;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0xdD3d71FF05D9206C69c667D22b3a0970009780e4;
    // Wyoming [wyoming]
    address internal constant DVN_WYOMING = 0xf6cB110b0334825797B9b733060229C68e5D8bef;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0xCd8ea69BBCa0a2bb221AeD59fA2704f01fC76a9f;
}

library LayerZeroV2PolygonTestnet {
    // Chain metadata
    uint32 internal constant EID = 40109;
    uint256 internal constant CHAIN_ID = 80001;
    string internal constant CHAIN_NAME = "polygon-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x5d9F8BCf9e07BabF517f2988986FF3bB7b233bc1);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xfa4Fbda8E809150eE1676ce675AC746Beb9aF379);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x67cec733D3Dd0de13ae8d7AaC74532F3555500E3;
    address internal constant EXECUTOR = 0x264473487c23cC846118840472D35AeBf54e4475;
    address internal constant LZ_EXECUTOR = 0x3055C0934c58cA3e7CB25DBdbd418e2E7B5BCA1b;
}

library LayerZeroV2DVNPolygonTestnet {
    // BWare (deprecated) [bware-labs]
    address internal constant DVN_BWARE = 0x1cf01d5042d1ae231F918a2645f2762d663476E7;
    // Delegate (deprecated) [delegate]
    address internal constant DVN_DELEGATE = 0x74fBf0539e433FeCb7D3fD760ac0E11480354CCd;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN = 0x60aadb6D42D2eA93D97c550a1bebC49fA7c2074B;
    // Google (deprecated) [google-cloud]
    address internal constant DVN_GOOGLE = 0x89D01Aa6aBF72FAcc05eF88C82e415B2E4024A0c;
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0x67a822F55C5F6E439550b9C4EA39E406480a40f3;
    // Nethermind (deprecated) [nethermind]
    address internal constant DVN_NETHERMIND = 0xC460CEcfcc7A69665cCd41Ebf25Dd2572c18f657;
    // P2P (deprecated) [p2p]
    address internal constant DVN_P2P = 0x8d2944b493dc0CAa7d480d78Bb0D3e44097cD164;
    // Stablelab (deprecated) [stablelab]
    address internal constant DVN_STABLELAB = 0x7d43b7DA9e85ced3F413aBD3F996B40901d9C5de;
    // Switchboard (deprecated) [switchboard]
    address internal constant DVN_SWITCHBOARD = 0x000f50aa91CB11B7BE7E844e53D85065466A8d9a;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xAeC5E56217a963BDe38a3b6e0C3Cb5E864450C86;
}

library LayerZeroV2PolygoncdkTestnet {
    // Chain metadata
    uint32 internal constant EID = 40224;
    uint256 internal constant CHAIN_ID = 686669576;
    string internal constant CHAIN_NAME = "polygoncdk-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNPolygoncdkTestnet {
    // TSS [tss]
    address internal constant DVN_TSS = 0x45841dd1ca50265Da7614fC43A361e526c0e6160;
}

library LayerZeroV2RaribleMainnet {
    // Chain metadata
    uint32 internal constant EID = 30235;
    uint256 internal constant CHAIN_ID = 1380012617;
    string internal constant CHAIN_NAME = "rarible-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xA09dB5142654e3eB5Cf547D66833FAe7097B21C3);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x148f693af10ddfaE81cDdb36F4c93B31A90076e1);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x2d24207F9C1F77B2E08F2C3aD430da18e355CF66;
    address internal constant EXECUTOR = 0x1E4CAc6c2c955cAED779ef24d5B8C5EE90b1f914;
    address internal constant DEAD_DVN = 0xFE9e60eE82C8E800bd48c4fc2aE1B7716528cc56;
    address internal constant LZ_EXECUTOR = 0x4740469750ce90fDB73F5fD0a062FFF0b1E4Be5D;
}

library LayerZeroV2DVNRaribleMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xFE9e60eE82C8E800bd48c4fc2aE1B7716528cc56;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x0b5E5452d0c9DA1Bb5fB0664F48313e9667d7820;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xB53648CA1aA054A80159c1175c03679fdC76bf88;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x2fa870cEE4da57De84d1dB36759d4716AD7E5038;
    // TSS [tss]
    address internal constant DVN_TSS = 0x3A73033C0b1407574C76BdBAc67f126f6b4a9AA9;
}

library LayerZeroV2RaribleTestnet {
    // Chain metadata
    uint32 internal constant EID = 40235;
    uint256 internal constant CHAIN_ID = 1918988905;
    string internal constant CHAIN_NAME = "rarible-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x7C424244B51d03cEEc115647ccE151baF112a42e);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xbf06c8886E6904a95dD42440Bd237C4ac64940C8);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xB99de8c90Db2Fb425c5AEfa2A95284decCB4F0Cd;
    address internal constant EXECUTOR = 0x19DC7b94ACAFbAD3EFa1Bc782d1367a8b173Ba73;
    address internal constant LZ_EXECUTOR = 0x1AbC0136629E83A8769B3598c1417D5A5922e4E1;
}

library LayerZeroV2DVNRaribleTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xfc7C4B995a9293a1123BDD425531CFCd71082DE4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x48cD672a603615c6bEf4598646b33382844d1830;
}

library LayerZeroV2Rc1Testnet {
    // Chain metadata
    uint32 internal constant EID = 40238;
    uint256 internal constant CHAIN_ID = 1127469;
    string internal constant CHAIN_NAME = "rc1-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2RealMainnet {
    // Chain metadata
    uint32 internal constant EID = 30237;
    uint256 internal constant CHAIN_ID = 111188;
    string internal constant CHAIN_NAME = "real-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant DEAD_DVN = 0xdA13808dBE60775e9B8B07a7cc9b98DFBd0f769f;
    address internal constant LZ_EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
}

library LayerZeroV2DVNRealMainnet {
    // Canary (deprecated) [canary]
    address internal constant DVN_CANARY = 0x4134190B4CC18A9745ee0422CbC91c94F46a4cc1;
    // Horizen (deprecated) [horizen-labs]
    address internal constant DVN_HORIZEN = 0x439264FB87581a70Bb6D7bEFd16b636521B0Ad2D;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xdA13808dBE60775e9B8B07a7cc9b98DFBd0f769f;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind (deprecated) [nethermind]
    address internal constant DVN_NETHERMIND = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // Stakingcabin (deprecated) [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0xfd4AD9CDBd06FD4D8cA521307BF63a20239208ef;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xcbD35a9b849342AD34a71e072D9947D4AFb4E164;
}

library LayerZeroV2RedbellyTestnet {
    // Chain metadata
    uint32 internal constant EID = 40429;
    uint256 internal constant CHAIN_ID = 153;
    string internal constant CHAIN_NAME = "redbelly-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNRedbellyTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2ReyaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30313;
    uint256 internal constant CHAIN_ID = 1729;
    string internal constant CHAIN_NAME = "reya-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNReyaMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x6c5f923B63Fdd52fb9C45dAeFA8695fA6b55a935;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // TSS [tss]
    address internal constant DVN_TSS = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2ReyaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40319;
    uint256 internal constant CHAIN_ID = 89346162;
    string internal constant CHAIN_NAME = "reya-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNReyaTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2RootTestnet {
    // Chain metadata
    uint32 internal constant EID = 40318;
    uint256 internal constant CHAIN_ID = 7672;
    string internal constant CHAIN_NAME = "root-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xbc2a00d907a6Aa5226Fb9444953E4464a5f4844a);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x6460EE1b9D5bDE8375ca928767Cc63FBFA111A98);
    address internal constant BLOCKED_MESSAGE_LIB = 0xc3337A00f1a0291053f1C6B15717a215A634Dd78;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x72eeA17eBbd1aCE0527354b2f7b25c6efC27936d);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x097C377077B3Fbac21897c81e411510B9Ab66cb1;
    address internal constant EXECUTOR = 0xe7292d7797776bCcDF44C78f296Ff26Ddb70F70a;
    address internal constant DEAD_DVN = 0x790deF6091dD5e5e8c3F8550B37a04790e0ba492;
    address internal constant LZ_EXECUTOR = 0x988D898a9Acf43f61FDBC72AAD6eB3f0542e19e1;
}

library LayerZeroV2DVNRootTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x790deF6091dD5e5e8c3F8550B37a04790e0ba492;
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xb100823Baa9F8D625052fc8F544fc307b0184B18;
}

library LayerZeroV2RootstockMainnet {
    // Chain metadata
    uint32 internal constant EID = 30333;
    uint256 internal constant CHAIN_ID = 30;
    string internal constant CHAIN_NAME = "rootstock-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x19a642a780F4cfc27c12c8Ac79e586B5007bA8C5;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNRootstockMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xF1042Bba248634583d0678d53FB33Bc885E09F11;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x54dD79f5cE72b51FCBbcb170Dd01E32034323565;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x05AaEfDf9dB6E0f7d27FA3b6EE099EDB33dA029E;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0xBABbb709b3CefE563f2aB14898a53301686D48b9;
}

library LayerZeroV2RootstockTestnet {
    // Chain metadata
    uint32 internal constant EID = 40350;
    uint256 internal constant CHAIN_ID = 31;
    string internal constant CHAIN_NAME = "rootstock-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x7F2e3456388687825F0D6f1C5daab1ba07BF17D5;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNRootstockTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2SagaevmTestnet {
    // Chain metadata
    uint32 internal constant EID = 40432;
    uint256 internal constant CHAIN_ID = 54647359;
    string internal constant CHAIN_NAME = "sagaevm-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x619Eb6de16b479Ec0bE4c81d5ca9402dd4746681);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x662d02b68F5c07D59Df53f5bB5cd9fe7f1966569);
    address internal constant BLOCKED_MESSAGE_LIB = 0x91C9c7143254C40aB34d5533C4EAe8752FB9EC67;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9Fc33fBBDEA0e188baA1770aF6Ca2bC38bDA65d6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4a7BE0Cd029af7980e5a23e166Caabbeb4c9ef75;
    address internal constant EXECUTOR = 0xDaF24Ddd2a52f0ed3c1528B11B7A69F8fcf72B79;
    address internal constant DEAD_DVN = 0x9BfA498bAAD476427d86FD79579484534F80b092;
    address internal constant LZ_EXECUTOR = 0x63E7f4aEAbC92bE04Ba12A02F2E893FC47Bc7CAc;
}

library LayerZeroV2DVNSagaevmTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9BfA498bAAD476427d86FD79579484534F80b092;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x4Cb3E5dFa5568e3508d4f15726092856E5E79a49;
}

library LayerZeroV2SankoMainnet {
    // Chain metadata
    uint32 internal constant EID = 30278;
    uint256 internal constant CHAIN_ID = 1996;
    string internal constant CHAIN_NAME = "sanko-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant DEAD_DVN = 0x10aC9B7EB034fAb1F3bc446E81479D7dC089Be83;
    address internal constant LZ_EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
}

library LayerZeroV2DVNSankoMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x21cAF0BCE846AAA78C9f23C5A4eC5988EcBf9988;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x5fddD320a1e29bB466Fa635661b125D51D976f92;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x10aC9B7EB034fAb1F3bc446E81479D7dC089Be83;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Omnix [omni-x]
    address internal constant DVN_OMNIX = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x1253CA32712171b5D28115A1346F2B22BB9a41D5;
    // TSS [tss]
    address internal constant DVN_TSS = 0xbB2753C1B940363d278c81D6402fA89E79Ab4ebc;
}

library LayerZeroV2SankoTestnet {
    // Chain metadata
    uint32 internal constant EID = 40278;
    uint256 internal constant CHAIN_ID = 1992;
    string internal constant CHAIN_NAME = "sanko-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNSankoTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2ScrollMainnet {
    // Chain metadata
    uint32 internal constant EID = 30214;
    uint256 internal constant CHAIN_ID = 534352;
    string internal constant CHAIN_NAME = "scroll-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x48F55d6291856186b7Af73B1B7853db45e54aFad);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x9BbEb2B2184B9313Cf5ed4a4DDFEa2ef62a2a03B);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x8363302080e711E0CAb978C081b9e69308d49808);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xF487E8D03CDa77Ce9a66B35220D6cBB95d4C2877;
    address internal constant EXECUTOR = 0x581b26F362AD383f7B51eF8A165Efa13DDe398a4;
    address internal constant DEAD_DVN = 0xDB238D5196328b5623612C235062427F2F6792c0;
    address internal constant LZ_EXECUTOR = 0x4Fc3f4A38Acd6E4cC0ccBc04B3Dd1CCAeFd7F3Cd;
}

library LayerZeroV2DVNScrollMainnet {
    // Axelar [axelar]
    address internal constant DVN_AXELAR = 0x70CEDF51c199Fad12C6c0A71cD876af948059540;
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7A7dDC46882220a075934f40380d3A7e1e87d409;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xDF44a1594d3D516f7CDFb4DC275a79a5F6e3Db1d;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x93bB6f93Fa90a18e88A27bcfBcB048F7e14733c6;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xfA9bA83C102283958B997Adc8B44ED3A3CdB5dDa;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xDB238D5196328b5623612C235062427F2F6792c0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xbe0d08a85EeBFCC6eDA0A843521f7CBB1180D2e2;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x755B3B6e6BE0747f02cCc0B96001403fc7e8DEF5;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0xf60C89799C85D8FaB79519f7666dcDe2A7C97CCA;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xb212750bC22D26499DAbF3ffe2Ba1931dC3Af3e1;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x446755349101cB20c582C224462c3912d3584dCE;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xC6a6324932B399D6A673B7Ed0af671F28033E046;
    // POPS [p-ops-team]
    address internal constant DVN_POPS = 0x34730f2570E6cff8B1C91FaaBF37D0DD917c4367;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xb87591D8B0b93faE8b631A073577c40e8Dd46A62;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0x05AaEfDf9dB6E0f7d27FA3b6EE099EDB33dA029E;
}

library LayerZeroV2ScrollTestnet {
    // Chain metadata
    uint32 internal constant EID = 40170;
    uint256 internal constant CHAIN_ID = 534351;
    string internal constant CHAIN_NAME = "scroll-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x21f1C2B131557c3AebA918D590815c47Dc4F20aa);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xf2dB23f9eA1311E9ED44E742dbc4268de4dB0a88);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x671dab1D21Ff24c39cbC833480Fb37b3AdADA533;
    address internal constant EXECUTOR = 0xD0D47C34937DdbeBBe698267a6BbB1dacE51198D;
    address internal constant LZ_EXECUTOR = 0x9cB9e6AC360e585BC5d0bFe38f3Fd344d44FDc83;
}

library LayerZeroV2DVNScrollTestnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xcA01DAa8e559Cb6a810ce7906eC2AeA39BDeccE4;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xb186F85d0604FE58af2Ea33fE40244f5EEF7351B;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xfE1e8884FC443efbc727C7b5C9Ce044E6525bdD5;
    // TSS [tss]
    address internal constant DVN_TSS = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
}

library LayerZeroV2SeiMainnet {
    // Chain metadata
    uint32 internal constant EID = 30280;
    uint256 internal constant CHAIN_ID = 1329;
    string internal constant CHAIN_NAME = "sei-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x6A6C548058094e6dFaF95Bb0b5d04e1dd8ec0870);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    address internal constant DEAD_DVN = 0xf772581dcf3300914D6222C4e6FcF0ed5EF93142;
    address internal constant LZ_EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
}

library LayerZeroV2DVNSeiMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x1feB08B1A53A9710AfcE82D380B8c2833C69a37e;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0xE40D78243074711E21cA5290eE190062BdCe09B5;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0x26cD5aBaDf7eC3f0F02b48314bfcA6b2342cddD4;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x33051Ad47157A50Bb49a646256b854C60f707C86;
    // Frax [frax]
    address internal constant DVN_FRAX = 0xE016F0f39fb7DCf14E9412D92f2049668d4D2612;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x96Ca3420BeDD887cAbDAbA29C7dcE6bAD57AF98b;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x87048402c32632B7c4d0A892d82bC1160E8B2393;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xf772581dcf3300914D6222C4e6FcF0ed5EF93142;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xf6EDDf89a273b5CbfbC54Cee618762983823C3f4;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x6E01Aa282f058873d28055e07d85f4197E8Db261;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0xf85F51c1d5b4de2446d99b104acFca7Ff63Bd3AD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xA93D4490444eba60839742859cfDE53bf0967dC9;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xD24972c11F91c1bB9eaEe97ec96bB9c33cF7af24;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xA83A87a0bDce466edfBB6794404E1D7F556B8F20;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x93d2d7AADC9F2Cf5EbC88e9703E06dB09b8Fd85B;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xBd00C87850416db0995EF8030b104F875E1bdD15;
    // TSS [tss]
    address internal constant DVN_TSS = 0xd5C9DFDE96aA0731b3224f8bacf00Cd456188542;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x8EfB6b7dC61C6B6638714747d5E6B81a3512b5C3;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0xf2e89Ed7E342c708BA8CD79b293AD9244f5FCcb3;
}

library LayerZeroV2SeiTestnet {
    // Chain metadata
    uint32 internal constant EID = 40258;
    uint256 internal constant CHAIN_ID = 713715;
    string internal constant CHAIN_NAME = "sei-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2DVNSeiTestnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xB99ea5D9B28ac78d3293aFC75248e7f6225c93f9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xA63cb3038037909736fFD084231e4F212D084621;
}

library LayerZeroV2SepoliaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40161;
    uint256 internal constant CHAIN_ID = 11155111;
    string internal constant CHAIN_NAME = "sepolia-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x908E86e9cb3F16CC94AE7569Bf64Ce2CE04bbcBE);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xcc1ae8Cf5D3904Cef3360A9532B477529b177cCE);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xdAf00F5eE2158dD58E0d3857851c432E34A3A851);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x982Ca8b3532236C5e77Ff215791dD454e07E21F7;
    address internal constant EXECUTOR = 0x718B92b5CB0a5552039B593faF724D182A881eDA;
    address internal constant DEAD_DVN = 0x8b450b0acF56E1B0e25C581bB04FBAbeeb0644b8;
    address internal constant LZ_EXECUTOR = 0x34a561197e4eAe356D41B0B02C59F12a5C576C5A;
}

library LayerZeroV2DVNSepoliaTestnet {
    // AltLayer [altlayer]
    address internal constant DVN_ALTLAYER = 0x25f492A35ec1E60eBCF8A3DD52a815C2D167f4C3;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xCA7a736be0Fe968A33Af62033B8b36D491f7999B;
    // BWare (deprecated) [bware-labs]
    address internal constant DVN_BWARE_2 = 0xac294c43d44d4131db389256959F33E713851E31;
    // Citrea [citrea]
    address internal constant DVN_CITREA = 0x120BE7FAbDE72292E2a56240610DB1cA54Ae4000;
    // Delegate (deprecated) [delegate]
    address internal constant DVN_DELEGATE = 0x942AFC25B43D6ffe6D990af37737841F580638D7;
    // Frax (deprecated) [frax]
    address internal constant DVN_FRAX = 0x4386167355CDA5dBb434e6997fE38Fe1F4822c12;
    // Frax [frax]
    address internal constant DVN_FRAX_2 = 0x000bfB182Cc999879FFb5cd7cf9f1Db18a454248;
    // Frax (deprecated) [frax]
    address internal constant DVN_FRAX_3 = 0x9Dc10a8de79F1dE5242c88BAa313b500490D764E;
    // Gitcoin (deprecated) [gitcoin]
    address internal constant DVN_GITCOIN = 0x28b92D35407cAA791531cD7f7d215044F4C0cbdd;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0x4F675c48FaD936cb4c3cA07d7cBF421CeeAE0C75;
    // Google (deprecated) [google-cloud]
    address internal constant DVN_GOOGLE_2 = 0x96746917b256bdB8424496Ff6BbcAF8216708A6A;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x843139c725c2FB9814dE6A12fB890D8dBf3e1698;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x76b3c210A22402e5e95f938074234676136C6023;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_3 = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Japan Blockchain Foundation [joc]
    address internal constant DVN_JAPAN_BLOCKCHAIN_FOUNDATION = 0xeFd1d76A2DB92bAd8FD56167f847D204f5F4004E;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF53857dbc0D2c59D5666006EC200cbA2936B8c35;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD_2 = 0x8b450b0acF56E1B0e25C581bB04FBAbeeb0644b8;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x8eebf8b423B73bFCa51a1Db4B7354AA0bFCA9193;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x530fBe405189204EF459Fa4B767167e4d41E3a37;
    // Mantle01 (deprecated) [mantle01]
    address internal constant DVN_MANTLE01 = 0xa6BCC8c553EA756c8AD393d2CF379BfB59856499;
    // Mantle01 [mantle01]
    address internal constant DVN_MANTLE01_2 = 0x6943872CfC48F6B18f8b81d57816733d4545Eca3;
    // Mantle01 (deprecated) [mantle01]
    address internal constant DVN_MANTLE01_3 = 0xe4f5f5Cd6229dE94adC343DeB86172C07b129Bb0;
    // Mantle02 (deprecated) [mantle02]
    address internal constant DVN_MANTLE02 = 0x15F5A70fC078279D7d4a7dd94811189364810111;
    // MantleCross [mantlecross]
    address internal constant DVN_MANTLECROSS = 0x63F5AAa54d459a4a94E98d41c89d37129eABe725;
    // Nethermind (deprecated) [nethermind]
    address internal constant DVN_NETHERMIND = 0x715A4451Be19106BB7CefD81e507813E23C30768;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x68802e01D6321D5159208478f297d7007A7516Ed;
    // P2P (deprecated) [p2p]
    address internal constant DVN_P2P = 0xE7B65Ec1AE41186ef626A3a3cBf79D0c0426A911;
    // P2P [p2p]
    address internal constant DVN_P2P_2 = 0x9efBA56c8598853E5b40FD9a66B54a6c163742d7;
    // Paxos [paxos]
    address internal constant DVN_PAXOS = 0x51172653a6a1ebB0D4d716bf2E4f57f41507668C;
    // Predicate [predicate]
    address internal constant DVN_PREDICATE = 0x906094951a041F8F45B31E6dbd6b2d1A0D758fBB;
    // Stablelab (deprecated) [stablelab]
    address internal constant DVN_STABLELAB = 0xF21f0282B55B4143251D8e39D3d93E78A78389ab;
    // Switchboard (deprecated) [switchboard]
    address internal constant DVN_SWITCHBOARD = 0x51e8907d6f3606587bA9f0Aba4ecE4c28ac31EC6;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x36Ebea3941907C438Ca8Ca2B1065dEef21CCdaeD;
    // TSS [tss]
    address internal constant DVN_TSS_2 = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
    // TSS [tss]
    address internal constant DVN_TSS_3 = 0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2;
    // Wyoming [wyoming]
    address internal constant DVN_WYOMING = 0xd660b4833c212B3dedb5a7954d8B9440AdaB9bdb;
}

library LayerZeroV2ShimmerMainnet {
    // Chain metadata
    uint32 internal constant EID = 30230;
    uint256 internal constant CHAIN_ID = 148;
    string internal constant CHAIN_NAME = "shimmer-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x148f693af10ddfaE81cDdb36F4c93B31A90076e1);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xD4a903930f2c9085586cda0b11D9681EECb20D2f);
    address internal constant BLOCKED_MESSAGE_LIB = 0x3091cA3aeE13e16c051B03b282163e565296464C;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xb21f945e8917c6Cd69FcFE66ac6703B90f7fe004);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x763BfcE1Ed335885D0EeC1F182fE6E6B85BAbC92;
    address internal constant EXECUTOR = 0x868a44F9d9F09331da425539a174a2128b85D672;
    address internal constant DEAD_DVN = 0x7D71242e93eD57455C017b92f980B01066E87D22;
    address internal constant LZ_EXECUTOR = 0xFD5f54062D0caFda9144A7721d9971710B3D0C5e;
}

library LayerZeroV2DVNShimmerMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x7E65BDd15C8Db8995F80aBf0D6593b57dc8BE437;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xa59BA433ac34D2927232918Ef5B2eaAfcF130BA5;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x7D71242e93eD57455C017b92f980B01066E87D22;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9Bdf3aE7E2e3D211811E5e782a808Ca0a75BF1Fc;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x5fddD320a1e29bB466Fa635661b125D51D976f92;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2ShimmerTestnet {
    // Chain metadata
    uint32 internal constant EID = 40203;
    uint256 internal constant CHAIN_ID = 1073;
    string internal constant CHAIN_NAME = "shimmer-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNShimmerTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2ShrapnelMainnet {
    // Chain metadata
    uint32 internal constant EID = 30148;
    uint256 internal constant CHAIN_ID = 2044;
    string internal constant CHAIN_NAME = "shrapnel-mainnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNShrapnelMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xE4193136B92bA91402313e95347c8e9FAD8d27d0;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xabC9b1819cc4D9846550F928B985993cF6240439;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
}

library LayerZeroV2ShrapnelTestnet {
    // Chain metadata
    uint32 internal constant EID = 40164;
    uint256 internal constant CHAIN_ID = 2038;
    string internal constant CHAIN_NAME = "shrapnel-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNShrapnelTestnet {
    // TSS [tss]
    address internal constant DVN_TSS = 0x2bf15bbbf2abC0018D50bBbCbf6aB65cF43BeF37;
}

library LayerZeroV2SiliconMainnet {
    // Chain metadata
    uint32 internal constant EID = 30379;
    uint256 internal constant CHAIN_ID = 2355;
    string internal constant CHAIN_NAME = "silicon-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNSiliconMainnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x31F748a368a893Bdb5aBB67ec95F232507601A73;
}

library LayerZeroV2SiliconsepoliaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40406;
    uint256 internal constant CHAIN_ID = 1414;
    string internal constant CHAIN_NAME = "siliconsepolia-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNSiliconsepoliaTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2SkaleMainnet {
    // Chain metadata
    uint32 internal constant EID = 30273;
    uint256 internal constant CHAIN_ID = 2046399126;
    string internal constant CHAIN_NAME = "skale-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x37aaaf95887624a363effB7762D489E3C05c2a02);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x15e51701F245F6D5bd0FEE87bCAf55B0841451B3);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x377530cdA84DFb2673bF4d145DCF0C4D7fdcB5b6;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0xC8B0B3A95bc6AC3eDA97208556DC7A7820da5bf0;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNSkaleMainnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC8B0B3A95bc6AC3eDA97208556DC7A7820da5bf0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
}

library LayerZeroV2SkaleTestnet {
    // Chain metadata
    uint32 internal constant EID = 40273;
    uint256 internal constant CHAIN_ID = 1444673419;
    string internal constant CHAIN_NAME = "skale-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x82b7dc04A4ABCF2b4aE570F317dcab49f5a10f24);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x4632b54146C45Cf31EE1d5A1191260Af7e9DB801);
    address internal constant BLOCKED_MESSAGE_LIB = 0xaE1bA44dfab3b96cFDb8481960dD8e4C015c82b0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9D0A659cAC5F122e22bAaDD8769a3abc05C6bdAE);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x098Fed01ABd66C63e706Ed9b368726DE54FefBEb;
    address internal constant EXECUTOR = 0x86d08462EaA1559345d7F41f937B2C804209DB8A;
    address internal constant LZ_EXECUTOR = 0x7F417F2192B89Cf93b8c4Ee01d558883A0AD7B47;
}

library LayerZeroV2DVNSkaleTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x955412C07d9bC1027eb4d481621ee063bFd9f4C6;
}

library LayerZeroV2SomniaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30380;
    uint256 internal constant CHAIN_ID = 50312;
    string internal constant CHAIN_NAME = "somnia-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNSomniaMainnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xdD9B12623ec1C7E744819708B9217b309fDE4080;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x5fddD320a1e29bB466Fa635661b125D51D976f92;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x5488a4ca201421cF100dC1B90D1dE5B26b421f64;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x5FA12ebC08e183C1F5d44678cF897edEfe68738B;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xE57aF13D6676F7a37d37AB603aaeA6D63B1dEe8E;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xA83A87a0bDce466edfBB6794404E1D7F556B8F20;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0xE64fB301D1F893a23Ca1Da38BB05E80600A63d47;
}

library LayerZeroV2SomniaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40376;
    uint256 internal constant CHAIN_ID = 50312;
    string internal constant CHAIN_NAME = "somnia-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNSomniaTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2SomniashannonTestnet {
    // Chain metadata
    uint32 internal constant EID = 40405;
    uint256 internal constant CHAIN_ID = 50312;
    string internal constant CHAIN_NAME = "somniashannon-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x75B3bDfB2b31728104711f52a5DF9f6319128c5d);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xeD0480d5EF6e1fCA85Ff715154329Da30f2fEA96);
    address internal constant BLOCKED_MESSAGE_LIB = 0xAdb7228fe2Ded73D11F1AdDF27f58e2D5d69D762;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x91ec94dd5E949BdB2ecE3b91B9602EC5F7F59FFD);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAcC2c25941F4a2e6aF7d79a74889b851E515E9b6;
    address internal constant EXECUTOR = 0x0406793028088E3944cC828953a7BFF2a60e5D84;
    address internal constant DEAD_DVN = 0x0ac2924460A5b285fd205DeDB46738Ad46971061;
    address internal constant LZ_EXECUTOR = 0x9424763EB5ab44be20B7F5D96072415C2CD5De14;
}

library LayerZeroV2DVNSomniashannonTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x0ac2924460A5b285fd205DeDB46738Ad46971061;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9Fc33fBBDEA0e188baA1770aF6Ca2bC38bDA65d6;
}

library LayerZeroV2SoneiumMainnet {
    // Chain metadata
    uint32 internal constant EID = 30340;
    uint256 internal constant CHAIN_ID = 1868;
    string internal constant CHAIN_NAME = "soneium-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x4bCb6A963a9563C33569D7A512D35754221F3A19);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xF5F7cdcbA94Ad90C6d705b34A93E82b484387C68);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x50351C9dA75CCC6d8Ea2464B26591Bb4bd616dD5);
    address internal constant BLOCKED_MESSAGE_LIB = 0xE71ED82cB15850147E9886b770d251BF4C807da4;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x364B548d8e6DB7CA84AaAFA54595919eCcF961eA);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x76111DE813F83AAAdBD62773Bf41247634e2319a;
    address internal constant EXECUTOR = 0xAE3C661292bb4D0AEEe0588b4404778DF1799EE6;
    address internal constant DEAD_DVN = 0xf90b61aa892ba0433F54D2C1BF594d89d22ed7F6;
    address internal constant LZ_EXECUTOR = 0x7D8A496469dcEDa40832CF4d7663ccFbcC4784E3;
}

library LayerZeroV2DVNSoneiumMainnet {
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0xD251D8a85cDfC84518b9454EE6a8D017E503F56C;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0x04584d612802A3a26b160E3F90341E6443dDB76A;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xdd1564F68aa802E30819F9E8043664584A8a3E87;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x8Fc629aa400D4D9c0B118F2685a49316552ABf27;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xFF78C0d5bBc133615B54d3F7eE45b8E314D38BD2;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xf90b61aa892ba0433F54D2C1BF594d89d22ed7F6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xb2609ff80cDc626B6A6782366E5B43639E19cB8c;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xfDfA2330713A8e2EaC6e4f15918F11937fFA4dBE;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x5Cc4E4d2cDf15795Dc5EA383b8768ec91A587719;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x1a53015B6b4d88a943Ed512bD179FbD89a768B6b;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xf85D19E8884EB985A7f77BA385409ec7aD2923A5;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // TSS [tss]
    address internal constant DVN_TSS = 0xf80cB5F7467B67cBEC77DcE6a13C89f210b554c0;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x1176B42A5c76b41e0895705af028ff8A75c08156;
}

library LayerZeroV2SonicMainnet {
    // Chain metadata
    uint32 internal constant EID = 30332;
    uint256 internal constant CHAIN_ID = 146;
    string internal constant CHAIN_NAME = "sonic-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x860E8D714944E7accE4F9e6247923ec5d30c0471);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNSonicMainnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xdfBb5C677dB41b5EF3a180509CDe27B5c9784655;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xb2c7832aA8DDA878De6f949485f927e9e532E92C;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x3c4e4c3baA5D883654970fe34Db8c943ebf43ab2;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xDe79818C75649773Fc462E9d3134b23B81741481;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x805ed883FA3453E7Ac588667785a4495C573Cd13;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xCA764b512E2d2fD15fcA1c0a38F7cFE9153148F0;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x54dD79f5cE72b51FCBbcb170Dd01E32034323565;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x78f607fc38e071cEB8630B7B12c358eE01C31E96;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0xC8B7744AFd77C3EEcf310383837A07584766A51a;
    // Muon [muon]
    address internal constant DVN_MUON = 0xA3858e2A9860C935Fc9586a617e9b2A674C3e4c8;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x64D684840881b45869B0C72B17aa911A3FC4305e;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x3b0531eB02Ab4aD72e7a531180beeF9493a00dD2;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x05AaEfDf9dB6E0f7d27FA3b6EE099EDB33dA029E;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x45A7305c65AAd28384F20a80F87a5183772E4F70;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // TSS [tss]
    address internal constant DVN_TSS = 0x01BBb6319c596e70342a0cFD1193CfebE10BBB1D;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x87a4d47918e83Df0fcF6040dBdC358119f7deb2a;
}

library LayerZeroV2SonicTestnet {
    // Chain metadata
    uint32 internal constant EID = 40349;
    uint256 internal constant CHAIN_ID = 57054;
    string internal constant CHAIN_NAME = "sonic-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNSonicTestnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0x2E6Be93A9A50EEB5FB0Cbd83323b2509E7Be15ab;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x76bFDC5e49BbFb898070ef3bf3075181b682aF24;
}

library LayerZeroV2SophonMainnet {
    // Chain metadata
    uint32 internal constant EID = 30334;
    uint256 internal constant CHAIN_ID = 50104;
    string internal constant CHAIN_NAME = "sophon-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x5c6cfF4b7C49805F8295Ff73C204ac83f3bC4AE7);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x01047601DB5E63b1574aae317BAd9C684E3C9056);
    address internal constant BLOCKED_MESSAGE_LIB = 0x3258287147FB7887d8A643006e26E19368057377;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9AB633555E460C01f8c7b8ab24C88dD4986dD5A1);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x52fFEeaE5Ffa89D4b31c72F87ead3699FCB79e40;
    address internal constant EXECUTOR = 0x553313dB58dEeFa3D55B1457D27EAB3Fe5EC87E8;
    address internal constant DEAD_DVN = 0x04830f6deCF08Dec9eD6C3fCAD215245B78A59e1;
    address internal constant LZ_EXECUTOR = 0xcaeB82549Ff641C4aF73505a137B5BeD06FEaf64;
}

library LayerZeroV2DVNSophonMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x99aA6f70535873AC8167D69893a2CF70ECA544C3;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xCec9f0A49073ac4a1C439D06cb9448512389a64E;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x04830f6deCF08Dec9eD6C3fCAD215245B78A59e1;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x07fD0e370B49919cA8dA0CE842B8177263c0E12c;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xa1A31D9ddf919e87a23A1416b0aa0b600D32435D;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x7cC1A4A700AAb8FbA8160a4e09B04a9A68C6D914;
}

library LayerZeroV2SophonTestnet {
    // Chain metadata
    uint32 internal constant EID = 40341;
    uint256 internal constant CHAIN_ID = 531050104;
    string internal constant CHAIN_NAME = "sophon-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x9EC2DB700a3c3D35888acCa134F3f860B4a0b41a);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xf1A4f4FA1643ACf9f867b635A6d66a1990A3C217);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC9968d69bfaFCFC1a768B2e97D4020386A5e15b2);
    address internal constant BLOCKED_MESSAGE_LIB = 0x25aa15242C9D94526f2844E7c03c5A40e8A79256;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x21bc626E5e97FBF404Fda7e7D808E41A2fA56B60);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC29f0C76E85723ecFbF50D6cbE1ABEac451D0661;
    address internal constant EXECUTOR = 0xaF862837316E00d2708Bd648c5FE87EdC7093799;
    address internal constant DEAD_DVN = 0xE18A1F5942b31F075B00B5F5E944F384B15abF83;
    address internal constant LZ_EXECUTOR = 0x557ab96f00b9774E5C53550F738933E0E0E6Ff6b;
}

library LayerZeroV2DVNSophonTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xE18A1F5942b31F075B00B5F5E944F384B15abF83;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xe2F60A4cb9445a3E3d1a7E76a5F46CB8139838b8;
}

library LayerZeroV2SpaceMainnet {
    // Chain metadata
    uint32 internal constant EID = 30341;
    uint256 internal constant CHAIN_ID = 8227;
    string internal constant CHAIN_NAME = "space-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);
    address internal constant BLOCKED_MESSAGE_LIB = 0x3ADB8D9c040faE1fbAC9B579799cD4cA8c768f8A;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x377530cdA84DFb2673bF4d145DCF0C4D7fdcB5b6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x282b3386571f7f794450d5789911a9804FA346b4;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNSpaceMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xE4193136B92bA91402313e95347c8e9FAD8d27d0;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x7cacBe439EaD55fa1c22790330b12835c6884a91;
}

library LayerZeroV2SpruceTestnet {
    // Chain metadata
    uint32 internal constant EID = 40206;
    uint256 internal constant CHAIN_ID = 424242;
    string internal constant CHAIN_NAME = "spruce-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2StableMainnet {
    // Chain metadata
    uint32 internal constant EID = 30396;
    uint256 internal constant CHAIN_ID = 988;
    string internal constant CHAIN_NAME = "stable-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x37aaaf95887624a363effB7762D489E3C05c2a02);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x15e51701F245F6D5bd0FEE87bCAf55B0841451B3);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNStableMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x8D6cC20D84FbEb5733c60436CeB8957Da2ac02C8;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xED1390548Adfe890C48c7AAeAd2bc9336D7F6A58;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x45A7305c65AAd28384F20a80F87a5183772E4F70;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x965A80Dc87cec5848310E612DeAD84B543AeF874;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x9bCd17A654bffAa6f8fEa38D19661a7210e22196;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x02152F4624596602dCBB8B8EAD2988Ad44EDc865;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x8D77D35604A9f37f488E41D1d916b2A0088F82Dd;
}

library LayerZeroV2StableTestnet {
    // Chain metadata
    uint32 internal constant EID = 40374;
    uint256 internal constant CHAIN_ID = 2201;
    string internal constant CHAIN_NAME = "stable-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x9eCf72299027e8AeFee5DC5351D6d92294F46d2b);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xB0487596a0B62D1A71D0C33294bd6eB635Fc6B09);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNStableTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2StabledevnetTestnet {
    // Chain metadata
    uint32 internal constant EID = 40361;
    uint256 internal constant CHAIN_ID = 2201;
    string internal constant CHAIN_NAME = "stabledevnet-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNStabledevnetTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2StoryMainnet {
    // Chain metadata
    uint32 internal constant EID = 30364;
    uint256 internal constant CHAIN_ID = 1514;
    string internal constant CHAIN_NAME = "story-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3A73033C0b1407574C76BdBAc67f126f6b4a9AA9);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x3EEfc82105418a2e611161daFCeCfb377DCa40fE);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);
    address internal constant BLOCKED_MESSAGE_LIB = 0xf540D892BC671f08E0B1c5B61185c53c2211e8f7;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7;
    address internal constant EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
    address internal constant DEAD_DVN = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    address internal constant LZ_EXECUTOR = 0x306B9a8953B9462F8b826e6768a93C8EA7454965;
}

library LayerZeroV2DVNStoryMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x77aAF86B4466A67869667BaBe02c6Ebe7E7791d6;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xdD9B12623ec1C7E744819708B9217b309fDE4080;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x73DDc92E39aEdA95FEb8D3E0008016d9F1268c76;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0xDD779AAAd20E62275457Af91b123bB13dd5aFd0B;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x032959aeC390996b9A82feA8273c76b938E3c861;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xA80AA110f05C9C6140018aAE0C4E08A70f43350d;
    // TSS [tss]
    address internal constant DVN_TSS = 0xe25741bda30bb79a66ADf656E7f2D3f0C4fb3191;
}

library LayerZeroV2StoryTestnet {
    // Chain metadata
    uint32 internal constant EID = 40315;
    uint256 internal constant CHAIN_ID = 1513;
    string internal constant CHAIN_NAME = "story-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNStoryTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2SubtensorevmMainnet {
    // Chain metadata
    uint32 internal constant EID = 30374;
    uint256 internal constant CHAIN_ID = 964;
    string internal constant CHAIN_NAME = "subtensorevm-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNSubtensorevmMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xc71a3d16F00d93c78AB89aAEDde7C0012A3b26Cb;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0x58DfF8622759eA75910a08DBA5D060579271dcD7;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xb3d5Fd1f98510e90bd59BD702eD362622672b97f;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x8D77D35604A9f37f488E41D1d916b2A0088F82Dd;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x6c5f923B63Fdd52fb9C45dAeFA8695fA6b55a935;
}

library LayerZeroV2SubtensorevmTestnet {
    // Chain metadata
    uint32 internal constant EID = 40377;
    uint256 internal constant CHAIN_ID = 945;
    string internal constant CHAIN_NAME = "subtensorevm-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNSubtensorevmTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2SuperpositionMainnet {
    // Chain metadata
    uint32 internal constant EID = 30327;
    uint256 internal constant CHAIN_ID = 55244;
    string internal constant CHAIN_NAME = "superposition-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNSuperpositionMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x396dC0A78F789586E2982fCCD830C5954C193F3c;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x38179D3BFa6Ef1d69A8A7b0b671BA3D8836B2AE8;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x07C05EaB7716AcB6f83ebF6268F8EECDA8892Ba1;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // TSS [tss]
    address internal constant DVN_TSS = 0xaeA4FB2C28252C8e5f195178820E8791Aa4A4e41;
}

library LayerZeroV2SuperpositionTestnet {
    // Chain metadata
    uint32 internal constant EID = 40336;
    uint256 internal constant CHAIN_ID = 98985;
    string internal constant CHAIN_NAME = "superposition-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNSuperpositionTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2SwellMainnet {
    // Chain metadata
    uint32 internal constant EID = 30335;
    uint256 internal constant CHAIN_ID = 1923;
    string internal constant CHAIN_NAME = "swell-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xeAdd7f80c6880c03B0a32a36C46aD26e2879B6E5);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x377530cdA84DFb2673bF4d145DCF0C4D7fdcB5b6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x2367325334447C5E1E0f1b3a6fB947b262F58312;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNSwellMainnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0x1269D1777bA8cF7498FE741869Ed4B73f2A47e93;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xa2447e5B58D357c49Bf74B50B14421e6A100e525;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xf4672690eF45b46EAa3b688fe2f0Fc09e9366b20;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x7976b969A8E9560C483229FfBB855E8440898c9D;
    // TSS [tss]
    address internal constant DVN_TSS = 0x275448a4BF72Ab5A560e8A535AAC0c85B99bC896;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x4d09C99ED8788b191144D6Cdd129014FDe70326f;
}

library LayerZeroV2SwellTestnet {
    // Chain metadata
    uint32 internal constant EID = 40353;
    uint256 internal constant CHAIN_ID = 1924;
    string internal constant CHAIN_NAME = "swell-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant DEAD_DVN = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNSwellTestnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0x53c50fB014b0c9852b7979e6C722682a6fF62C41;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2SwimmerMainnet {
    // Chain metadata
    uint32 internal constant EID = 30114;
    string internal constant CHAIN_NAME = "swimmer-mainnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2SwimmerTestnet {
    // Chain metadata
    uint32 internal constant EID = 10130;
    string internal constant CHAIN_NAME = "swimmer-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT = ILayerZeroEndpointV2(0xae92d5aD7583AD66E49A0c67BAd18F6ba52dDDc1);

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant RELAYER = 0x35AdD9321507A87471a11EBd4aE4f592d531e620;
    address internal constant M_PTVALIDATOR_V4 = 0x53fd4C4fBBd53F6bC58CaE6704b92dB1f360A648;
    address internal constant TREASURY_V2 = 0x332B8Ad2C9FcdE633b50810d930E737521eF3063;
    address internal constant ULTRA_LIGHT_NODE_V2 = 0x7343d5c9811FcCb45F64073f0bB7482b37028dc8;
    address internal constant NONCE_CONTRACT = 0x955412C07d9bC1027eb4d481621ee063bFd9f4C6;
    address internal constant ULTRA_LIGHT_NODE = 0x6098e96a28E02f27B1e6BD381f870F1C8Bd169d3;
    address internal constant RELAYER_V2 = 0x7F417F2192B89Cf93b8c4Ee01d558883A0AD7B47;
    address internal constant F_PVALIDATOR = 0x8C707adF5A7B82dd47d6a2896ebb3d3462Aea9e6;
    address internal constant M_PTVALIDATOR_V5 = 0x9eCf72299027e8AeFee5DC5351D6d92294F46d2b;
    address internal constant M_PTVALIDATOR01 = 0x4e08B1F1AC79898569CfB999FB92B5495FB18A2B;
}

library LayerZeroV2TacMainnet {
    // Chain metadata
    uint32 internal constant EID = 30377;
    uint256 internal constant CHAIN_ID = 239;
    string internal constant CHAIN_NAME = "tac-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNTacMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x07ff86c392588254Ad10F0811dbBcad45f4C7d87;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x4d45727d2de5ffC811E6A161c3a7233a2Ea2e0E7;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xaCDe1f22EEAb249d3ca6Ba8805C8fEe9f52a16e7;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xB19A9370D404308040A9760678c8Ca28aFfbbb76;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x58249a2Ec05c1978bF21DF1f5eC1847e42455CF4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x97841D4AB18E9A923322A002d5b8Eb42b31Ccdb5;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x965A80Dc87cec5848310E612DeAD84B543AeF874;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x6cb6eb4099D56FeE837745D145508bFAc37Ad8Cd;
}

library LayerZeroV2TacspbTestnet {
    // Chain metadata
    uint32 internal constant EID = 40404;
    uint256 internal constant CHAIN_ID = 2391;
    string internal constant CHAIN_NAME = "tacspb-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNTacspbTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2TaikoMainnet {
    // Chain metadata
    uint32 internal constant EID = 30290;
    uint256 internal constant CHAIN_ID = 167000;
    string internal constant CHAIN_NAME = "taiko-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x377530cdA84DFb2673bF4d145DCF0C4D7fdcB5b6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0xc30Ff4F3182A75C0bE27493fA357886c06c384b6;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNTaikoMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xa9Ff468ad000A4D5729826459197a0dB843F433E;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x8bAFe0299CB4D3fF75d3f7045554474Bf414FD11;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xBD237eF21319E2200487BDF30c188C6c34b16D3B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xc30Ff4F3182A75C0bE27493fA357886c06c384b6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xc097ab8CD7b053326DFe9fB3E3a31a0CCe3B526f;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x2c7185f5B0976397d9eB5c19d639d4005e6708f0;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x37473676FF697f2Eba29C8A3105309AbF00bA013;
    // TSS [tss]
    address internal constant DVN_TSS = 0x0EC3Aa6352A0BFA3352523938260e42c212fa8E7;
}

library LayerZeroV2TaikoTestnet {
    // Chain metadata
    uint32 internal constant EID = 40274;
    uint256 internal constant CHAIN_ID = 167009;
    string internal constant CHAIN_NAME = "taiko-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNTaikoTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2TangibleTestnet {
    // Chain metadata
    uint32 internal constant EID = 40252;
    string internal constant CHAIN_NAME = "tangible-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x145C041566B21Bec558B2A37F1a5Ff261aB55998);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
    address internal constant EXECUTOR = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    address internal constant LZ_EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
}

library LayerZeroV2DVNTangibleTestnet {
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x25d5882bd4b6D4aa72a877EB62c7096364Ae210a;
}

library LayerZeroV2TelosMainnet {
    // Chain metadata
    uint32 internal constant EID = 30199;
    uint256 internal constant CHAIN_ID = 40;
    string internal constant CHAIN_NAME = "telos-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x0BcAC336466ef7F1e0b5c184aAB2867C108331aF);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x8F76bAcC52b5730c1f1A2413B8936D4df12aF4f6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xF08f13c080fcc530B1C21DE827C27B7b66874DDc;
    address internal constant EXECUTOR = 0x1785c94d31E3E3Ab1079e7ca8a9fbDf33EEf9dd5;
    address internal constant DEAD_DVN = 0x1DE78bEd411ad03e7f9B4c591D9C80499287Cb04;
    address internal constant LZ_EXECUTOR = 0x53490de975969B34E537E541E19F26b15e368895;
}

library LayerZeroV2DVNTelosMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO = 0x2A22804Cfa992D5cb1324863ec4aDa920256B908;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO_2 = 0x31B8c7CD7226eA79E833FaBDcCbcA0fa38d6E0a1;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xae5273d893aD87c8f38D45E822A7b4321cCeFB4c;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x1DE78bEd411ad03e7f9B4c591D9C80499287Cb04;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x3C5575898f59c097681d1Fc239c2c6Ad36B7b41c;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x809CDE2AfcF8627312E87a6a7bbFFaB3F8F347c7;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xA80AA110f05C9C6140018aAE0C4E08A70f43350d;
    // TSS [tss]
    address internal constant DVN_TSS = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0xd2750419b4a663c8Ff8f7B6067885D82f299aCe9;
}

library LayerZeroV2TelosTestnet {
    // Chain metadata
    uint32 internal constant EID = 40199;
    uint256 internal constant CHAIN_ID = 41;
    string internal constant CHAIN_NAME = "telos-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x4628040135EF85759594290F0877aB93B660ac8b);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9Fc55169a8B47EDCE891942565De00DBd50B3C2E);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x06A9BB20Adc83Cb6F9C22839B2F2C4C3391a4A3d;
    address internal constant EXECUTOR = 0x9Ed8C430B96ae6FDdDb542DDa4eF6f53E919eBdD;
    address internal constant LZ_EXECUTOR = 0x5709988a03d1CC02197F222D2C72CcC6018bCE0B;
}

library LayerZeroV2DVNTelosTestnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0xfD657D625F929e7CAec08adD967EAD23423F3391;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x5b11f3833393e9be06fA702c68453aD31976866E;
    // TSS [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2TenetMainnet {
    // Chain metadata
    uint32 internal constant EID = 30173;
    uint256 internal constant CHAIN_ID = 1559;
    string internal constant CHAIN_NAME = "tenet-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1785c94d31E3E3Ab1079e7ca8a9fbDf33EEf9dd5);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x16909F77E57CDaaB7BE0fbDF12b6A77d99541605);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x20E48549D5269e9EA5D7347a915F71AcFE88E52d;
    address internal constant EXECUTOR = 0xB12514e226E50844E4655696c92c0c36B8A53141;
    address internal constant DEAD_DVN = 0x0e557f8F5BfeEDC6905594987Dccc2E10aF33E5C;
    address internal constant LZ_EXECUTOR = 0x1A40Cd69966222b2FAec9B1b58e215d49d093A08;
}

library LayerZeroV2DVNTenetMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xA1491AdA1168f04df32F72913fc3F27522950acf;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x0e557f8F5BfeEDC6905594987Dccc2E10aF33E5C;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x28A5536cA9F36c45A9d2AC8d2B62Fc46Fde024B6;
    // TSS [tss]
    address internal constant DVN_TSS = 0x282b3386571f7f794450d5789911a9804FA346b4;
}

library LayerZeroV2TenetTestnet {
    // Chain metadata
    uint32 internal constant EID = 40173;
    uint256 internal constant CHAIN_ID = 155;
    string internal constant CHAIN_NAME = "tenet-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x2CAD3483690a95d10eeADFb7A79C212050BF5a23);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xBaf97EC0E26b7879850c8682AdB723670C6133AF);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xA9D464DAaF3954C2e2d346ca793BE89565694C7D;
    address internal constant EXECUTOR = 0xdfF535e7F030E4aA69CcC7E4a8404648e872E220;
    address internal constant LZ_EXECUTOR = 0x56AdB34A18897dAcd737921cbA6AA0518840C0dd;
}

library LayerZeroV2DVNTenetTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x74582424B8b92BE2eC17c192F6976b2effEFAb7c;
    // TSS [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2TiltyardMainnet {
    // Chain metadata
    uint32 internal constant EID = 30238;
    uint256 internal constant CHAIN_ID = 710420;
    string internal constant CHAIN_NAME = "tiltyard-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3A73033C0b1407574C76BdBAc67f126f6b4a9AA9);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x62d142E186344C0a2445c822e356E87faF7b8288);
    address internal constant BLOCKED_MESSAGE_LIB = 0xf540D892BC671f08E0B1c5B61185c53c2211e8f7;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd83B25f4Ff6C596380c36C7eD10c225d6B17Dfd7);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x2936aB2dD26Bc42F05BDBC97b4aD52f989D994D7;
    address internal constant EXECUTOR = 0xEF7781FC1C4F7B2Fd3Cf03f4d65b6835b27C1A0d;
    address internal constant DEAD_DVN = 0xa50d9C4aD49933f7bC0574D8c54427EC42C2B073;
    address internal constant LZ_EXECUTOR = 0xb328c2C62E83D3a179646b5c7284A99182735241;
}

library LayerZeroV2DVNTiltyardMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x0165C910Ea47964a23DC4FB7c7483F6f3ad462aE;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xa50d9C4aD49933f7bC0574D8c54427EC42C2B073;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xCFc3f9dD0205b76FF04e20243f106465Dd829656;
    // TSS [tss]
    address internal constant DVN_TSS = 0xfDfA2330713A8e2EaC6e4f15918F11937fFA4dBE;
}

library LayerZeroV2TomoMainnet {
    // Chain metadata
    uint32 internal constant EID = 30196;
    uint256 internal constant CHAIN_ID = 88;
    string internal constant CHAIN_NAME = "tomo-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x6f1686189f32e78f1D83e7c6Ed433FCeBc3A5B51);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x7004396C99D5690da76A7C59057C5f3A53e01704);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xCFf08a35A5f27F306e2DA99ff198dB90f13DEF77;
    address internal constant EXECUTOR = 0x2d24207F9C1F77B2E08F2C3aD430da18e355CF66;
    address internal constant DEAD_DVN = 0x658Ff096EE44e16564beA9E1161eCBC503aE6E75;
    address internal constant LZ_EXECUTOR = 0xA09dB5142654e3eB5Cf547D66833FAe7097B21C3;
}

library LayerZeroV2DVNTomoMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x658Ff096EE44e16564beA9E1161eCBC503aE6E75;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x1aCe9DD1BC743aD036eF2D92Af42Ca70A1159df5;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x790d7B1E97a086eb0012393b65a5B32cE58a04Dc;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2TomoTestnet {
    // Chain metadata
    uint32 internal constant EID = 40196;
    uint256 internal constant CHAIN_ID = 89;
    string internal constant CHAIN_NAME = "tomo-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xbB7e6FE3fA954BF0e5Ea77d38736C56E8D09514B);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x8468689ca62D8806614EEdb9F26a13e1Fddbd6BD);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x7Cfb4FADEdc96793f844371D8498F4FDCd37Da61;
    address internal constant EXECUTOR = 0xe4C9F9Fa374273736199bdeB712592cE1a3B4B26;
    address internal constant LZ_EXECUTOR = 0x94211aB97A59EeD7d28e024F7BbD770C40d8c46c;
}

library LayerZeroV2DVNTomoTestnet {
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x37d03C8D27d7928546B5b773566Ec9c2847054d2;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2TreasureTestnet {
    // Chain metadata
    uint32 internal constant EID = 40348;
    uint256 internal constant CHAIN_ID = 978658;
    string internal constant CHAIN_NAME = "treasure-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x9EC2DB700a3c3D35888acCa134F3f860B4a0b41a);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x0e2c52BC2e119b1919e68f4F1874D4d30F6eF9fB);
    address internal constant BLOCKED_MESSAGE_LIB = 0x25aa15242C9D94526f2844E7c03c5A40e8A79256;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x5f04B588B9408d8d5F4ac250e8c71986683C35A5);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC29f0C76E85723ecFbF50D6cbE1ABEac451D0661;
    address internal constant EXECUTOR = 0xe2Ef622A13e71D9Dd2BBd12cd4b27e1516FA8a09;
    address internal constant DEAD_DVN = 0x9c0B5520e3eC0ccE919cEaA1fb5AaA7cdAb437D4;
    address internal constant LZ_EXECUTOR = 0x2DCC8cFb612fDbC0Fb657eA1B51A6F77b8b86448;
}

library LayerZeroV2DVNTreasureTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9c0B5520e3eC0ccE919cEaA1fb5AaA7cdAb437D4;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD_2 = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6869b4348Fae6A911FDb5BaE5e0D153b2aA261f6;
}

library LayerZeroV2UnichainMainnet {
    // Chain metadata
    uint32 internal constant EID = 30320;
    uint256 internal constant CHAIN_ID = 130;
    string internal constant CHAIN_NAME = "unichain-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x178F93794328C04988bcD52a1B820eC105b17f2f);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNUnichainMainnet {
    // ABDB [animoca-blockdaemon]
    address internal constant DVN_ABDB = 0x1337834fd822065Af36a13657d2E847616129F3f;
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0x6a4C9096F162f0ab3C0517B0a40dc1CE44785e16;
    // Bitgo (deprecated) [bitgo]
    address internal constant DVN_BITGO_2 = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x00A979a5D306E9c5F8Cf473659e75f8002E06fc8;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x97faa2a9c9bf8B4082B175A5B894Ce6bac6697a8;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xD8A1e914BDc19Be62d548403303f13663A360C6b;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0xC6a6324932B399D6A673B7Ed0af671F28033E046;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xB85775a6868C1a729447951FD59F9f7F095Cd0B1;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0xF02D0F9ACc2870e12C34aa3816dd86FaC1339f38;
    // Nansen [nansen]
    address internal constant DVN_NANSEN = 0x144c6a7A17781e165f430b18f0680c5b3e3713E2;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x643923A777570c5377CD0e973d999c00cce55249;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0x25e0e650a78e6304A3983Fc4b7Ffc6544b1bEea6;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xab82E9b24004b954985528dAc14D1B020722a3c8;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x9885110b909E88bb94f7f767A68ec2558B2AfA73;
    // TSS [tss]
    address internal constant DVN_TSS = 0x306B9a8953B9462F8b826e6768a93C8EA7454965;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x208894346d2995A26493f8C2a5b04fB1ee41A899;
    // WBTC Canary [canary-wbtc]
    address internal constant DVN_WBTC_CANARY = 0x148aE5e1df44Cf8b6D258430Eab79b28d0da4Aa6;
}

library LayerZeroV2UnichainTestnet {
    // Chain metadata
    uint32 internal constant EID = 40333;
    uint256 internal constant CHAIN_ID = 1301;
    string internal constant CHAIN_NAME = "unichain-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xb8815f3f882614048CbE201a67eF9c6F10fe5035);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x72e34F44Eb09058bdDaf1aeEebDEC062f1844b00);
    address internal constant BLOCKED_MESSAGE_LIB = 0x5F6D188267cd4b175Ad7430DDf3346906177Dc69;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xbEA34F26b6FBA63054e4eD86806adce594A62561);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x7110205FA59d9CfEE406293D0BaE0d6240985Cd3;
    address internal constant EXECUTOR = 0x8548b148800BB00C6E4039Aa9C20ebb36a36A600;
    address internal constant DEAD_DVN = 0x9fabEEcA47e03d4a37F43b5E476030ab1BB200Ad;
    address internal constant LZ_EXECUTOR = 0x0e6DdC254A6Cd8395D7795D03d4023453AdBBf62;
}

library LayerZeroV2DVNUnichainTestnet {
    // Bitgo [bitgo]
    address internal constant DVN_BITGO = 0x14CcB1a6ebb0b6F669fcE087a2DbF664A1F57251;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9fabEEcA47e03d4a37F43b5E476030ab1BB200Ad;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6236072727ae3DFe29bAfE9606e41827Be8C6341;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x6c916e44d5fc868eD7ec45319C6fda2E1907CE6B;
}

library LayerZeroV2UnrealTestnet {
    // Chain metadata
    uint32 internal constant EID = 40262;
    uint256 internal constant CHAIN_ID = 18233;
    string internal constant CHAIN_NAME = "unreal-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2DVNUnrealTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2VanarTestnet {
    // Chain metadata
    uint32 internal constant EID = 40298;
    uint256 internal constant CHAIN_ID = 78600;
    string internal constant CHAIN_NAME = "vanar-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x926984a57b10a3a5c4CfDBAc04dAAA0309e78932;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNVanarTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xC1868e054425D378095A003EcbA3823a5D0135C9;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2VennTestnet {
    // Chain metadata
    uint32 internal constant EID = 40234;
    string internal constant CHAIN_NAME = "venn-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xf48994FEEb2F6798eCEEB4C3Abe4808E1D8851fB);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x37d03C8D27d7928546B5b773566Ec9c2847054d2);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xd489598B8987f198483e5810CCe830e719652e80;
    address internal constant EXECUTOR = 0xBE819ed0a8EE608F15de761F03042CB364fd39a7;
    address internal constant LZ_EXECUTOR = 0x7983dCA4B0E322b0B80AFBb01F1F904A0532FcB6;
}

library LayerZeroV2DVNVennTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x1A39B89A98bF89F82d5DC5C52d1f08F407D72EBB;
}

library LayerZeroV2WorldchainMainnet {
    // Chain metadata
    uint32 internal constant EID = 30319;
    uint256 internal constant CHAIN_ID = 480;
    string internal constant CHAIN_NAME = "worldchain-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0xe57308A83D94276C27232189Db8BdE8E2FFe41a3);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNWorldchainMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xe9C24dD582e37FAACa7d44c799530688DE92Da73;
    // Frax [frax]
    address internal constant DVN_FRAX = 0xE16561B56BDf003B785347d237905BaE24f5F973;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x95729Ea44326f8adD8A9b1d987279DBdC1DD3dFf;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN_2 = 0x00E91548787Caf130D811EF1872f2Bc2C0583d90;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF007f1Fef50C0aCAF4418741454BCAEaeCB96B87;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS_2 = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x30aC79B638fFFd3a7F05338249ac6eD371E2dF2b;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND_2 = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x7cEc38c06a2FEC9Fd525B1925544110204CbB5f6;
}

library LayerZeroV2WorldcoinTestnet {
    // Chain metadata
    uint32 internal constant EID = 40335;
    uint256 internal constant CHAIN_ID = 4801;
    string internal constant CHAIN_NAME = "worldcoin-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x145C041566B21Bec558B2A37F1a5Ff261aB55998);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);
    address internal constant BLOCKED_MESSAGE_LIB = 0x6F09f1430c4c204c4b5433Abe24C15f342b70699;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x53fd4C4fBBd53F6bC58CaE6704b92dB1f360A648);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C;
    address internal constant EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
    address internal constant DEAD_DVN = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant LZ_EXECUTOR = 0x9A289B849b32FF69A95F8584a03343a33Ff6e5Fd;
}

library LayerZeroV2DVNWorldcoinTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x55c175DD5b039331dB251424538169D8495C18d1;
}

library LayerZeroV2XaiMainnet {
    // Chain metadata
    uint32 internal constant EID = 30236;
    uint256 internal constant CHAIN_ID = 660279;
    string internal constant CHAIN_NAME = "xai-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0xEFf272433131a0077592f58a16B702EE49B04312;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNXaiMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x34730f2570E6cff8B1C91FaaBF37D0DD917c4367;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x7A3D18E2324536294CD6F054cDde7c994f40391A;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xE94aE34DfCC87A61836938641444080B98402c75;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xEFf272433131a0077592f58a16B702EE49B04312;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xaCDe1f22EEAb249d3ca6Ba8805C8fEe9f52a16e7;
    // TSS [tss]
    address internal constant DVN_TSS = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2XaiTestnet {
    // Chain metadata
    uint32 internal constant EID = 40251;
    uint256 internal constant CHAIN_ID = 37714555429;
    string internal constant CHAIN_NAME = "xai-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
    address internal constant EXECUTOR = 0x55c175DD5b039331dB251424538169D8495C18d1;
    address internal constant LZ_EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
}

library LayerZeroV2DVNXaiTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6;
}

library LayerZeroV2XchainMainnet {
    // Chain metadata
    uint32 internal constant EID = 30291;
    uint256 internal constant CHAIN_ID = 94524;
    string internal constant CHAIN_NAME = "xchain-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x69fBED8561F829eFBB3c9785f1983641B27887e7;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNXchainMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x0E5c792Ec122cBE89cE0085D7EFcdB151eae3376;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x69fBED8561F829eFBB3c9785f1983641B27887e7;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x56053A8f4db677e5774F8Ee5BdD9D2dC270075f3;
}

library LayerZeroV2XchainTestnet {
    // Chain metadata
    uint32 internal constant EID = 40282;
    uint256 internal constant CHAIN_ID = 64002;
    string internal constant CHAIN_NAME = "xchain-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNXchainTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2XdcMainnet {
    // Chain metadata
    uint32 internal constant EID = 30365;
    uint256 internal constant CHAIN_ID = 50;
    string internal constant CHAIN_NAME = "xdc-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x26463a4aF811c256f669524Ec2dC1ba7e7a83C37;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2DVNXdcMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x307d81ef09c72730f57667bF1e9b62DB4904053f;
    // Curve [curve]
    address internal constant DVN_CURVE = 0xAb6d3d37D8Dc309e7d8086B2e85a953b84Ee5fA9;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xdFDB9b369eF5821e9E6cB9B3329C74C38fe93194;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x1294E3347ec64Fd63e1d0594Dc1294247cd237C7;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x4FE90e0f2A99e464d6E97B161d72101CD03C20fe;
}

library LayerZeroV2XlayerMainnet {
    // Chain metadata
    uint32 internal constant EID = 30274;
    uint256 internal constant CHAIN_ID = 196;
    string internal constant CHAIN_NAME = "xlayer-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4514FC667a944752ee8A29F544c1B20b1A315f25;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0xAC9dc8415B2348d8135eC725e8E9B1F1DfAF8e53;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNXlayerMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0x047d9DBe4fC6B5c916F37237F547f9F42809935a;
    // Curve [curve]
    address internal constant DVN_CURVE = 0x1a92C25Cb7Cd80E1138E8125FC0a0B0642688C0B;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x2Ae36A544b904F2f2960F6Fd1a6084b4b11ba334;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xAC9dc8415B2348d8135eC725e8E9B1F1DfAF8e53;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x28af4dADbc5066e994986E8bb105240023dC44B6;
    // Paxos [paxos]
    address internal constant DVN_PAXOS = 0x8bEFB8cd9529e539B095251Ea3a058e710225D30;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // TSS [tss]
    address internal constant DVN_TSS = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
    // USDT0 [usdt0]
    address internal constant DVN_USDT0 = 0x6De0D56e2d695dB9E2B4FBEcA3D81372c59848BB;
}

library LayerZeroV2XlayerTestnet {
    // Chain metadata
    uint32 internal constant EID = 40269;
    uint256 internal constant CHAIN_ID = 195;
    string internal constant CHAIN_NAME = "xlayer-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x53fd4C4fBBd53F6bC58CaE6704b92dB1f360A648);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xcF1B0F4106B0324F96fEfcC31bA9498caa80701C;
    address internal constant EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    address internal constant LZ_EXECUTOR = 0x4dFa426aEAA55E6044d2b47682842460a04aF45c;
}

library LayerZeroV2DVNXlayerTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x55c175DD5b039331dB251424538169D8495C18d1;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x4BC3343593c0bB0E70639d5C0fDBc67e05fE4183;
    // Paxos [paxos]
    address internal constant DVN_PAXOS = 0xf0a6f5472b3c643Aa7Fac691f1A1d23fE2D2BCEE;
}

library LayerZeroV2Xlayer2Testnet {
    // Chain metadata
    uint32 internal constant EID = 40416;
    uint256 internal constant CHAIN_ID = 196;
    string internal constant CHAIN_NAME = "xlayer2-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNXlayer2Testnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
    // Paxos [paxos]
    address internal constant DVN_PAXOS = 0x6A507BA8080fB3856d58b540623E4C9Eb98E4070;
}

library LayerZeroV2XplaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30216;
    uint256 internal constant CHAIN_ID = 37;
    string internal constant CHAIN_NAME = "xpla-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xF622DFb40bf7340DBCf1e5147D6CFD95d7c5cF1F);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x6167caAb5c3DA63311186db4D4E2596B20f557ec);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x5EB6b3Db915d29fc624b8a0e42AC029e36a1D86B;
    address internal constant EXECUTOR = 0x148f693af10ddfaE81cDdb36F4c93B31A90076e1;
    address internal constant DEAD_DVN = 0xADfAC55b334dE39B3eFBe88Bb1c992765e88Bb60;
    address internal constant LZ_EXECUTOR = 0x8DD9197E51dC6082853aD71D35912C53339777A7;
}

library LayerZeroV2DVNXplaMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x73DDc92E39aEdA95FEb8D3E0008016d9F1268c76;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xADfAC55b334dE39B3eFBe88Bb1c992765e88Bb60;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x2d24207F9C1F77B2E08F2C3aD430da18e355CF66;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x809CDE2AfcF8627312E87a6a7bbFFaB3F8F347c7;
    // TSS [tss]
    address internal constant DVN_TSS = 0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7;
    // Ubisoft [ubisoft]
    address internal constant DVN_UBISOFT = 0xa51cE237FaFA3052D5d3308Df38A024724Bb1274;
}

library LayerZeroV2XplaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40216;
    uint256 internal constant CHAIN_ID = 47;
    string internal constant CHAIN_NAME = "xpla-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1a2fd0712Ded46794022DdB16a282e798D22a7FB);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x13f78F780BB0ED02bC6df9FFA42fc2D8bB3F9aF5);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x826b93439CB1d53467566d04A9Ddc03F73614e59;
    address internal constant EXECUTOR = 0x43d28BEbaDF8B99C1aCF8c4961E4Fb895321EF23;
    address internal constant LZ_EXECUTOR = 0x5Dc8940645aCeAb31f7b3486A5855d0628Bad6d2;
}

library LayerZeroV2DVNXplaTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x0747D0dabb284E5FBaEEeA427BBa7b2fba507120;
    // TSS [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2ZamaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30397;
    uint256 internal constant CHAIN_ID = 261131;
    string internal constant CHAIN_NAME = "zama-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNZamaMainnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0xddaa92ce2d2faC3f7c5eae19136E438902Ab46cc;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x58249a2Ec05c1978bF21DF1f5eC1847e42455CF4;
}

library LayerZeroV2ZamaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40424;
    uint256 internal constant CHAIN_ID = 10901;
    string internal constant CHAIN_NAME = "zama-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNZamaTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2ZircuitMainnet {
    // Chain metadata
    uint32 internal constant EID = 30303;
    uint256 internal constant CHAIN_ID = 48900;
    string internal constant CHAIN_NAME = "zircuit-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0xcCE466a522984415bC91338c232d98869193D46e;
    address internal constant DEAD_DVN = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    address internal constant LZ_EXECUTOR = 0xa20DB4Ffe74A31D17fc24BD32a7DD7555441058e;
}

library LayerZeroV2DVNZircuitMainnet {
    // Canary [canary]
    address internal constant DVN_CANARY = 0xe552485d02EDd3067FE7FCbD4dd56BB1D3A998D2;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xdCdd4628F858b45260C31D6ad076bD2C3D3c2f73;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x9C061c9A4782294eeF65ef28Cb88233A987F4bdD;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Stakingcabin [stakingcabin]
    address internal constant DVN_STAKINGCABIN = 0x92ef4381a03372985985E70fb15E9F081E2e8D14;
    // TSS [tss]
    address internal constant DVN_TSS = 0x4b80F7d25c451D204b1C93D9bdf2aB3B04f3EA4a;
}

library LayerZeroV2ZircuitTestnet {
    // Chain metadata
    uint32 internal constant EID = 40275;
    uint256 internal constant CHAIN_ID = 48899;
    string internal constant CHAIN_NAME = "zircuit-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
    address internal constant LZ_EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}

library LayerZeroV2DVNZircuitTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
}

library LayerZeroV2ZkastarTestnet {
    // Chain metadata
    uint32 internal constant EID = 40266;
    uint256 internal constant CHAIN_ID = 6038361;
    string internal constant CHAIN_NAME = "zkastar-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x1d186C560281B8F1AF831957ED5047fD3AB902F9);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xd682ECF100f6F4284138AA925348633B0611Ae21;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNZkastarTestnet {
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x12523de19dc41c91F7d2093E0CFbB76b17012C8d;
}

library LayerZeroV2ZkatanaMainnet {
    // Chain metadata
    uint32 internal constant EID = 30257;
    uint256 internal constant CHAIN_ID = 3776;
    string internal constant CHAIN_NAME = "zkatana-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x2367325334447C5E1E0f1b3a6fB947b262F58312);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xc1B621b18187F74c8F6D52a6F709Dd2780C09821);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x01cA5322ce196568a62780C480bb0CC0B595Efec;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNZkatanaMainnet {
    // Horizen (deprecated) [horizen-labs]
    address internal constant DVN_HORIZEN = 0x0131A4CE592E5F5EabB08E62B1CEeB9bAfEBA036;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x01cA5322ce196568a62780C480bb0CC0B595Efec;
    // LayerZero Labs (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2ZkatanaTestnet {
    // Chain metadata
    uint32 internal constant EID = 40220;
    uint256 internal constant CHAIN_ID = 1261120;
    string internal constant CHAIN_NAME = "zkatana-testnet";

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;
}

library LayerZeroV2DVNZkatanaTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x145C041566B21Bec558B2A37F1a5Ff261aB55998;
}

library LayerZeroV2ZkconsensysMainnet {
    // Chain metadata
    uint32 internal constant EID = 30183;
    uint256 internal constant CHAIN_ID = 59144;
    string internal constant CHAIN_NAME = "zkconsensys-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x30F776548f9Aaad0935E2c03e930d10F15cE558f);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x32042142DD551b4EbE17B6FEd53131dd4b4eEa06);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xE22ED54177CE1148C557de74E4873619e6c6b205);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x2c83731aa397cd8E6bF8C77d9090b8845581d08c;
    address internal constant EXECUTOR = 0x0408804C5dcD9796F22558464E6fE5bDdF16A7c7;
    address internal constant DEAD_DVN = 0x1b368a0d7c57080a01054862114B5a42e54CBb98;
    address internal constant LZ_EXECUTOR = 0x59dAE6516D2fA7F21195adC0Cda14d819D21031C;
}

library LayerZeroV2DVNZkconsensysMainnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xF45742BbfaBCEe739eA2a2d0BA2dd140F1f2C6A3;
    // Canary [canary]
    address internal constant DVN_CANARY = 0xDA63525a0Fc42Bcc2cAD1dD28708d5ed11849347;
    // Deutsche Telekom [deutsche-telekom]
    address internal constant DVN_DEUTSCHE_TELEKOM = 0xa2d10677441230C4AeD58030e4EA6Ba7Bfd80393;
    // Frax [frax]
    address internal constant DVN_FRAX = 0xF4064220871e3B94Ca6aB3b0CEE8e29178bF47dE;
    // Google [google-cloud]
    address internal constant DVN_GOOGLE = 0xD56e4eAb23cb81f43168F9F45211Eb027b9aC7cc;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x1b368a0d7c57080a01054862114B5a42e54CBb98;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x129Ee430Cb2Ff2708CCADDBDb408a88Fe4FFd480;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x08670E326968d18D4fe359080b8E3eeeA552E867;
    // Muon [muon]
    address internal constant DVN_MUON = 0xA3858e2A9860C935Fc9586a617e9b2A674C3e4c8;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // P2P [p2p]
    address internal constant DVN_P2P = 0x0b239476A771834D846Cb505817baC3C391c338A;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA = 0x8ddF05F9A5c488b4973897E278B58895bF87Cb24;
    // Polyhedra [polyhedra-network]
    address internal constant DVN_POLYHEDRA_2 = 0xE014fe8c4d5C23EDB7AC4011F226e869ac7Ef5CC;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0xEf269BBaDB81DE86E4b3278fa1DAe1723545268b;
    // Superform [superform]
    address internal constant DVN_SUPERFORM = 0x7A205ED4e3d7f9d0777594501705D8CD405c3B05;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2ZkconsensysTestnet {
    // Chain metadata
    uint32 internal constant EID = 40157;
    uint256 internal constant CHAIN_ID = 59140;
    string internal constant CHAIN_NAME = "zkconsensys-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x56aC647e1863a473D295a1F02E3186Fb954Be4C4);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x2F2d67C251b53074578Af69f437f341670BAc9C7);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xbb4ad7b3a8d68Acb8e936db911d3ce86c8E27201;
    address internal constant EXECUTOR = 0xadFd7EBfdb23E9a1D22726D7D669A4EFF627E1F0;
    address internal constant LZ_EXECUTOR = 0x77Fc8a6302Ae07A2621c0af8d940B2860326D0Eb;
}

library LayerZeroV2DVNZkconsensysTestnet {
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0x411a883eF017dfdbF026E2d4a54371039ff8aA09;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2;
}

library LayerZeroV2ZklinkMainnet {
    // Chain metadata
    uint32 internal constant EID = 30301;
    uint256 internal constant CHAIN_ID = 810180;
    string internal constant CHAIN_NAME = "zklink-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x5c6cfF4b7C49805F8295Ff73C204ac83f3bC4AE7);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x01047601DB5E63b1574aae317BAd9C684E3C9056);
    address internal constant BLOCKED_MESSAGE_LIB = 0x3258287147FB7887d8A643006e26E19368057377;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x9AB633555E460C01f8c7b8ab24C88dD4986dD5A1);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x52fFEeaE5Ffa89D4b31c72F87ead3699FCB79e40;
    address internal constant EXECUTOR = 0x06e56abD0cb3C88880644bA3C534A498cA18E5C8;
    address internal constant DEAD_DVN = 0x4c1aC7b3C1223887dB9178d2437200B594EFFCf4;
    address internal constant LZ_EXECUTOR = 0xdF7D44c9EfA2DB43152D9F5eD8b755b4BEbd323B;
}

library LayerZeroV2DVNZklinkMainnet {
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x1253E268Bc04bB43CB96D2F7Ee858b8A1433Cf6D;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x0D1bc4Efd08940eB109Ef3040c1386d09B6334E0;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x27bB790440376dB53c840326263801FAFd9F0EE6;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x4c1aC7b3C1223887dB9178d2437200B594EFFCf4;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x04830f6deCF08Dec9eD6C3fCAD215245B78A59e1;
    // Nodesguru [nodes-guru]
    address internal constant DVN_NODESGURU = 0x3A5a74f863ec48c1769C4Ee85f6C3d70f5655E2A;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0xb6a4cC4a7d78FB37d668297D4c76fE750De626A3;
    // TSS [tss]
    address internal constant DVN_TSS_2 = 0x8b82a8DE13aF4bdAC68134494d83A7Aacc113165;
}

library LayerZeroV2ZklinkTestnet {
    // Chain metadata
    uint32 internal constant EID = 40283;
    uint256 internal constant CHAIN_ID = 810181;
    string internal constant CHAIN_NAME = "zklink-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xF3e37ca248Ff739b8d0BebCcEAe1eeB199223dba);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xf1A4f4FA1643ACf9f867b635A6d66a1990A3C217);
    address internal constant BLOCKED_MESSAGE_LIB = 0x110f15766B4E6266B550a041aD5c7EC918ADbE4a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x0e2c52BC2e119b1919e68f4F1874D4d30F6eF9fB);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x00B7b8ebA1c60183B0D2a10Fc3552902e8DD4f5f;
    address internal constant EXECUTOR = 0x0Cc6F5414996678Aa4763c3Bc66058B47813fa85;
    address internal constant LZ_EXECUTOR = 0xE18A1F5942b31F075B00B5F5E944F384B15abF83;
}

library LayerZeroV2DVNZklinkTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x6869b4348Fae6A911FDb5BaE5e0D153b2aA261f6;
}

library LayerZeroV2ZkpolygonMainnet {
    // Chain metadata
    uint32 internal constant EID = 30158;
    uint256 internal constant CHAIN_ID = 1101;
    string internal constant CHAIN_NAME = "zkpolygon-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x28B6140ead70cb2Fb669705b3598ffB4BEaA060b);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x581b26F362AD383f7B51eF8A165Efa13DDe398a4);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xbe0d08a85EeBFCC6eDA0A843521f7CBB1180D2e2;
    address internal constant EXECUTOR = 0xbE4fB271cfB7bcbB47EA9573321c7bfe309fc220;
    address internal constant DEAD_DVN = 0xbD8F7f0B165213Aaabb5a9eA0D572d5FD9829664;
    address internal constant LZ_EXECUTOR = 0x7eb3f67C1d501872295bC847a1346cB839D3b00f;
}

library LayerZeroV2DVNZkpolygonMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x12b4E588BeB7154519c0C6f737bB8cBa1D4E5BC7;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x651b1cf59014420112f8B7fCFDA840a16Ad763e0;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0xbD8F7f0B165213Aaabb5a9eA0D572d5FD9829664;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x488863D609F3A673875a914fBeE7508a1DE45eC6;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x7A7dDC46882220a075934f40380d3A7e1e87d409;
    // TSS [tss]
    address internal constant DVN_TSS = 0xA6Bf2bE6c60175601BF88217c75dD4b14ABB5FBb;
    // Ubisoft [ubisoft]
    address internal constant DVN_UBISOFT = 0xD074B6bbCBEC2f2B4c4265DE3D95e521f82bF669;
}

library LayerZeroV2ZkpolygonTestnet {
    // Chain metadata
    uint32 internal constant EID = 40158;
    uint256 internal constant CHAIN_ID = 1442;
    string internal constant CHAIN_NAME = "zkpolygon-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x1C4Fc6f1E44EAaef53aC701b7cc4c280F536fA75);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x08416c0eAa8ba93F907eC8D6a9cAb24821C53E64);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ce5d3B01A66B81c97F4334c85B287D381946b95;
    address internal constant EXECUTOR = 0x5B6c6177EF06A95cf54f6c8b547DCbb0eEc1708E;
    address internal constant LZ_EXECUTOR = 0xcd013a7AaF0729059F250B9804cCA02B479C656e;
}

library LayerZeroV2DVNZkpolygonTestnet {
    // BWare (deprecated) [bware-labs]
    address internal constant DVN_BWARE = 0x360b319FA74547A0fAc8cb74Dd7b6b3dBC5E5fC4;
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0x45e8F8c14e792E9d9cFf576b6B34150a403f3AD8;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x00C5C0B8e0f75aB862CbAaeCfff499dB555FBDD2;
}

library LayerZeroV2ZkpolygonsepTestnet {
    // Chain metadata
    uint32 internal constant EID = 40247;
    uint256 internal constant CHAIN_ID = 2442;
    string internal constant CHAIN_NAME = "zkpolygonsep-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x88B27057A9e00c5F05DDa29241027afF63f9e6e0);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
    address internal constant EXECUTOR = 0x9dB9Ca3305B48F196D18082e91cB64663b13d014;
    address internal constant LZ_EXECUTOR = 0xe1a12515F9AB2764b887bF60B923Ca494EBbB2d6;
}

library LayerZeroV2DVNZkpolygonsepTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x55c175DD5b039331dB251424538169D8495C18d1;
}

library LayerZeroV2ZksyncMainnet {
    // Chain metadata
    uint32 internal constant EID = 30165;
    uint256 internal constant CHAIN_ID = 324;
    string internal constant CHAIN_NAME = "zksync-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xd07C30aF3Ff30D96BDc9c6044958230Eb797DDBF);

    // Message libraries
    IMessageLib internal constant READ_LIB_1002 = IMessageLib(0x2C6FEDD430Be3c916292c3700144D4891c0FFedD);
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x07fD0e370B49919cA8dA0CE842B8177263c0E12c);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0FDdFC529B5912E1cBe38cCEdF8e226566E596D3;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x04830f6deCF08Dec9eD6C3fCAD215245B78A59e1);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x15a95848317CAAf5b83BfA1603497CdC20Fb84C1;
    address internal constant EXECUTOR = 0x664e390e672A811c12091db8426cBb7d68D5D8A6;
    address internal constant DEAD_DVN = 0x3F80157B0d0025C85f905b75b1Ee2386F6daf168;
    address internal constant LZ_EXECUTOR = 0x2Ce5f0d1Bfcb5b86ff94C2C580Ab65459e004D43;
}

library LayerZeroV2DVNZksyncMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x0D1bc4Efd08940eB109Ef3040c1386d09B6334E0;
    // BWare [bware-labs]
    address internal constant DVN_BWARE = 0x3A5a74f863ec48c1769C4Ee85f6C3d70f5655E2A;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x05Db3a229293C09F639a16526bB2481704716Df0;
    // Frax [frax]
    address internal constant DVN_FRAX = 0x2Eb85384CAd49A67eBd8e2AfB0f72B3F586bAF03;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x1253E268Bc04bB43CB96D2F7Ee858b8A1433Cf6D;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x3F80157B0d0025C85f905b75b1Ee2386F6daf168;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x620A9DF73D2F1015eA75aea1067227F9013f5C51;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xb183c2b91cf76cAd13602b32ADa2Fd273f19009C;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x62aA89bAd332788021F6F4F4Fb196D5Fe59C27a6;
    // TSS [tss]
    address internal constant DVN_TSS = 0xCB7aD38D45ab5bcF5880B0fa851263C29582c18a;
    // Ubisoft [ubisoft]
    address internal constant DVN_UBISOFT = 0x02A7Bf7298D17C12181578fF474c17C922aAd75A;
    // Zenrock (deprecated) [zenrock]
    address internal constant DVN_ZENROCK = 0xc4A1F52fDA034A9A5E1B3b27D14451d15776Fef6;
}

library LayerZeroV2ZksyncTestnet {
    // Chain metadata
    uint32 internal constant EID = 40165;
    uint256 internal constant CHAIN_ID = 280;
    string internal constant CHAIN_NAME = "zksync-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x82Bb8E5Ffd47Be07f0568C9aB0900DDA9D913aFD);

    // Message libraries
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x8e1660dF2F2051dc588DAb7647bd36C1e067fcda;
}

library LayerZeroV2DVNZksyncTestnet {
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x2DCC8cFb612fDbC0Fb657eA1B51A6F77b8b86448;
}

library LayerZeroV2ZksyncsepTestnet {
    // Chain metadata
    uint32 internal constant EID = 40305;
    uint256 internal constant CHAIN_ID = 300;
    string internal constant CHAIN_NAME = "zksyncsep-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0xe2Ef622A13e71D9Dd2BBd12cd4b27e1516FA8a09);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xaF862837316E00d2708Bd648c5FE87EdC7093799);
    address internal constant BLOCKED_MESSAGE_LIB = 0x9493A593F5Ee4dA6A18003783A71936243Ebc04f;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x5c123dB6f87CC0d7e320C5CC9EaAfD336B5f6eF3);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x2DCC8cFb612fDbC0Fb657eA1B51A6F77b8b86448;
    address internal constant EXECUTOR = 0x6E9bcFCbEdb7d1298E66cdE81ed9f39b1e12f935;
    address internal constant DEAD_DVN = 0x7750C0cBAE78Ddf514B9aEFeB2887143D3DBD203;
    address internal constant LZ_EXECUTOR = 0x07246FE876b4d283CA0Ca06A4144d6e160aCC739;
}

library LayerZeroV2DVNZksyncsepTestnet {
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x7750C0cBAE78Ddf514B9aEFeB2887143D3DBD203;
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0xF0326814d47C2A2A4E34Fc0AD066683B1100A875;
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO_2 = 0xF52D98B18451EB5501d9929Ec40A4CACCD2e7E38;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x605688C4caa80d17448e074FaA463ED7B7693d63;
}

library LayerZeroV2ZkverifyMainnet {
    // Chain metadata
    uint32 internal constant EID = 30386;
    uint256 internal constant CHAIN_ID = 1408;
    string internal constant CHAIN_NAME = "zkverify-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6F475642a6e85809B1c36Fa62763669b1b48DD5B);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xC39161c743D0307EB9BCc9FEF03eeb9Dc4802de7);
    address internal constant BLOCKED_MESSAGE_LIB = 0xC1cE56B2099cA68720592583C7984CAb4B6d7E7a;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xe1844c5D63a9543023008D332Bd3d2e6f1FE1043);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xAaB5A48CFC03Efa9cC34A2C1aAcCCB84b4b770e4;
    address internal constant EXECUTOR = 0x4208D6E27538189bB48E603D6123A94b8Abe0A0b;
    address internal constant DEAD_DVN = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    address internal constant LZ_EXECUTOR = 0x41Bdb4aa4A63a5b2Efc531858d3118392B1A1C3d;
}

library LayerZeroV2DVNZkverifyMainnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x6788f52439ACA6BFF597d3eeC2DC9a44B8FEE842;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x282b3386571f7f794450d5789911a9804FA346b4;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0x38179D3BFa6Ef1d69A8A7b0b671BA3D8836B2AE8;
}

library LayerZeroV2ZkverifyTestnet {
    // Chain metadata
    uint32 internal constant EID = 40414;
    uint256 internal constant CHAIN_ID = 1409;
    string internal constant CHAIN_NAME = "zkverify-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x3aCAAf60502791D199a5a5F0B173D78229eBFe32);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x45841dd1ca50265Da7614fC43A361e526c0e6160);
    address internal constant BLOCKED_MESSAGE_LIB = 0xa229B65CC2191BF60bc24eFcDa3487D7b5C0C9f0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xd682ECF100f6F4284138AA925348633B0611Ae21);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x6Ac7bdc07A0583A362F1497252872AE6c0A5F5B8;
    address internal constant EXECUTOR = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
    address internal constant DEAD_DVN = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant LZ_EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
}

library LayerZeroV2DVNZkverifyTestnet {
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0x3Bd9Af5Aa8C33b1e71C94cAe7c009C36413e08FD;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xa78A78a13074eD93aD447a26Ec57121f29E8feC2;
}

library LayerZeroV2ZoraMainnet {
    // Chain metadata
    uint32 internal constant EID = 30195;
    uint256 internal constant CHAIN_ID = 7777777;
    string internal constant CHAIN_NAME = "zora-mainnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xeDf930Cd8095548f97b21ec4E2dE5455a7382f04);
    address internal constant BLOCKED_MESSAGE_LIB = 0x1ccBf0db9C192d969de57E25B3fF09A25bb1D862;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0x57D9775eE8feC31F1B612a06266f599dA167d211);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x4d91d0Bd09d634A7f5a99b5eeEF3af6241E9Fe07;
    address internal constant EXECUTOR = 0x4f8B7a7a346Da5c467085377796e91220d904c15;
    address internal constant DEAD_DVN = 0x08aB92e05bA1dEC2C5bb876caa0Af60cAede1D17;
    address internal constant LZ_EXECUTOR = 0x1aCe9DD1BC743aD036eF2D92Af42Ca70A1159df5;
}

library LayerZeroV2DVNZoraMainnet {
    // BCW [bcw]
    address internal constant DVN_BCW = 0x7fe673201724925B5c477d4E1A4Bd3E954688cF5;
    // Canary [canary]
    address internal constant DVN_CANARY = 0x3AD8537B6936c596ca36D736063380810f7d3252;
    // Horizen [horizen-labs]
    address internal constant DVN_HORIZEN = 0xDd7B5E1dB4AaFd5C8EC3b764eFB8ed265Aa5445B;
    // LZDeadDVN (deprecated) [lz-dead-dvn]
    address internal constant DVN_LZ_DEAD = 0x08aB92e05bA1dEC2C5bb876caa0Af60cAede1D17;
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0xC1EC25A9e8a8DE5Aa346f635B33e5B74c4c081aF;
    // Luganodes [luganodes]
    address internal constant DVN_LUGANODES = 0x9FE36b305120556dbeefab58d58877D87b553DF5;
    // Nethermind [nethermind]
    address internal constant DVN_NETHERMIND = 0xa7b5189bcA84Cd304D8553977c7C614329750d99;
    // P2P [p2p]
    address internal constant DVN_P2P = 0xD1b5493e712081A6FBAb73116405590046668F6b;
    // Stargate [stargate]
    address internal constant DVN_STARGATE = 0x376839ad96f4f0CDfFe10AAF987aBaD3AF0A8901;
    // TSS [tss]
    address internal constant DVN_TSS = 0xcb566e3B6934Fa77258d68ea18E931fa75e1aaAa;
}

library LayerZeroV2ZoraTestnet {
    // Chain metadata
    uint32 internal constant EID = 40195;
    uint256 internal constant CHAIN_ID = 999;
    string internal constant CHAIN_NAME = "zora-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0x87FE14Af115F3b14F7d91Be426C0213a24AE9498);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xE321800e1D8277d2bf36A0979cd281c2B6760313);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0000000000000000000000000000000000000000;

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0xEA07821eF5c98e226fC5B9d53B10d75333d792C8;
    address internal constant EXECUTOR = 0x5C987191efF6ed62dFb369fA26f9d78e3F87f9A9;
    address internal constant LZ_EXECUTOR = 0xBc0C24E6f24eC2F1fd7E859B8322A1277F80aaD5;
}

library LayerZeroV2DVNZoraTestnet {
    // LayerZero (deprecated) [layerzero-labs]
    address internal constant DVN_LAYERZERO = 0xd52e4d3CdaD28D7714Ab6d56a7C9Aa02ee45aB7f;
    // TSS (deprecated) [tss]
    address internal constant DVN_TSS = 0x6C7Ab2202C98C4227C5c46f1417D81144DA716Ff;
}

library LayerZeroV2ZorasepTestnet {
    // Chain metadata
    uint32 internal constant EID = 40249;
    uint256 internal constant CHAIN_ID = 999999999;
    string internal constant CHAIN_NAME = "zorasep-testnet";

    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 =
        ILayerZeroEndpointV2(0x6EDCE65403992e310A62460808c4b910D972f10f);

    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(0xF49d162484290EAeAd7bb8C2c7E3a6f8f52e32d6);
    address internal constant BLOCKED_MESSAGE_LIB = 0x0C77d8d771aB35E2E184E7cE127f19CEd31FF8C0;
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(0xC1868e054425D378095A003EcbA3823a5D0135C9);

    // Other contracts
    address internal constant ENDPOINT_V2_VIEW = 0x88B27057A9e00c5F05DDa29241027afF63f9e6e0;
    address internal constant EXECUTOR = 0x4Cf1B3Fa61465c2c907f82fC488B43223BA0CF93;
    address internal constant LZ_EXECUTOR = 0x4dFa426aEAA55E6044d2b47682842460a04aF45c;
}

library LayerZeroV2DVNZorasepTestnet {
    // LayerZero Labs [layerzero-labs]
    address internal constant DVN_LAYERZERO_LABS = 0x701f3927871EfcEa1235dB722f9E608aE120d243;
}
