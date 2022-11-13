// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
 
contract Box {
    uint256 private value;
    address public admin;
 
    // Emitted when the stored value changes
    event ValueChanged(uint256 newValue);
 
    // Stores a new value in the contract
    function store(uint256 newValue) public {
        value = newValue;
        admin = msg.sender;
        emit ValueChanged(newValue);
    }
 
    // Reads the last stored value
    function retrieve() public view returns (uint256) {
        return value;
    }
}