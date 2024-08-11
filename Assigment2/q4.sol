// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract keeps track of a count and allows it to be incremented.
contract SimpleCounter {
    uint256 private count;

    // Increments the counter by 1
    function increment() public {
        count += 1;
    }

    // Retrieves the current count
    function getCount() public view returns (uint256) {
        return count;
    }
}
