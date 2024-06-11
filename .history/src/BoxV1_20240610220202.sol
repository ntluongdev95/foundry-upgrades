// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract BoxV1 {
    uint256 public number;

    function getNumber(uint256 newNumber) public returns {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
