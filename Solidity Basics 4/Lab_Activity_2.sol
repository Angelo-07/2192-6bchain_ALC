// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFinalsActivity2 {
    address payable public owner;
    uint256 public creationTime;
    uint256 public constant INITIAL_ETH_AMOUNT = 2 ether;
    uint256 public remainingEth;

    event EtherReceived(address indexed sender, uint256 amount);
    event EtherSent(address indexed recipient, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
        creationTime = block.timestamp;
        remainingEth = INITIAL_ETH_AMOUNT;
    }

    receive() external payable {
        receiveAndEmit();
    }

    function receiveAndEmit() public payable {
        remainingEth += msg.value;
        emit EtherReceived(msg.sender, msg.value);
    }

    function sendEther(address payable _recipient, uint256 _amount)
        public
        payable
        onlyOwner
    {
        require(_amount <= remainingEth, "Insufficient balance");
        remainingEth -= _amount;
        _recipient.transfer(_amount);
        emit EtherSent(_recipient, _amount);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
}


/*This Solidity contract performs the tasks of a basic Ether management system, including sending, 
receiving, self-destructing, and balance-checking. It has an owner who creates the contract and has 
the authority to distribute Ether to designated recipients. To improve security and control over the 
contract's operations, the contract emits events for Ether transactions and enforces that only the 
owner may carry out specific tasks.*/