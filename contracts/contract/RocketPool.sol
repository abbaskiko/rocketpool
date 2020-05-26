pragma solidity 0.6.8;

// SPDX-License-Identifier: GPL-3.0-only

// Global network information and functions

contract RocketPool {

    // Get the current RP network total ETH balance
    function getTotalETHBalance() public returns (uint256) {}

    // Get the current RP network staking ETH balance
    function getStakingETHBalance() public returns (uint256) {}

    // Get the current RP network ETH utilization rate as a fraction of 1 ETH
    // Represents what % of the network's balance is actively earning rewards
    function getETHUtilizationRate() public returns (uint256) {
        // Staking ETH balance / total ETH balance
    }

    // Get the current RP network deposit fee as a fraction of 1 ETH
    function getDepositFee() public returns (uint256) {}

    // Calculate the share of a final validator balance owned by its node operator
    function getValidatorNodeShare(uint256 _balance) public {
        // balance >= 32 ETH : balance / 2
        // balance >= 16 ETH & < 32 ETH : balance - 16
        // balance < 16 ETH : 0
    }

    // Set the current RP network total ETH balance
    // Only accepts calls from the RocketDepositPool & RocketETHToken contracts, or trusted (oracle) nodes
    function setTotalETHBalance(uint256 _balance) public {}

    // Set the current RP network staking ETH balance
    // Only accepts calls from trusted (oracle) nodes
    function setStakingETHBalance(uint256 _balance) public {}

    // Process a validator withdrawal from the beacon chain
    // Only accepts calls from trusted (withdrawer) nodes (TBA)
    function beaconWithdrawal() public {
        // 1. Calculate the share of the validator balance for node operators vs users
        // 2. Transfer the node operators' share to the nETH contract
        // 3. Transfer the users' share:
        //    - to the rETH contract if ETH utilization rate is >= minimum
        //    - to the deposit pool if ETH utilization rate is < minimum
    }

}
