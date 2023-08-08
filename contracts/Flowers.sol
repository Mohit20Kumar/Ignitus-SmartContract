// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Flowers {
    address payable owner;
    
    constructor() {
        owner = payable(msg.sender);
    }

    function sendEth() public payable {
		require(msg.sender.balance >= msg.value, "Youd don't have enough funds"); // require that the sender has enough ether to send
		(bool success, ) = owner.call{value: msg.value}(''); // send the amount of eth specified in msg.value and set the gast limit to 2000 units
		require(success, 'Transfer failed'); // Check that the transfer was successful, if not trigger an error message
	}
}