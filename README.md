# LayerZero Address Book

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Foundry](https://img.shields.io/badge/Built%20with-Foundry-FFDB1C.svg)](https://getfoundry.sh/)

**All LayerZero V2 addresses in pure Solidity.** No JavaScript, no address lookups—just `forge install` and build.

---

## Motivation

LayerZero's official [devtools](https://github.com/LayerZero-Labs/devtools) are JavaScript/TypeScript-centric, designed around Hardhat workflows. This works well for teams in that ecosystem, but Foundry developers face friction:

| Without this library | With this library |
|---------------------|-------------------|
| Copy addresses from docs for each chain | `ctx.getEndpointV2()` |
| Hardcode DVN addresses per network | `ctx.getDVNByName("LayerZero Labs")` |
| Manually track 100+ chain deployments | Auto-generated from LayerZero metadata |
| Mix JavaScript tooling with Solidity | Pure `forge install` workflow |
| Separate config files per chain | Single script works on any chain |

This library brings first-class LayerZero support to Foundry by:

1. **Bundling all dependencies** — LayerZero V2 protocol, OFT/OApp contracts, and OpenZeppelin in one install
2. **Embedding all addresses** — Endpoints, message libraries, executors, and DVNs for every supported chain
3. **Providing context-aware lookups** — Set your chain once, fetch any address without hardcoding

The result: write deployment scripts and tests in pure Solidity that work across all LayerZero-supported chains.

---

## Installation

> **Prerequisites**:
> - [Install Foundry](https://getfoundry.sh/introduction/installation) if you haven't already
> - Be in a Foundry project directory (run `forge init my-project && cd my-project` to create one)
>
> New to Foundry? See the [Getting Started guide](https://getfoundry.sh/introduction/getting-started).

```bash
forge install LayerZero-Labs/lz-address-book
```

Add these remappings to `remappings.txt` in your project root:

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

Verify it works:

```bash
forge build
```

---

## Usage in Tests

Use `LZAddressContext` to get addresses dynamically based on the current chain:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test, console} from "forge-std/Test.sol";
import {LZAddressContext} from "lz-address-book/helpers/LZAddressContext.sol";

contract MyTest is Test {
    LZAddressContext ctx;

    function setUp() public {
        ctx = new LZAddressContext();
    }

    function test_getAddresses() public {
        // Set chain context (pick one method)
        ctx.setChain("arbitrum-mainnet");       // by name
        // ctx.setChainByEid(30110);            // by LayerZero EID
        // ctx.setChainByChainId(42161);        // by native chain ID

        // Get addresses
        address endpoint = ctx.getEndpointV2();
        address sendLib = ctx.getSendUln302();
        address receiveLib = ctx.getReceiveUln302();
        address executor = ctx.getExecutor();
        address dvn = ctx.getDVNByName("LayerZero Labs");

        console.log("Endpoint:", endpoint);
        console.log("DVN:", dvn);

        // Verify
        assertEq(endpoint, 0x1a44076050125825900e736c501f859c50fE728c);
    }
}
```

### Fork Testing

For multi-chain fork tests, persist the context across fork switches:

```solidity
function setUp() public {
    ctx = new LZAddressContext();
    ctx.makePersistent(vm);  // Survives vm.selectFork()

    // Create forks
    uint256 arbFork = vm.createFork(vm.rpcUrl("arbitrum-mainnet"));
    uint256 baseFork = vm.createFork(vm.rpcUrl("base-mainnet"));

    // Deploy on Arbitrum
    vm.selectFork(arbFork);
    ctx.setChain("arbitrum-mainnet");
    arbOFT = new MyOFT(ctx.getEndpointV2(), owner);

    // Deploy on Base
    vm.selectFork(baseFork);
    ctx.setChain("base-mainnet");
    baseOFT = new MyOFT(ctx.getEndpointV2(), owner);
}
```

See [`test/examples/MyOFT.t.sol`](test/examples/MyOFT.t.sol) for a complete unit test example.

---

## Usage in Scripts

Auto-detect the current chain and fetch addresses:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script, console} from "forge-std/Script.sol";
import {LZAddressContext} from "lz-address-book/helpers/LZAddressContext.sol";
import {MyOFT} from "../src/MyOFT.sol";

contract DeployMyOFT is Script {
    function run() external {
        LZAddressContext ctx = new LZAddressContext();
        ctx.setChainByChainId(block.chainid);  // Auto-detect from RPC

        address endpoint = ctx.getEndpointV2();

        vm.startBroadcast();
        MyOFT oft = new MyOFT("My Token", "MTK", endpoint, msg.sender);
        vm.stopBroadcast();

        console.log("Deployed to:", address(oft));
    }
}
```

Deploy to any chain:

```bash
forge script script/DeployMyOFT.s.sol --rpc-url arbitrum --broadcast --account deployer
forge script script/DeployMyOFT.s.sol --rpc-url base --broadcast --account deployer
```

See [`scripts/examples/`](scripts/examples/) for complete deployment and configuration scripts.

---

## Example Scripts

| Script | Description |
|--------|-------------|
| [`DeployOFTMock.s.sol`](scripts/examples/DeployOFTMock.s.sol) | Deploy an OFT to any chain |
| [`ConfigureByChainId.s.sol`](scripts/examples/ConfigureByChainId.s.sol) | Full OApp config using native chain IDs |
| [`ConfigureByChainName.s.sol`](scripts/examples/ConfigureByChainName.s.sol) | Full OApp config using chain names |
| [`ConfigureByEid.s.sol`](scripts/examples/ConfigureByEid.s.sol) | Full OApp config using LayerZero EIDs |

These scripts demonstrate the full workflow: setting peers, configuring DVNs, setting libraries, and enforced options.

---

## Quick Reference

### Common Chain Identifiers

| Chain | Name | EID | Chain ID |
|-------|------|-----|----------|
| Ethereum | `ethereum-mainnet` | 30101 | 1 |
| Arbitrum | `arbitrum-mainnet` | 30110 | 42161 |
| Base | `base-mainnet` | 30184 | 8453 |
| Optimism | `optimism-mainnet` | 30111 | 10 |
| Polygon | `polygon-mainnet` | 30109 | 137 |

### Key Methods

```solidity
// Set context
ctx.setChain("arbitrum-mainnet");
ctx.setChainByEid(30110);
ctx.setChainByChainId(42161);

// Get addresses (current chain)
ctx.getEndpointV2();
ctx.getSendUln302();
ctx.getReceiveUln302();
ctx.getExecutor();
ctx.getDVNByName("LayerZero Labs");
ctx.getSortedDVNs(dvnNames);  // Pre-sorted for UlnConfig

// Cross-chain lookups (no context switch)
ctx.getEidForChainName("base-mainnet");
ctx.getEndpointForChainName("base-mainnet");
ctx.getDVNForChainName("LayerZero Labs", "base-mainnet");

// Discovery
ctx.getSupportedChainNames();
ctx.getAvailableDVNs();
ctx.getDVNsForCurrentChain();
```

### Static Imports

When you know the chain at compile time:

```solidity
import {LayerZeroV2ArbitrumMainnet} from "lz-address-book/generated/LZAddresses.sol";

address endpoint = address(LayerZeroV2ArbitrumMainnet.ENDPOINT_V2);
uint32 eid = LayerZeroV2ArbitrumMainnet.EID;
uint256 chainId = LayerZeroV2ArbitrumMainnet.CHAIN_ID;
string memory chainName = LayerZeroV2ArbitrumMainnet.CHAIN_NAME;
```

---

## Resources

- **LayerZero Docs**: [docs.layerzero.network](https://docs.layerzero.network/)
- **LayerZero Devtools**: [github.com/LayerZero-Labs/devtools](https://github.com/LayerZero-Labs/devtools)
- **Foundry Book**: [getfoundry.sh](https://getfoundry.sh/introduction/getting-started)
- **Forge Scripting Guide**: [getfoundry.sh/guides/scripting](https://getfoundry.sh/guides/scripting-with-solidity)
- **Fork Testing Guide**: [getfoundry.sh/forge/tests/fork-testing](https://getfoundry.sh/forge/tests/fork-testing)

---

## Supported Chains

100+ EVM chains including Ethereum, Arbitrum, Base, Optimism, Polygon, Avalanche, BSC, and all major testnets.

Run `ctx.getSupportedChainNames()` for the full list.

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
| `getEndpointV2()` | Get EndpointV2 address |
| `getSendUln302()` | Get SendUln302 address |
| `getReceiveUln302()` | Get ReceiveUln302 address |
| `getExecutor()` | Get Executor address |
| `getDVNByName(string)` | Get DVN address by provider name |

#### DVN Discovery & Batch Lookup

| Method | Description |
|--------|-------------|
| `getAvailableDVNs()` | Get all DVN names across all chains |
| `getDVNsForCurrentChain()` | Get DVN names and addresses for current chain |
| `getDVNsForChainName(string)` | Get DVN names and addresses for any chain |
| `getDVNs(string[])` | Get multiple DVN addresses by name |
| `getSortedDVNs(string[])` | Get DVN addresses sorted ascending (for UlnConfig) |
| `isDVNAvailable(string)` | Check if DVN exists on current chain |

#### Cross-Chain Lookups

| Method | Description |
|--------|-------------|
| `getEidForChainName(string)` | Get EID for any chain |
| `getEndpointForChainName(string)` | Get endpoint for any chain |
| `getExecutorForChainName(string)` | Get executor for any chain |
| `getSendLibForChainName(string)` | Get send library for any chain |
| `getReceiveLibForChainName(string)` | Get receive library for any chain |
| `getDVNForChainName(string, string)` | Get DVN for any chain |
| `getProtocolAddressesForChainName(string)` | Get all addresses for any chain |

#### Chain Discovery & Validation

| Method | Description |
|--------|-------------|
| `getSupportedChainNames()` | Get all supported chain names |
| `getSupportedEids()` | Get all supported LayerZero endpoint IDs |
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
| `getAssetByEid(uint32, string)` | Get Stargate asset by EID and symbol |
| `getAssetsForEid(uint32)` | Get all Stargate assets by EID |
| `getTokenMessagingByEid(uint32)` | Get TokenMessaging address by EID |

#### Lookup by Chain ID

| Method | Description |
|--------|-------------|
| `getAssetByChainId(uint256, string)` | Get Stargate asset by chain ID and symbol |
| `getAssetsForChainId(uint256)` | Get all Stargate assets by chain ID |
| `getTokenMessagingByChainId(uint256)` | Get TokenMessaging address by chain ID |

#### Discovery & Validation

| Method | Description |
|--------|-------------|
| `getSupportedSymbols()` | Get all supported asset symbols |
| `getSupportedChainNames()` | Get all chains with Stargate deployments |
| `isChainNameSupported(string)` | Check if chain has Stargate deployments |
| `assetExists(string, string)` | Check if asset exists on chain |
| `isHydraChain(string, string)` | Check if asset is StargateOFT (Hydra) |

---

## License

MIT License - see [LICENSE](LICENSE) for details.
