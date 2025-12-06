// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";

import {STGProtocol, ISTGProtocol} from "../../../src/generated/STGProtocol.sol";
import {LZAddressContext} from "../../../src/helpers/LZAddressContext.sol";

import {LZForkTest} from "../../utils/LZForkTest.sol";

// LayerZero/Stargate imports
import {IOFT, SendParam, MessagingFee} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

/// @title Stargate Fork Test Example
/// @notice Demonstrates how to use the Stargate address book for fork testing
/// @dev Shows IOFT interface usage with StargatePool and StargateOFT contracts
contract StargateForkTest is LZForkTest {
    STGProtocol stg;
    LZAddressContext ctx;

    // Test chains
    string constant ARBITRUM = "arbitrum-mainnet";
    string constant BASE = "base-mainnet";

    // Fork IDs
    mapping(string => uint256) forks;

    function setUp() public {
        // Create helpers
        setUpForkHelper();
        stg = new STGProtocol();
        ctx = _forkHelperCtx;

        // Make persistent across forks
        vm.makePersistent(address(stg));
        vm.makePersistent(address(ctx));
        vm.makePersistent(address(ctx.protocol()));
        vm.makePersistent(address(ctx.protocol().workers()));
    }

    /// @notice Test that Stargate USDC pool exists on Arbitrum
    function testFork_stargateUSDCPoolExists() public {
        // Create fork
        forks[ARBITRUM] = _createFork("arbitrum-mainnet");
        vm.selectFork(forks[ARBITRUM]);

        // Get USDC asset from Stargate address book
        ISTGProtocol.StargateAsset memory usdc = stg.getAsset(ARBITRUM, "USDC");

        console.log("=== Stargate USDC on Arbitrum ===");
        console.log("OFT (StargatePool):", usdc.oft);
        console.log("Token:", usdc.token);
        console.log("Symbol:", usdc.symbol);
        console.log("Decimals:", usdc.decimals);
        console.log("Shared Decimals:", usdc.sharedDecimals);
        console.log("Is Pool:", usdc.stargateType == ISTGProtocol.StargateType.POOL);

        // Verify it's a Pool (native chain)
        assertTrue(usdc.stargateType == ISTGProtocol.StargateType.POOL, "Should be StargatePool");
        assertTrue(usdc.oft != address(0), "OFT address should not be zero");
        assertTrue(usdc.token != address(0), "Token address should not be zero");

        // Verify the contract implements IOFT interface
        IOFT stargate = IOFT(usdc.oft);

        // Check token() returns the underlying token
        address underlyingToken = stargate.token();
        assertEq(underlyingToken, usdc.token, "Token addresses should match");

        console.log("=== IOFT Interface Verified ===");
    }

    /// @notice Test quoting a cross-chain USDC transfer
    function testFork_quoteStargateTransfer() public {
        // Create fork
        forks[ARBITRUM] = _createFork("arbitrum-mainnet");
        vm.selectFork(forks[ARBITRUM]);

        // Get USDC asset
        ISTGProtocol.StargateAsset memory usdc = stg.getAsset(ARBITRUM, "USDC");
        IOFT stargate = IOFT(usdc.oft);

        // Get Base EID from LayerZero address book
        ctx.setChain("base-mainnet");
        uint32 baseEid = ctx.getCurrentEID();

        // Build send parameters (Taxi mode - immediate, supports composability)
        SendParam memory sendParam = SendParam({
            dstEid: baseEid,
            to: bytes32(uint256(uint160(address(this)))),
            amountLD: 100 * 10 ** usdc.decimals, // 100 USDC
            minAmountLD: 99 * 10 ** usdc.decimals, // 1% slippage
            extraOptions: "",
            composeMsg: "",
            oftCmd: "" // Empty for Taxi mode
        });

        // Quote the transfer
        MessagingFee memory fee = stargate.quoteSend(sendParam, false);

        console.log("=== Quote: 100 USDC Arbitrum -> Base ===");
        console.log("Native Fee (wei):", fee.nativeFee);
        console.log("LZ Token Fee:", fee.lzTokenFee);

        assertTrue(fee.nativeFee > 0, "Native fee should be non-zero");
    }

    /// @notice Test that StargateOFT exists on Hydra chain (Bera)
    function testFork_hydraOFTOnBera() public {
        // Check if Bera is supported
        if (!stg.assetExists("bera", "USDC.e")) {
            console.log("Skipping: USDC.e not found on bera");
            return;
        }

        // Get USDC.e asset on Bera (Hydra chain)
        ISTGProtocol.StargateAsset memory usdce = stg.getAsset("bera", "USDC.e");

        console.log("=== Stargate USDC.e on Bera (Hydra) ===");
        console.log("OFT (StargateOFT):", usdce.oft);
        console.log("Token:", usdce.token);
        console.log("Symbol:", usdce.symbol);
        console.log("Is OFT:", usdce.stargateType == ISTGProtocol.StargateType.OFT);

        // Verify it's an OFT (Hydra chain)
        assertTrue(usdce.stargateType == ISTGProtocol.StargateType.OFT, "Should be StargateOFT");
        assertTrue(stg.isHydraChain("bera", "USDC.e"), "Bera should be a Hydra chain for USDC.e");
    }

    /// @notice Test listing all assets on a chain
    function testFork_listAssetsOnChain() public {
        ISTGProtocol.StargateAsset[] memory assets = stg.getAssetsForChainName(ARBITRUM);

        console.log("=== Stargate Assets on Arbitrum ===");
        console.log("Total assets:", assets.length);

        for (uint256 i = 0; i < assets.length; i++) {
            string memory typeStr = assets[i].stargateType == ISTGProtocol.StargateType.POOL ? "POOL" : "OFT";
            console.log(string.concat("  ", assets[i].symbol, " (", typeStr, "): "), assets[i].oft);
        }

        assertTrue(assets.length > 0, "Should have at least one asset");
    }

    /// @notice Test getting TokenMessaging address
    function testFork_tokenMessaging() public {
        address tokenMessaging = stg.getTokenMessaging(ARBITRUM);

        console.log("=== TokenMessaging on Arbitrum ===");
        console.log("Address:", tokenMessaging);

        assertTrue(tokenMessaging != address(0), "TokenMessaging should not be zero");
    }

    /// @notice Test reverse DVN lookup (new feature)
    function testFork_reverseDVNLookup() public {
        // Create fork
        forks[ARBITRUM] = _createFork("arbitrum-mainnet");
        vm.selectFork(forks[ARBITRUM]);

        ctx.setChain("arbitrum-mainnet");

        // Get a DVN address
        address lzLabsDVN = ctx.getDVNByName("LayerZero Labs");

        // Reverse lookup - get name from address
        string memory dvnName = ctx.getDVNName(lzLabsDVN);

        console.log("=== Reverse DVN Lookup ===");
        console.log("DVN Address:", lzLabsDVN);
        console.log("DVN Name:", dvnName);

        assertEq(dvnName, "LayerZero Labs", "Should resolve to LayerZero Labs");

        // Cross-chain reverse lookup
        string memory dvnNameForArb = ctx.getDVNNameForChainName(lzLabsDVN, "arbitrum-mainnet");
        assertEq(dvnNameForArb, "LayerZero Labs", "Cross-chain lookup should also work");
    }
}

