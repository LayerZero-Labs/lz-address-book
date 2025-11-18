# LayerZero Address Book :book:

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Foundry](https://img.shields.io/badge/Built%20with-Foundry-FFDB1C.svg)](https://getfoundry.sh/)

An up-to-date registry of all LayerZero V2 protocol addresses for Solidity development. This package provides auto-generated Solidity libraries containing addresses for LayerZero endpoints, message libraries, executors, and DVNs across all supported EVM chains.

## Features

- 🔄 **Auto-generated**: Addresses are fetched directly from LayerZero's metadata API
- 🌐 **Comprehensive Coverage**: Includes 300+ EVM chains (mainnets and testnets)
- 🛠️ **Developer Friendly**: Helper contracts for easy address lookup by chain name or EID
- 🔍 **Provenance Tracking**: DATA_HASH included for verifying data integrity
- 📦 **Zero Dependencies**: Just Foundry and LayerZero V2 contracts
- ✅ **Well Tested**: Comprehensive unit and fork tests included

## Installation

### With Foundry

```bash
forge install LayerZero-Labs/lz-address-book
```

### Manual Installation

Clone this repository into your project's `lib` directory:

```bash
git clone https://github.com/LayerZero-Labs/lz-address-book lib/lz-address-book
```

## Usage

### Quick Start

Import and use addresses directly in your Solidity contracts:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {LayerZeroV2EthereumMainnet} from "lz-address-book/generated/LZAddresses.sol";
import {ILayerZeroEndpointV2} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";

contract MyOApp {
    ILayerZeroEndpointV2 public immutable endpoint;
    
    constructor() {
        // Use the address directly from the generated library
        endpoint = LayerZeroV2EthereumMainnet.ENDPOINT_V2;
    }
}
```

### Using Helper Contracts

For more dynamic access patterns, use the helper contracts:

```solidity
import {LZProtocol, ILZProtocol} from "lz-address-book/helpers/LZProtocol.sol";
import {LZWorkers, ILZWorkers} from "lz-address-book/helpers/LZWorkers.sol";

contract MyDeploymentScript {
    LZProtocol public protocolProvider = new LZProtocol();
    LZWorkers public workersRegistry = new LZWorkers();
    
    function deployToArbitrum() public {
        // Get all protocol addresses by chain name
        ILZProtocol.ProtocolAddresses memory addresses = 
            protocolProvider.getProtocolAddresses("arbitrum-mainnet");
        
        // Get DVN addresses for security config
        string[] memory dvnNames = new string[](2);
        dvnNames[0] = "LayerZero Labs";
        dvnNames[1] = "Nethermind";
        
        address[] memory dvnAddresses = 
            workersRegistry.getDVNAddresses("arbitrum-mainnet", dvnNames);
        
        // Use addresses to configure your OApp...
    }
}
```

### Available Address Libraries

Each chain has its own library following the naming pattern `LayerZeroV2{ChainName}`:

- `LayerZeroV2EthereumMainnet`
- `LayerZeroV2ArbitrumMainnet`
- `LayerZeroV2BaseMainnet`
- `LayerZeroV2OptimismMainnet`
- `LayerZeroV2PolygonMainnet`
- And 300+ more...

Each library contains:

```solidity
library LayerZeroV2EthereumMainnet {
    // Chain metadata
    uint32 internal constant EID = 30101;
    uint256 internal constant CHAIN_ID = 1;
    string internal constant CHAIN_KEY = "ethereum-mainnet";
    
    // Core protocol
    ILayerZeroEndpointV2 internal constant ENDPOINT_V2 = ILayerZeroEndpointV2(0x1a44076050125825900e736c501f859c50fE728c);
    
    // Message libraries
    IMessageLib internal constant SEND_ULN_302 = IMessageLib(...);
    IMessageLib internal constant RECEIVE_ULN_302 = IMessageLib(...);
    
    // Other contracts
    address internal constant EXECUTOR = ...;
    address internal constant DEAD_DVN = ...;
}
```

### DVN (Decentralized Verification Network) Libraries

Each chain also has a DVN library with addresses of all available DVNs:

```solidity
library LayerZeroV2DVNEthereumMainnet {
    // LayerZero Labs
    address internal constant DVN_LAYERZERO_LABS = 0x589dEDbD617e0CBcB916A9223F4d1300c294236b;
    
    // Nethermind
    address internal constant DVN_NETHERMIND = 0xa7b5189bcA84Cd304D8553977c7C614329750d99;
    
    // And many more...
}
```

## Helper Contracts

### LZProtocol

Provides convenient access to protocol addresses:

```solidity
// Get addresses by EID
ILZProtocol.ProtocolAddresses memory addresses = protocolProvider.getProtocolAddresses(30101);

// Get addresses by chain name
ILZProtocol.ProtocolAddresses memory addresses = protocolProvider.getProtocolAddresses("ethereum-mainnet");

// Convert chain ID to EID
uint32 eid = protocolProvider.getEidFromChainId(1); // Returns 30101

// Check if chain is supported
bool supported = protocolProvider.isChainSupported(30101);

// Get all supported EIDs
uint32[] memory eids = protocolProvider.getSupportedEids();
```

### LZWorkers

Provides convenient access to DVN addresses:

```solidity
// Get single DVN address by name
address dvn = workersRegistry.getDVNAddress("LayerZero Labs", 30101);

// Get single DVN address by chain name
address dvn = workersRegistry.getDVNAddressByChainName("LayerZero Labs", "ethereum-mainnet");

// Get multiple DVN addresses at once
string[] memory dvnNames = new string[](2);
dvnNames[0] = "LayerZero Labs";
dvnNames[1] = "Nethermind";
address[] memory dvns = workersRegistry.getDVNAddresses("ethereum-mainnet", dvnNames);

// Get all DVNs for a chain
(string[] memory names, address[] memory addresses) = workersRegistry.getDVNsForChain(30101);

// Get all available DVN names
string[] memory allDVNs = workersRegistry.getAvailableDVNs();
```

## Testing

The repository includes comprehensive tests demonstrating usage patterns.

### Address Book Tests

Tests that verify the address book itself works correctly:

```bash
# Run all address book tests
forge test --match-path "test/LZAddressBook.t.sol"

# Run address book fork tests (requires RPC URLs)
forge test --match-path "test/fork/LZAddressFork.t.sol"
```

### Example Tests (Reference Implementations)

The `test/examples/` directory contains **reference implementations** showing how to use the address book in your own projects:

#### Unit Test Example (`test/examples/MyOFT.t.sol`)
Demonstrates testing OFT business logic with mocked endpoints:
- How to mock LayerZero endpoint calls
- Testing send/receive logic without network dependencies
- Fast unit tests for your OApp business logic

```bash
forge test --match-path "test/examples/MyOFT.t.sol"
```

#### Fork Test Example (`test/examples/fork/MyOFT.t.sol`)
Demonstrates real cross-chain testing using the address book:
- How to use address book for fork tests
- Deploying OApps with real endpoint addresses
- Testing actual cross-chain message flows

**Setup for Fork Tests:**

Create a `.env` file with your RPC URLs:

```bash
ETHEREUM_MAINNET_RPC_URL=https://eth-mainnet.g.alchemy.com/v2/YOUR_KEY
ARBITRUM_MAINNET_RPC_URL=https://arb-mainnet.g.alchemy.com/v2/YOUR_KEY
BASE_MAINNET_RPC_URL=https://base-mainnet.g.alchemy.com/v2/YOUR_KEY
```

Then run:

```bash
forge test --match-path "test/examples/fork/**/*.sol"
```

**Key Takeaways from Examples:**
- **Copy these patterns** for your own OApp testing
- **Unit tests** for fast business logic validation
- **Fork tests** for integration testing with real LayerZero infrastructure
- **Address book** eliminates hardcoded addresses

## Regenerating Addresses

The address book can be regenerated from LayerZero's metadata API:

### Prerequisites

```bash
pip3 install -r scripts/requirements.txt
```

### Generate

```bash
# Generate mainnet addresses only
npm run generate:mainnet

# Generate all addresses (including testnets)
npm run generate
```

This will:
1. Fetch the latest deployment data from LayerZero's API
2. Generate `src/generated/LZAddresses.sol` with all chain libraries
3. Generate `src/helpers/LZProtocol.sol` for protocol address access
4. Generate `src/helpers/LZWorkers.sol` for DVN address access

## Examples

### Example 1: Deploy OApp with Address Book

```solidity
pragma solidity ^0.8.22;

import {OApp} from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import {LayerZeroV2EthereumMainnet} from "lz-address-book/generated/LZAddresses.sol";

contract MyOApp is OApp {
    constructor() OApp(address(LayerZeroV2EthereumMainnet.ENDPOINT_V2), msg.sender) {}
    
    // Your OApp logic...
}
```

### Example 2: Configure DVNs for Security

```solidity
pragma solidity ^0.8.22;

import {LZWorkers} from "lz-address-book/helpers/LZWorkers.sol";
import {SetConfigParam} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";

contract DVNConfigHelper {
    LZWorkers public workers = new LZWorkers();
    
    function getDVNConfig(string memory chainName) public view returns (address[] memory) {
        string[] memory dvnNames = new string[](3);
        dvnNames[0] = "LayerZero Labs";
        dvnNames[1] = "Nethermind";
        dvnNames[2] = "Horizen";
        
        return workers.getDVNAddresses(chainName, dvnNames);
    }
}
```

### Example 3: Multi-Chain Deployment Script

```solidity
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {LZProtocol, ILZProtocol} from "lz-address-book/helpers/LZProtocol.sol";

contract DeployMultiChain is Script {
    LZProtocol public protocol = new LZProtocol();
    
    function deployToAllChains() public {
        uint32[] memory eids = protocol.getSupportedEids();
        
        for (uint256 i = 0; i < eids.length; i++) {
            ILZProtocol.ProtocolAddresses memory addresses = 
                protocol.getProtocolAddresses(eids[i]);
            
            // Deploy your contract to each chain...
            deployOApp(addresses.endpointV2, addresses.chainId);
        }
    }
    
    function deployOApp(address endpoint, uint256 chainId) internal {
        // Deployment logic...
    }
}
```

## Chain Coverage

The address book currently includes:

- **Mainnets**: Ethereum, Arbitrum, Base, Optimism, Polygon, Avalanche, BSC, and 100+ more
- **Testnets**: Sepolia, Arbitrum Sepolia, Base Sepolia, and 200+ more
- **All EVM chains** supported by LayerZero V2

See [src/generated/LZAddresses.sol](src/generated/LZAddresses.sol) for the complete list.

## Contributing

Contributions are welcome! Please follow these guidelines:

1. **Reporting Issues**: Open an issue with details about incorrect addresses or missing chains
2. **Regenerating Addresses**: If addresses are outdated, run the generator script
3. **Adding Tests**: Add tests for new usage patterns
4. **Documentation**: Update README if adding new features

### Development

```bash
# Install dependencies
forge install

# Run tests
forge test

# Regenerate addresses
npm run generate

# Build
forge build
```

## Provenance & Data Integrity

Every generated address file includes a `DATA_HASH` constant:

```solidity
bytes32 constant LZ_ADDRESSES_DATA_HASH = 0x...;
```

This hash is computed from the LayerZero metadata API response and can be used to verify that addresses haven't been tampered with.

## Related Resources

- [LayerZero V2 Documentation](https://docs.layerzero.network/)
- [LayerZero V2 GitHub](https://github.com/LayerZero-Labs/LayerZero-v2)
- [LayerZero Metadata API](https://metadata.layerzero-api.com/v1/metadata/deployments)

## License

MIT License - see [LICENSE](LICENSE) for details.

## Disclaimer

This repository provides addresses from LayerZero's official metadata API. Always verify addresses before using them in production. The maintainers are not responsible for any losses resulting from the use of incorrect addresses.

---

**Built with ❤️ by the LayerZero community**

