pragma solidity ^0.8.0;

contract MyContract {
    uint256 public myNumber;

    //Construction Function
    constructor() {
        myNumber = 42; //Initialize state variable
    }
}