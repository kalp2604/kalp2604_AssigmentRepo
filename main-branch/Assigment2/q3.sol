// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// This contract allows users to set and get a personalized greeting message.
contract Greeting {
    string private greetingMessage;

    // Sets the greeting message
    function setGreeting(string memory _message) public {
        greetingMessage = _message;
    }

    // Retrieves the greeting message
    function getGreeting() public view returns (string memory) {
        return greetingMessage;
    }
}
