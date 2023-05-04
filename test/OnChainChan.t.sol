// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/OnChainChan.sol";

contract OnChainChanTest is Test {
    OnChainChan public chan;

    function setUp() public {
        chan = new OnChainChan();
    }

    function testPost() public {
        chan.post(
            keccak256(
                abi.encodePacked(
                    "eip155:1/erc721:0x1b0aebafeb9452c7abbda0b920bb1a272182aacb/69"
                )
            ),
            "hello from the chain"
        );
    }
}
