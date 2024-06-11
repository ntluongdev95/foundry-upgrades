// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract BoxV2 {
    uint256 public number;

    function setNumber(uint256 _number) external {
        number = _number;
    }

    function getNumber() public returns (uint256) {
        return number;
    }
    
    function version () public pure returns(uint8){
        return 1;
    }
    
}
