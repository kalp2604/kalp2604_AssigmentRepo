// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract allows users to store and retrieve a message string.
contract MessageStorage {
    string private message;

    // Sets the message string
    function setMessage(string memory _message) public {
        message = _message;
    }

    // Retrieves the stored message
    function getMessage() public view returns (string memory) {
        return message;
    }
}
