// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// OwnerAccess Contract
// This contract restricts certain functions to only the contract owner.

contract OwnerAccess {
    address private owner;

    // Constructor sets the contract creator as the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict function access to only the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner.");
        _;
    }

    // Function only executable by the owner
    function ownerOnlyFunction() public onlyOwner {
       emit RestrictedAction("Restricted function was called by the owner.");
    }

    // Event that is emitted when the restricted function is called.
    event RestrictedAction(string message);
}

