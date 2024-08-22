// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Lottery {
    // The manager of the lottery, who deploys the contract
    address public manager;
    // Array of players who have entered the lottery
    address payable[] public players;

    // Constructor to set the manager as the contract deployer
    constructor() {
        manager = msg.sender;
    }

    // Private function to check if the sender has already entered the lottery
    function alreadyEntered() view private returns (bool) {
        for (uint i = 0; i < players.length; i++) {
            if (players[i] == msg.sender)
                return true;
        }
        return false;
    }

    // Public function to enter the lottery
    function enter() payable public {
        require(msg.sender != manager, "Manager cannot enter");
        require(alreadyEntered() == false, "Player already entered");
        require(msg.value >= 1 ether, "Minimum amount must be paid");
        players.push(payable(msg.sender));
    }

    // Private function to generate a pseudo-random number
    function random() view private returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players)));
    }

    // Public function to pick a winner from the players
    function pickWinner() public {
        require(msg.sender == manager, "Only manager can pick the winner");
        require(players.length > 0, "No players in the lottery");
        
        uint index = random() % players.length;
        address contractAddress = address(this);
        
        // Transfer the contract balance to the winner
        (bool success, ) = players[index].call{value: contractAddress.balance}("");
        require(success, "Transfer failed.");
        
        // Reset the players array for the next round
        players = new address payable[](0); // Corrected line
    }

    // Public function to get the list of players
    function getPlayers() view public returns (address payable[] memory) {
        return players;
    }

    // Optional: Allow the contract to receive Ether directly
    receive() external payable {}
}
