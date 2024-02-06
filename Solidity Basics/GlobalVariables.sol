// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables {
    function globalVars() external view returns (address, uint, uint, uint, address) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        uint gasLimit = block.gaslimit;
        address coinbase = block.coinbase;
        return (sender, timestamp, blockNum, gasLimit, coinbase);
    }
}

//insight
//as you run or call the code, the timestamp also changes  