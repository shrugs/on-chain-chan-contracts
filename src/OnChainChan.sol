// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract OnChainChan {
    event Post(bytes32 indexed topic, address from, string content);

    function post(bytes32 topic, string calldata content) external {
        emit Post(topic, msg.sender, content);
    }
}
