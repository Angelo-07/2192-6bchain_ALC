// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

//sending ETH
contract SendEther {
    constructor() payable {}

    receive() external payable { }

    function sendViaTransfer (address payable _to) external payable {
    _to. transfer (100);
    }

    function sendViaSend (address payable _to) external payable {
        bool sent = _to.send(100);
        require(sent, "Sending failed.");
    }

    function sendViaCall (address payable _to) external payable {
        (bool success, ) = _to.call{value: 100}("");
        require(success, "Call failed.");
    }
}

contract SelfDestruct {
    event Deposit (uint amount);
    event Withdraw(uint amount);
    address public owner = msg.sender;

    receive() external payable {
        emit Deposit(msg.value);
    }

    function withdraw() external {
        require(msg.sender == owner, "Not owner!");
        emit Withdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
    }
}

/*There are two contracts in the Solidity code. 
Using techniques like sendVia Transfer, send ViaSend, and sendViaCall, 
the "SendEther" contract controls the sending and receiving of Ether. 
The "SelfDestruct" contract, on the other hand, provides a self-destruct function that 
the contract owner can start. This function ends the contract and sends any 
leftover funds to the owner's address.
*/