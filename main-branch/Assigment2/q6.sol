// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract allows users to vote for candidates and track the number of votes.
contract Voting {
    mapping(string => uint256) private votes;

    // Allows a user to vote for a candidate
    function vote(string memory _candidate) public {
        votes[_candidate] += 1;
    }

    // Retrieves the number of votes for a candidate
    function getVotes(string memory _candidate) public view returns (uint256) {
        return votes[_candidate];
    }
}
