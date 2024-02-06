// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ValueTypes {
    bool public b = true;
    uint public u = 123; //uint = uint256 0 to 2**256 . 1
                         //       uint0 0 to 2**8 . 1
                         //       uint16 0 to 2**16 . 1

    int public i = -123; //int = int256 -2**255 to 2**255 . 1 
                         //      int256 -2**127 to 2**124 . 1 
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x1DE458031bFbe5689deD5A8b9ed57e1E79EaB2A4;
    // byte32 public b32 = 
}