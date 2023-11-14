// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {BoxV1} from "../src/BoxV1.sol";

contract DeployBox is Script {
    function run() external returns (address) {
        address proxy = deployProxy();

        return proxy;
    }

    function deployProxy() public returns (address) {
        vm.startBroadcast();
        BoxV1 boxV1 = new BoxV1();
        ERC1967Proxy proxy = new ERC1967Proxy(address(boxV1), "");
        vm.stopBroadcast();

        return address(proxy);
    }
}
