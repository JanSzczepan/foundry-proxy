// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract BoxV1 is UUPSUpgradeable {
    uint256 internal number;

    constructor() {
        _disableInitializers();
    }

    function getNumber() external view returns (uint256) {
        return number;
    }

    function getVersion() public pure returns (uint256) {
        return 1;
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}
