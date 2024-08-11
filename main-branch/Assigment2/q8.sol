// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract logs events when actions are performed.
contract EventLogging {
    // Event to be emitted when an action is performed
    event ActionPerformed(string message);

    // Function that performs an action and emits an event
    function performAction() public {
        emit ActionPerformed("Action has been performed.");
    }
}
