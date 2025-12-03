# LayerZero Address Book

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Foundry](https://img.shields.io/badge/Built%20with-Foundry-FFDB1C.svg)](https://getfoundry.sh/)

**The complete Foundry-native solution for building LayerZero V2 OApps and OFTs without any JavaScript tooling.**

One `forge install` gets you everything you need: LayerZero contracts, protocol addresses, testing utilities, and deployment helpers—all in pure Solidity.

## Why This Library?

**Building LayerZero OApps with pure Foundry used to require:**
- Manual address lookups from docs
- Hardcoding endpoint addresses
- Complex dependency management
- JavaScript/npm for deployment and configuration

**With lz-address-book:**
- **One install**: `forge install LayerZero-Labs/lz-address-book`
- **Context-Aware**: Set chain context once, fetch all addresses
- **Fork Testing Ready**: Single-line persistence across fork switches
- **Zero JavaScript**: Pure Solidity workflows

## Installation

```bash
forge install LayerZero-Labs/lz-address-book
```

Add these remappings to `remappings.txt` (create the file if it doesn't exist):

```txt
@layerzerolabs/lz-evm-protocol-v2/=lib/lz-address-book/lib/LayerZero-v2/packages/layerzero-v2/evm/protocol/
@layerzerolabs/lz-evm-messagelib-v2/=lib/lz-address-book/lib/LayerZero-v2/packages/layerzero-v2/evm/messagelib/
@layerzerolabs/oft-evm/=lib/lz-address-book/lib/devtools/packages/oft-evm/
@layerzerolabs/oapp-evm/=lib/lz-address-book/lib/devtools/packages/oapp-evm/
@openzeppelin/contracts/=lib/lz-address-book/lib/openzeppelin-contracts/contracts/
solidity-bytes-utils/=lib/lz-address-book/lib/solidity-bytes-utils/
forge-std/=lib/forge-std/src/
lz-address-book/=lib/lz-address-book/src/
```

Verify installation:

```bash
forge build  # Should complete in ~2 seconds
```

---

## Quick Start

Create `test/QuickStart.t.sol` to verify everything works:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test, console} from "forge-std/Test.sol";
import {LZAddressContext} from "lz-address-book/helpers/LZAddressContext.sol";

contract QuickStartTest is Test {
    function test_QuickStart() public {
        LZAddressContext ctx = new LZAddressContext();
        
        // Set context by chain name, EID, or chain ID
        ctx.setChain("arbitrum-mainnet");

        // Fetch addresses
        address endpoint = ctx.getEndpointV2();
        address dvn = ctx.getDVNByName("LayerZero Labs");

        console.log("Endpoint:", endpoint);
        console.log("DVN:", dvn);

        // Cross-chain lookups (no context switch needed)
        uint32 baseEid = ctx.getEidForChainName("base-mainnet");
        address baseDvn = ctx.getDVNForChainName("LayerZero Labs", "base-mainnet");

        // Verify
        assertEq(endpoint, 0x1a44076050125825900e736c501f859c50fE728c);
        assertEq(baseEid, 30184);
        assertNotEq(baseDvn, address(0));
    }
}
```

Run the test:

```bash
forge test --match-test test_QuickStart -vv
```

Expected output:

```
[PASS] test_QuickStart()
Logs:
  Endpoint: 0x1a44076050125825900e736c501f859c50fE728c
  DVN: 0x2f55C492897526677C5B68fb199ea31E2c126416
```

---

## Setting Chain Context

Three ways to set the current chain:

```solidity
// 1. By chain name (most readable)
ctx.setChain("arbitrum-mainnet");

// 2. By LayerZero EID (useful when working with LZ messages)
ctx.setChainByEid(30110);

// 3. By native chain ID (useful with block.chainid)
ctx.setChainByChainId(42161);
```

---

## DVN Discovery

Discover available DVNs programmatically:

```solidity
// Get all DVN names across all chains
string[] memory allDVNs = ctx.getAvailableDVNs();
// Returns: ["LayerZero Labs", "Nethermind", "Google Cloud", ...]

// Get DVNs available on current chain with addresses
ctx.setChain("arbitrum-mainnet");
(string[] memory names, address[] memory addrs) = ctx.getDVNsForCurrentChain();

// Get DVNs for any chain (no context switch needed)
(names, addrs) = ctx.getDVNsForChainName("base-mainnet");

// Check if a specific DVN is available
bool available = ctx.isDVNAvailable("LayerZero Labs");  // true
```

Invalid DVN names will revert with a helpful error:
```solidity
ctx.getDVNByName("LayerZero labs");  // Reverts: "DVN not found on arbitrum-mainnet: LayerZero labs"
```

---

## Tutorial Scripts

Complete examples in `scripts/examples/`:

| Script | Description |
|--------|-------------|
| `DeployOFT.s.sol` | Deploy OFT to any supported chain |
| `ConfigureByChainId.s.sol` | Configure using native chain IDs (e.g., 42161 for Arbitrum) |
| `ConfigureByChainName.s.sol` | Configure using chain names (e.g., "arbitrum-mainnet") |
| `ConfigureByEid.s.sol` | Configure using LayerZero EIDs (e.g., 30110 for Arbitrum) |

### Workflow

```bash
# 1. Deploy on each chain
CHAIN_NAME=arbitrum-mainnet forge script scripts/examples/DeployOFT.s.sol --broadcast
CHAIN_NAME=base-mainnet forge script scripts/examples/DeployOFT.s.sol --broadcast

# 2. Configure each chain (sets DVNs, executor, libraries)
forge script scripts/examples/ConfigureByChainName.s.sol --rpc-url arbitrum --broadcast
forge script scripts/examples/ConfigureByChainName.s.sol --rpc-url base --broadcast
```

---

## Scripting Patterns

The address book enables generic multi-chain scripts that work across all supported chains without hardcoding addresses.

### Single-Chain Scripts

For scripts targeting a specific chain, use context lookups:

```solidity
LZAddressContext ctx = new LZAddressContext();
ctx.setChainByChainId(block.chainid);  // Auto-detect current chain

address endpoint = ctx.getEndpointV2();
address[] memory dvns = ctx.getSortedDVNs(dvnNames);  // Pre-sorted for UlnConfig
```

### Multi-Chain Configuration

For deploying OApps across multiple chains, define all configurations once and run the same script on each chain:

```solidity
// Define all chains in one place
ChainConfig[] memory chains = new ChainConfig[](4);
chains[0] = ChainConfig({chainId: 1, oapp: 0x..., confirmations: 15});
chains[1] = ChainConfig({chainId: 42161, oapp: 0x..., confirmations: 1});
chains[2] = ChainConfig({chainId: 8453, oapp: 0x..., confirmations: 1});
chains[3] = ChainConfig({chainId: 10, oapp: 0x..., confirmations: 1});

// Auto-detect which chain we're on
uint256 currentChainId = block.chainid;
int256 localIndex = findChainIndex(chains, currentChainId);

// Prepare and execute transactions for THIS chain only
ctx.setChainByChainId(currentChainId);
// ... build txs using ctx lookups
```

Then run the same script on each chain:

```bash
forge script ConfigureByChainId --rpc-url ethereum --broadcast --account deployer
forge script ConfigureByChainId --rpc-url arbitrum --broadcast --account deployer
forge script ConfigureByChainId --rpc-url base --broadcast --account deployer
forge script ConfigureByChainId --rpc-url optimism --broadcast --account deployer
```

See `scripts/examples/ConfigureByChainId.s.sol` for a complete implementation using chain IDs,
or `ConfigureByChainName.s.sol` / `ConfigureByEid.s.sol` for alternative lookup methods.

> **Note on Foundry Multi-Chain Broadcasting**
> 
> Foundry supports broadcasting to multiple chains in a single script run. The key constraint is that **all transactions for one chain must complete before switching to another**. You can switch RPCs between broadcast blocks:
> 
> ```solidity
> // Configure Chain A
> vm.createSelectFork("arbitrum");
> vm.startBroadcast();
> // ... all Arbitrum txs
> vm.stopBroadcast();
> 
> // Configure Chain B  
> vm.createSelectFork("base");
> vm.startBroadcast();
> // ... all Base txs
> vm.stopBroadcast();
> ```
> 
> Alternatively, run the same script once per chain with `--rpc-url` for simpler CI/CD pipelines.

---

## Fork Testing

Test cross-chain logic against real mainnet state:

```solidity
import {Test} from "forge-std/Test.sol";
import {LZAddressContext} from "lz-address-book/helpers/LZAddressContext.sol";

contract MyOAppForkTest is Test {
    LZAddressContext ctx;
    mapping(string => uint256) forks;

    function setUp() public {
        ctx = new LZAddressContext();
        ctx.makePersistent(vm);  // Persists across fork switches
        
        // Create forks
        forks["arbitrum-mainnet"] = vm.createFork(_getRpc("arbitrum-mainnet"));
        forks["base-mainnet"] = vm.createFork(_getRpc("base-mainnet"));
        
        // Deploy on Arbitrum
        vm.selectFork(forks["arbitrum-mainnet"]);
        ctx.setChain("arbitrum-mainnet");
        arbOApp = new MyOApp(ctx.getEndpointV2(), address(this));
        
        // Deploy on Base
        vm.selectFork(forks["base-mainnet"]);
        ctx.setChain("base-mainnet");
        baseOApp = new MyOApp(ctx.getEndpointV2(), address(this));
    }
    
    function _getRpc(string memory chainName) internal view returns (string memory) {
        // Try foundry.toml first
        try vm.rpcUrl(chainName) returns (string memory url) {
            if (bytes(url).length > 0) return url;
        } catch {}
        
        // Fall back to address book metadata
        return ctx.getProtocolAddressesForChainName(chainName).rpcUrls[0];
    }
}
```

Or use the `LZTest` base contract for even simpler setup:

```solidity
import {LZTest} from "lz-address-book/framework/LZTest.sol";

contract MyOAppForkTest is LZTest {
    function setUp() public {
        // ctx is already available and persistent
        createAndSelectFork("arbitrum-mainnet", "https://arb1.arbitrum.io/rpc");
        arbOApp = new MyOApp(ctx.getEndpointV2(), address(this));
        
        createAndSelectFork("base-mainnet", "https://mainnet.base.org");
        baseOApp = new MyOApp(ctx.getEndpointV2(), address(this));
        
        // Wire peers in one call
        wireOAppsBidirectional("arbitrum-mainnet", "base-mainnet", address(arbOApp), address(baseOApp));
    }
}
```

---

## Static Access

For single-chain scripts where you know the target at compile time:

```solidity
import {LayerZeroV2ArbitrumMainnet} from "lz-address-book/generated/LZAddresses.sol";

address endpoint = address(LayerZeroV2ArbitrumMainnet.ENDPOINT_V2);
uint32 eid = LayerZeroV2ArbitrumMainnet.EID;
```

---

## API Naming Convention

All interfaces follow a standardized naming convention for consistency:

| Pattern | Use Case | Example |
|---------|----------|---------|
| `get{Object}()` | Primary lookup (default identifier) | `getProtocolAddresses(eid)` |
| `get{Object}By{Identifier}()` | Single item by specific key | `getAssetByEid(eid, symbol)` |
| `get{Objects}For{Scope}()` | Multiple items for a scope | `getDVNsForEid(eid)` |
| `is{Identifier}Supported()` | Boolean support check | `isEidSupported(eid)` |
| `{object}Exists()` | Existence check | `assetExists(chain, symbol)` |

### Key Distinctions

- **`By`** = lookup **one item** using that identifier as a key
- **`For`** = get **all items** belonging to that scope/chain

### Primary Identifiers by Contract

| Contract | Primary Identifier | Reason |
|----------|-------------------|--------|
| `ILZProtocol` | EID (uint32) | LayerZero's native identifier |
| `ILZWorkers` | EID + DVN name | DVNs indexed by chain |
| `ISTGProtocol` | Chain name | Stargate uses human-readable names |
| `ILZAddressContext` | Stateful (current chain) | Simplifies multi-step lookups |

---

## API Reference

### LZAddressContext

#### Chain Context

| Method | Description |
|--------|-------------|
| `setChain(string)` | Set context by chain name |
| `setChainByEid(uint32)` | Set context by LayerZero endpoint ID |
| `setChainByChainId(uint256)` | Set context by native chain ID |
| `makePersistent(Vm)` | Persist context across fork switches |

#### Current Chain Getters

| Method | Description |
|--------|-------------|
| `getCurrentChainName()` | Get current chain name |
| `getCurrentEID()` | Get current chain EID |
| `getCurrentChainId()` | Get current chain's native chain ID |
| `getEndpointV2()` | Get EndpointV2 for current chain |
| `getSendUln302()` | Get SendUln302 for current chain |
| `getReceiveUln302()` | Get ReceiveUln302 for current chain |
| `getExecutor()` | Get Executor for current chain |
| `getDVNByName(string)` | Get DVN by name for current chain (reverts if not found) |

#### DVN Discovery & Batch Lookup

| Method | Description |
|--------|-------------|
| `getAvailableDVNs()` | Get all DVN names across all chains |
| `getDVNsForCurrentChain()` | Get DVN names and addresses for current chain |
| `getDVNsForChainName(string)` | Get DVN names and addresses for any chain |
| `getDVNs(string[])` | Get multiple DVN addresses by name (batch lookup) |
| `getSortedDVNs(string[])` | Get multiple DVN addresses sorted ascending (for UlnConfig) |
| `isDVNAvailable(string)` | Check if DVN exists on current chain |

#### Chain Discovery

| Method | Description |
|--------|-------------|
| `getSupportedChainNames()` | Get all supported chain names |
| `getSupportedEids()` | Get all supported LayerZero endpoint IDs |

#### Cross-Chain Lookups (no context switch)

| Method | Description |
|--------|-------------|
| `getEidForChainName(string)` | Get EID for any chain |
| `getEndpointForChainName(string)` | Get endpoint for any chain |
| `getExecutorForChainName(string)` | Get executor for any chain |
| `getSendLibForChainName(string)` | Get send library for any chain |
| `getReceiveLibForChainName(string)` | Get receive library for any chain |
| `getDVNForChainName(string, string)` | Get DVN for any chain |
| `getProtocolAddressesForChainName(string)` | Get all addresses for any chain |

#### Validation

| Method | Description |
|--------|-------------|
| `isChainNameSupported(string)` | Check if chain name is supported |
| `isEidSupported(uint32)` | Check if EID is supported |
| `isChainIdSupported(uint256)` | Check if chain ID is supported |

#### Reverse DVN Lookup

| Method | Description |
|--------|-------------|
| `getDVNName(address)` | Get DVN provider name from address on current chain |
| `getDVNNameForChainName(address, string)` | Get DVN provider name from address on any chain |

#### Utilities

| Method | Description |
|--------|-------------|
| `addressToBytes32(address)` | Convert address to bytes32 |
| `bytes32ToAddress(bytes32)` | Convert bytes32 to address |

### LZUtils

| Function | Description |
|----------|-------------|
| `addressToBytes32(address)` | Convert address to bytes32 |
| `bytes32ToAddress(bytes32)` | Convert bytes32 to address |
| `isZeroAddress(address)` | Check if address is zero |

### DVNValidator

| Method | Description |
|--------|-------------|
| `isDVNAvailableOnBoth(string, string, string)` | Check DVN exists on both chains |
| `getCommonDVNs(string, string)` | Get DVNs available on both chains |
| `getDVNAvailability(string, string, string)` | Get detailed DVN availability info |

### STGProtocol (Stargate)

#### Lookup by Chain Name

| Method | Description |
|--------|-------------|
| `getAsset(string, string)` | Get Stargate asset by chain name and symbol |
| `getAssetsForChainName(string)` | Get all Stargate assets on a chain |
| `getTokenMessaging(string)` | Get TokenMessaging address for a chain |

#### Lookup by EID

| Method | Description |
|--------|-------------|
| `getAssetByEid(uint32, string)` | Get Stargate asset by LayerZero EID and symbol |
| `getAssetsForEid(uint32)` | Get all Stargate assets by EID |
| `getTokenMessagingByEid(uint32)` | Get TokenMessaging address by EID |

#### Lookup by Chain ID

| Method | Description |
|--------|-------------|
| `getAssetByChainId(uint256, string)` | Get Stargate asset by native chain ID and symbol |
| `getAssetsForChainId(uint256)` | Get all Stargate assets by chain ID |
| `getTokenMessagingByChainId(uint256)` | Get TokenMessaging address by chain ID |

#### Chain Name Resolution

| Method | Description |
|--------|-------------|
| `getChainNameByEid(uint32)` | Get Stargate chain name from EID |
| `getChainNameByChainId(uint256)` | Get Stargate chain name from chain ID |

#### Discovery & Validation

| Method | Description |
|--------|-------------|
| `getSupportedSymbols()` | Get all supported asset symbols |
| `getSupportedChainNames()` | Get all chains with Stargate deployments |
| `isChainNameSupported(string)` | Check if chain name has Stargate deployments |
| `isHydraChain(string, string)` | Check if asset is StargateOFT (Hydra) |
| `assetExists(string, string)` | Check if asset exists on chain |
| `assetExistsByEid(uint32, string)` | Check if asset exists by EID |
| `assetExistsByChainId(uint256, string)` | Check if asset exists by chain ID |
| `isEidSupported(uint32)` | Check if EID has Stargate deployments |
| `isChainIdSupported(uint256)` | Check if chain ID has Stargate deployments |

---

## Stargate Integration

The address book includes Stargate V2 pool and OFT addresses for cross-chain asset transfers.

### StargatePool vs StargateOFT

- **StargatePool**: Native asset chains with deep liquidity (lock/unlock mechanism)
- **StargateOFT**: Hydra chains with minted representations (mint/burn mechanism)

Both implement the `IOFT` interface for cross-chain transfers.

### Quick Start

```solidity
import {STGProtocol, ISTGProtocol} from "lz-address-book/generated/STGProtocol.sol";
import {IOFT, SendParam} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

STGProtocol stg = new STGProtocol();

// Get USDC on Arbitrum (by chain name, EID, or chain ID)
ISTGProtocol.StargateAsset memory usdc = stg.getAsset("arbitrum-mainnet", "USDC");
// OR: stg.getAssetByEid(30110, "USDC");
// OR: stg.getAssetByChainId(42161, "USDC");

// All Stargate contracts implement IOFT
IOFT stargate = IOFT(usdc.oft);

// Quote a transfer
SendParam memory sendParam = SendParam({
    dstEid: 30184,  // Base
    to: bytes32(uint256(uint160(recipient))),
    amountLD: 100e6,
    minAmountLD: 99e6,
    extraOptions: "",
    composeMsg: "",
    oftCmd: ""  // Taxi mode
});

MessagingFee memory fee = stargate.quoteSend(sendParam, false);
```

### Static Access

```solidity
import {StargateArbitrumMainnet} from "lz-address-book/generated/STGAddresses.sol";

address usdcPool = StargateArbitrumMainnet.USDC_OFT;
address usdcToken = StargateArbitrumMainnet.USDC_TOKEN;
```

---

## Testing

```bash
# Run all tests
forge test

# Run fork tests (requires RPC)
forge test --match-path "test/**/fork/*.sol"

# Run specific example
forge test --match-contract MyOFTForkTest
```

## Supported Chains

100+ EVM chains including:
- **Mainnets**: Ethereum, Arbitrum, Base, Optimism, Polygon, Avalanche, BSC, etc.
- **Testnets**: Sepolia, Arbitrum Sepolia, Base Sepolia, etc.

## Contributing

1. **Reporting Issues**: Open an issue for incorrect addresses or missing chains
2. **Regenerating Addresses**: Run `python scripts/lz-generate-addresses.py`
3. **Adding Tests**: Add tests for new usage patterns

## License

MIT License - see [LICENSE](LICENSE) for details.
