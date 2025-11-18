// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/**
 * @title LayerZero Address Book
 * @notice Main export file for LayerZero V2 protocol addresses
 * @dev Import this file to access all LayerZero addresses and helper contracts
 * 
 * Usage:
 *   import {LayerZeroV2EthereumMainnet} from "lz-address-book/LZAddressBook.sol";
 *   import {LZProtocol} from "lz-address-book/LZAddressBook.sol";
 *   import {LZWorkers} from "lz-address-book/LZAddressBook.sol";
 */

// Export all generated address libraries
import {LZ_ADDRESSES_DATA_HASH} from "./generated/LZAddresses.sol";

// Export helper contracts
import {LZProtocol, ILZProtocol} from "./helpers/LZProtocol.sol";
import {LZWorkers, ILZWorkers} from "./helpers/LZWorkers.sol";

