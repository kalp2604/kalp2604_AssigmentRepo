# IU2141230145
# Lottery Smart Contract

This is a simple Lottery smart contract written in Solidity. The contract allows users to enter a lottery by paying a minimum amount of Ether. The manager of the contract can pick a random winner from the list of players.

## Contract Details

- **Manager**: The address that deploys the contract and manages the lottery.
- **Players**: An array of addresses that have entered the lottery.

## Functions

### `constructor()`

- Sets the manager as the contract deployer.

### `alreadyEntered()`

- Checks if the sender has already entered the lottery.
- **Visibility**: Private
- **Returns**: `bool`

### `enter()`

- Allows a user to enter the lottery by paying a minimum of 1 Ether.
- **Requirements**:
  - The sender must not be the manager.
  - The sender must not have already entered.
  - The sender must pay at least 1 Ether.

### `random()`

- Generates a pseudo-random number.
- **Visibility**: Private
- **Returns**: `uint`

### `pickWinner()`

- Allows the manager to pick a random winner from the list of players.
- Transfers the contract balance to the winner.
- Resets the players array for the next round.
- **Requirements**:
  - The sender must be the manager.
  - There must be at least one player in the lottery.

### `getPlayers()`

- Returns the list of players who have entered the lottery.
- **Visibility**: Public
- **Returns**: `address payable[]`

### `receive()`

- Allows the contract to receive Ether directly.

## Usage

1. **Deploy the Contract**: The deployer becomes the manager.
2. **Enter the Lottery**: Players can enter by sending at least 1 Ether.
3. **Pick a Winner**: The manager can pick a winner and transfer the contract balance to the winner.
