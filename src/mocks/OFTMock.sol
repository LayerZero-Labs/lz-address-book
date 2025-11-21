// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {OFT} from "@layerzerolabs/oft-evm/contracts/OFT.sol";
import {SendParam} from "@layerzerolabs/oft-evm/contracts/OFTCore.sol";

/// @title OFTMock
/// @notice Mock OFT contract for testing purposes
/// @dev Exposes internal OFT functions and adds a mint function for testing
contract OFTMock is OFT {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate
    ) Ownable(_delegate) OFT(_name, _symbol, _lzEndpoint, _delegate) {}

    /// @notice Mint tokens for testing
    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }

    /// @dev Expose internal _debit function for testing
    function debit(
        uint256 _amountToSendLD,
        uint256 _minAmountToCreditLD,
        uint32 _dstEid
    ) public returns (uint256 amountDebitedLD, uint256 amountToCreditLD) {
        return _debit(msg.sender, _amountToSendLD, _minAmountToCreditLD, _dstEid);
    }

    /// @dev Expose internal _debitView function for testing
    function debitView(
        uint256 _amountToSendLD,
        uint256 _minAmountToCreditLD,
        uint32 _dstEid
    ) public view returns (uint256 amountDebitedLD, uint256 amountToCreditLD) {
        return _debitView(_amountToSendLD, _minAmountToCreditLD, _dstEid);
    }

    /// @dev Expose internal _removeDust function for testing
    function removeDust(uint256 _amountLD) public view returns (uint256 amountLD) {
        return _removeDust(_amountLD);
    }

    /// @dev Expose internal _toLD function for testing
    function toLD(uint64 _amountSD) public view returns (uint256 amountLD) {
        return _toLD(_amountSD);
    }

    /// @dev Expose internal _toSD function for testing
    function toSD(uint256 _amountLD) public view returns (uint64 amountSD) {
        return _toSD(_amountLD);
    }

    /// @dev Expose internal _credit function for testing
    function credit(address _to, uint256 _amountToCreditLD, uint32 _srcEid) public returns (uint256 amountReceivedLD) {
        return _credit(_to, _amountToCreditLD, _srcEid);
    }

    /// @dev Expose internal _buildMsgAndOptions function for testing
    function buildMsgAndOptions(
        SendParam calldata _sendParam,
        uint256 _amountToCreditLD
    ) public view returns (bytes memory message, bytes memory options) {
        return _buildMsgAndOptions(_sendParam, _amountToCreditLD);
    }
}

