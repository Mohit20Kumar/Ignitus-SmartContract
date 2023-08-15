// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Flowers {
    address payable owner;
    
    constructor() {
        owner = payable(msg.sender);
    }

    function sendEth() public payable {
        require(msg.value == 0.01 ether, "Please send exactly 0.01 ETH"); // Check if the sent value is 0.01 ETH
		require(msg.sender.balance >= msg.value, "You don't have enough funds");
        (bool success, ) = owner.call{value: msg.value}(''); // send the amount of eth specified in msg.value
        require(success, 'Transfer failed'); // Check that the transfer was successful, if not trigger an error message
    }
}