pragma solidity ^0.8.0;

contract Ownable {
    address public owner;
 
    constructor () {
        owner = msg.sender;
    }

    modifier OnlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    function transferOwnership(address newOwner) external OnlyOwner {
        require(newOwner != address(0), "Invalid Address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;

    }
    }

contract MyContract is Ownable{
    uint256 public someValue;
    mapping (address => uint256) public valuMapping;

    //function to set a value for the sender's address
    function setSomeValue(uint256 newValue) public OnlyOwner{
        valuMapping[msg.sender] = newValue;
    }

    }