# IU2141230145
# Solidity Smart Contract Assignment

## Overview
This repository contains a collection of Solidity smart contracts demonstrating various basic functionalities. Each contract serves a specific purpose, such as crowdfunding or voting mechanisms. The contracts include comprehensive comments explaining their functionality.

## Repository Structure

- **Crowdfunding Contract**
  - [`q1.sol`](q1.sol): Implements a crowdfunding platform where users can create campaigns, contribute funds, and finalize or withdraw contributions based on the campaign's success.

- **Voting System Contract**
  - [`q2.sol`](q2.sol): Implements a voting system where users can propose options, vote for them, and query proposal details and the winning proposal.

## Smart Contract Descriptions

### 1. **Crowdfunding ([`q1.sol`](q1.sol))**
   - **Description:** A crowdfunding contract allowing users to create campaigns, contribute Ether, and finalize or withdraw funds based on whether the campaign meets its funding target.
   - **Key Functions:**
     - `createCampaign(uint256 _targetAmount, uint256 _duration)`: Creates a new campaign with a target amount and deadline.
     - `contribute(uint256 _campaignId)`: Contributes Ether to a specified campaign.
     - `finalizeCampaign(uint256 _campaignId)`: Finalizes the campaign and transfers funds if the target is met.
     - `withdrawContribution(uint256 _campaignId)`: Allows contributors to withdraw their contributions if the campaign fails.

### 2. **Voting System ([`q2.sol`](q2.sol))**
   - **Description:** A voting system contract where users can propose options, vote for them, and get details about proposals and the winning proposal.
   - **Key Functions:**
     - `propose(string calldata _description)`: Proposes a new option with a description.
     - `vote(uint256 _proposalId)`: Casts a vote for a specified proposal.
     - `getProposalsCount()`: Retrieves the number of proposals.
     - `getProposal(uint256 _proposalId)`: Retrieves details of a specified proposal.
     - `getWinningProposal()`: Retrieves the ID of the proposal with the most votes.

## Usage

1. **Compilation**: Use a Solidity compiler like `solc` or an online IDE such as [Remix](https://remix.ethereum.org) to compile the contracts.
2. **Deployment**: Deploy the contracts to an Ethereum test network (e.g., Ropsten, Rinkeby) or a local Ethereum network like Ganache.
3. **Interaction**: After deployment, interact with the contracts using a web3 interface, such as Remix or libraries like `web3.js` or `ethers.js`.
