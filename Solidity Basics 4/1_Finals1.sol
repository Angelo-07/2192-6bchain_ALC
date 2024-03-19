// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract FallbackExample {
    event FallbackReceived (address sender, uint amount);
    
    // Event to log payment received
    event PaymentReceived (address payer, uint256 amount);
    
    // Fallback function
    fallback() external payable {
        emit FallbackReceived(msg.sender, msg.value);
    }

    // Function to receive Ether
    receive() external payable {
        emit PaymentReceived (msg.sender, msg.value);
    }
}

/*In order to manage incoming Ether payments, the contract 
"FallbackExample" has both a receive function and a fallback 
function. Emitting events, these routines record the recipient's 
amount and the sender's address. The contract's flexibility and 
transparency in processing payments are increased by this configuration, 
which guarantees the contract's capacity to effectively manage and record 
incoming transactions.*/