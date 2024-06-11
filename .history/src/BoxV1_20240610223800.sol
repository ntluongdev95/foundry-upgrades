// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import {}@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol

contract BoxV1 {
    uint256 public number;

    function getNumber() public returns (uint256) {
        return number;
    }
    
    function version () public pure returns(uint8){
        return 1;
    }
    
}
