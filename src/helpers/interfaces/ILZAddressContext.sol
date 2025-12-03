// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {ILZProtocol} from "./ILZProtocol.sol";
import {Vm} from "forge-std/Vm.sol";

/// @title ILZAddressContext
/// @notice Interface for stateful LayerZero address context management
/// @dev Primary API for accessing LayerZero addresses in Foundry scripts and tests
///
///      This is a stateful wrapper that maintains a "current chain" context.
///      Naming convention:
///      - get{Object}()              → Operates on current chain
///      - get{Object}For(chainName)  → Cross-chain lookup without context switch
///      - set{Context}By{Identifier} → Set current chain context
///      - is{Object}{Condition}()    → Boolean checks
///
/// @custom:example Basic usage
/// ```solidity
/// LZAddressContext ctx = new LZAddressContext();
/// ctx.setChain("arbitrum-mainnet");
/// address endpoint = ctx.getEndpointV2();
/// address dvn = ctx.getDVNByName("LayerZero Labs");
/// ```
///
/// @custom:example DVN Discovery
/// ```solidity
/// string[] memory allDVNs = ctx.getAvailableDVNs();
/// (string[] memory names, address[] memory addrs) = ctx.getDVNsForCurrentChain();
/// ```
interface ILZAddressContext {
    /*//////////////////////////////////////////////////////////////
                          SETUP & PERSISTENCE
    //////////////////////////////////////////////////////////////*/

    /// @notice Make all internal contracts persistent across fork switches
    /// @param vm The Foundry VM instance
    function makePersistent(Vm vm) external;

    /*//////////////////////////////////////////////////////////////
                        CHAIN CONTEXT SETTERS
    //////////////////////////////////////////////////////////////*/

    /// @notice Set the current chain context by name (primary method)
    /// @param chainName The chain name (e.g., "arbitrum-mainnet")
    function setChain(string memory chainName) external;

    /// @notice Set the current chain context by EID
    /// @param eid The LayerZero endpoint ID
    function setChainByEid(uint32 eid) external;

    /// @notice Set the current chain context by native chain ID
    /// @param chainId The native chain ID (e.g., 42161 for Arbitrum)
    function setChainByChainId(uint256 chainId) external;

    /*//////////////////////////////////////////////////////////////
                    CURRENT CHAIN CONTEXT GETTERS
    //////////////////////////////////////////////////////////////*/

    /// @notice Get the current chain name
    /// @return chainName The current chain name
    function getCurrentChainName() external view returns (string memory chainName);

    /// @notice Get the current chain's LayerZero EID
    /// @return eid The current chain's endpoint ID
    function getCurrentEID() external view returns (uint32 eid);

    /// @notice Get the current chain's native chain ID
    /// @return chainId The current chain's native chain ID
    function getCurrentChainId() external view returns (uint256 chainId);

    /// @notice Get the Endpoint V2 address for the current chain
    /// @return endpoint The EndpointV2 address
    function getEndpointV2() external view returns (address endpoint);

    /// @notice Get the Send Library (SendUln302) address for the current chain
    /// @return sendLib The SendUln302 address
    function getSendUln302() external view returns (address sendLib);

    /// @notice Get the Receive Library (ReceiveUln302) address for the current chain
    /// @return receiveLib The ReceiveUln302 address
    function getReceiveUln302() external view returns (address receiveLib);

    /// @notice Get the Executor address for the current chain
    /// @return executor The Executor address
    function getExecutor() external view returns (address executor);

    /// @notice Get all available RPC URLs for the current chain, sorted by rank
    /// @return rpcUrls Array of RPC URLs
    function getRpcUrls() external view returns (string[] memory rpcUrls);

    /// @notice Get the primary (highest ranked) RPC URL for the current chain
    /// @return rpcUrl The primary RPC URL
    function getPrimaryRpcUrl() external view returns (string memory rpcUrl);

    /// @notice Get all protocol addresses for the current chain
    /// @return addresses The protocol addresses struct
    function getProtocolAddresses() external view returns (ILZProtocol.ProtocolAddresses memory addresses);

    /// @notice Get full deployment info for the current chain
    /// @return info The full deployment info including DVNs
    function getFullDeploymentInfo() external view returns (ILZProtocol.FullDeploymentInfo memory info);

    /*//////////////////////////////////////////////////////////////
                      DVN LOOKUPS (CURRENT CHAIN)
    //////////////////////////////////////////////////////////////*/

    /// @notice Get DVN address by name for the current chain
    /// @param dvnName The canonical DVN name (e.g., "LayerZero Labs")
    /// @return dvnAddress The DVN address
    function getDVNByName(string memory dvnName) external view returns (address dvnAddress);

    /// @notice Get multiple DVN addresses by name for the current chain
    /// @param dvnNames Array of DVN names to look up
    /// @return addresses Array of corresponding DVN addresses
    function getDVNs(string[] memory dvnNames) external view returns (address[] memory addresses);

    /// @notice Get multiple DVN addresses sorted ascending (required by LayerZero UlnConfig)
    /// @param dvnNames Array of DVN names to look up
    /// @return addresses Array of DVN addresses sorted in ascending order
    /// @dev LayerZero requires DVN arrays to be sorted. Use this for UlnConfig.requiredDVNs.
    function getSortedDVNs(string[] memory dvnNames) external view returns (address[] memory addresses);

    /// @notice Check if a DVN is available on the current chain
    /// @param dvnName The canonical DVN name
    /// @return available True if the DVN exists on the current chain
    function isDVNAvailable(string memory dvnName) external view returns (bool available);

    /*//////////////////////////////////////////////////////////////
                            DVN DISCOVERY
    //////////////////////////////////////////////////////////////*/

    /// @notice Get all available DVN names across all chains
    /// @return dvnNames Array of all DVN names
    function getAvailableDVNs() external view returns (string[] memory dvnNames);

    /// @notice Get all DVNs available on the current chain
    /// @return names Array of DVN names
    /// @return addresses Array of corresponding DVN addresses
    function getDVNsForCurrentChain() external view returns (string[] memory names, address[] memory addresses);

    /// @notice Get all DVNs available on a specific chain by name
    /// @param chainName The chain name
    /// @return names Array of DVN names
    /// @return addresses Array of corresponding DVN addresses
    function getDVNsForChainName(string memory chainName)
        external
        view
        returns (string[] memory names, address[] memory addresses);

    /*//////////////////////////////////////////////////////////////
                      REVERSE DVN LOOKUP (ADDRESS → NAME)
    //////////////////////////////////////////////////////////////*/

    /// @notice Get DVN provider name from address on current chain
    /// @param dvnAddress The DVN contract address
    /// @return name The DVN provider name (e.g., "LayerZero Labs")
    function getDVNName(address dvnAddress) external view returns (string memory name);

    /// @notice Get DVN provider name from address on any chain
    /// @param dvnAddress The DVN contract address
    /// @param chainName The chain name
    /// @return name The DVN provider name
    function getDVNNameForChainName(address dvnAddress, string memory chainName)
        external
        view
        returns (string memory name);

    /*//////////////////////////////////////////////////////////////
                          CHAIN DISCOVERY
    //////////////////////////////////////////////////////////////*/

    /// @notice Get all supported chain names
    /// @return chainNames Array of all supported chain names
    function getSupportedChainNames() external view returns (string[] memory chainNames);

    /// @notice Get all supported EIDs
    /// @return eids Array of all supported LayerZero endpoint IDs
    function getSupportedEids() external view returns (uint32[] memory eids);

    /*//////////////////////////////////////////////////////////////
                    CROSS-CHAIN LOOKUPS (NO CONTEXT SWITCH)
    //////////////////////////////////////////////////////////////*/

    /// @notice Get EID for any chain by name
    /// @param chainName The chain name
    /// @return eid The LayerZero endpoint ID
    function getEidForChainName(string memory chainName) external view returns (uint32 eid);

    /// @notice Get endpoint address for any chain by name
    /// @param chainName The chain name
    /// @return endpoint The EndpointV2 address
    function getEndpointForChainName(string memory chainName) external view returns (address endpoint);

    /// @notice Get executor address for any chain by name
    /// @param chainName The chain name
    /// @return executor The Executor address
    function getExecutorForChainName(string memory chainName) external view returns (address executor);

    /// @notice Get send library address for any chain by name
    /// @param chainName The chain name
    /// @return sendLib The SendUln302 address
    function getSendLibForChainName(string memory chainName) external view returns (address sendLib);

    /// @notice Get receive library address for any chain by name
    /// @param chainName The chain name
    /// @return receiveLib The ReceiveUln302 address
    function getReceiveLibForChainName(string memory chainName) external view returns (address receiveLib);

    /// @notice Get DVN address for any chain by name
    /// @param dvnName The DVN name
    /// @param chainName The chain name
    /// @return dvnAddress The DVN address
    function getDVNForChainName(string memory dvnName, string memory chainName)
        external
        view
        returns (address dvnAddress);

    /// @notice Get protocol addresses for any chain by name
    /// @param chainName The chain name
    /// @return addresses The protocol addresses struct
    function getProtocolAddressesForChainName(string memory chainName)
        external
        view
        returns (ILZProtocol.ProtocolAddresses memory addresses);

    /*//////////////////////////////////////////////////////////////
                          SUPPORT CHECKS
    //////////////////////////////////////////////////////////////*/

    /// @notice Check if a chain name is supported
    /// @param chainName The chain name
    /// @return supported True if the chain is supported
    function isChainNameSupported(string memory chainName) external view returns (bool supported);

    /// @notice Check if an EID is supported
    /// @param eid The LayerZero endpoint ID
    /// @return supported True if the EID is supported
    function isEidSupported(uint32 eid) external view returns (bool supported);

    /// @notice Check if a chain ID is supported
    /// @param chainId The native chain ID
    /// @return supported True if the chain ID is supported
    function isChainIdSupported(uint256 chainId) external view returns (bool supported);

    /*//////////////////////////////////////////////////////////////
                            UTILITIES
    //////////////////////////////////////////////////////////////*/

    /// @notice Convert address to bytes32 for LayerZero peer setting
    /// @param addr The address to convert
    /// @return b The bytes32 representation
    function addressToBytes32(address addr) external pure returns (bytes32 b);

    /// @notice Convert bytes32 back to address
    /// @param b The bytes32 to convert
    /// @return addr The address representation
    function bytes32ToAddress(bytes32 b) external pure returns (address addr);

}
