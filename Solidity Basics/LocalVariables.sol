// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 123;
        bool f = false;
        //more code
        x += 456;
        f = true;

        //i = 123;
        //b = true;
        myAddress = address(1);
    }
}

//insight

// If you try to comment out the "i", the output will be different fron the first one, the output will be 0 instead of 123
// If you comment out the "b", the output will be false instead of true
