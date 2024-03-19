// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 amount) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(address(this).balance >= amount, "Insufficient balance");
        owner.transfer(amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}

/*The code creates a wallet for ether storage and withdrawal. 
It belongs to the person who made it initially. For safety reasons, 
anyone can place Ether inside, but only the owner may take it out. 
You can also view how much Ether is contained in it. This code 
demonstrates key guidelines for creating secure contracts on 
Ethereum while managing Ether and keeping it safe.*/