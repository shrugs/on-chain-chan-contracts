// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import {OnChainChan} from "../src/OnChainChan.sol";

contract Post is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        OnChainChan chan = OnChainChan(vm.envAddress("CHAN_ADDRESS"));
        chan.post(
            keccak256(abi.encodePacked(vm.envString("TOPIC"))),
            vm.envString("CONTENT")
        );
        vm.stopBroadcast();
    }
}
