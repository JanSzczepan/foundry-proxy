// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract BoxV1 {
    uint256 internal number;

    function getNumber() external view returns (uint256) {
        return number;
    }

    function getVersion() public pure returns (uint256) {
        return 1;
    }
}