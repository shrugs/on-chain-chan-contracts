// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import {OnChainChan} from "../src/OnChainChan.sol";

contract Deploy is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new OnChainChan();
        vm.stopBroadcast();
    }
}
