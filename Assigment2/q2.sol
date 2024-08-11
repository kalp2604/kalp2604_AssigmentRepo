// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract allows users to store and retrieve a single integer value.
contract SimpleStorage {
    uint256 private storedValue;

    // Sets the stored value
    function set(uint256 _value) public {
        storedValue = _value;
    }

    // Retrieves the stored value
    function get() public view returns (uint256) {
        return storedValue;
    }
}
