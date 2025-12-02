// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/**
 * @title LayerZero Address Book
 * @notice Main export file for LayerZero V2 protocol addresses and helpers
 * @dev Import this file to access all LayerZero addresses and helper contracts
 * 
 * Usage:
 *   // High-level context (recommended)
 *   import {LZAddressContext} from "lz-address-book/LZAddressBook.sol";
 *   
 *   // Core contracts (for advanced use)
 *   import {LZProtocol} from "lz-address-book/LZAddressBook.sol";
 *   import {LZWorkers} from "lz-address-book/LZAddressBook.sol";
 *   import {DVNValidator} from "lz-address-book/LZAddressBook.sol";
 *   
 *   // Utilities
 *   import {ChainFamilies} from "lz-address-book/LZAddressBook.sol";
 *   
 *   // Static chain libraries (for direct access)
 *   import {LayerZeroV2EthereumMainnet} from "lz-address-book/generated/LZAddresses.sol";
 */

// Export provenance hash
import {LZ_ADDRESSES_DATA_HASH} from "./generated/LZAddresses.sol";

// Export core contracts (auto-generated)
import {LZProtocol} from "./generated/LZProtocol.sol";
import {ILZProtocol} from "./helpers/interfaces/ILZProtocol.sol";
import {LZWorkers} from "./generated/LZWorkers.sol";
import {ILZWorkers} from "./helpers/interfaces/ILZWorkers.sol";

// Export high-level helpers
import {LZAddressContext} from "./helpers/LZAddressContext.sol";
import {ILZAddressContext} from "./helpers/interfaces/ILZAddressContext.sol";
import {DVNValidator} from "./helpers/DVNValidator.sol";
import {IDVNValidator} from "./helpers/interfaces/IDVNValidator.sol";

// Export utilities
import {LZUtils} from "./utils/LZUtils.sol";
import {ChainFamilies} from "./utils/ChainFamilies.sol";

// Export Stargate helpers (auto-generated)
import {STGProtocol} from "./generated/STGProtocol.sol";
import {ISTGProtocol} from "./helpers/interfaces/ISTGProtocol.sol";
