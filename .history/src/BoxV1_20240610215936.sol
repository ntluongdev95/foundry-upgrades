// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Bo {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
