// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract allows users to store and retrieve their name.
contract NameStorage {
    string private userName;

    // Sets the user's name
    function setName(string memory _name) public {
        userName = _name;
    }

    // Retrieves the user's name
    function getName() public view returns (string memory) {
        return userName;
    }
}
