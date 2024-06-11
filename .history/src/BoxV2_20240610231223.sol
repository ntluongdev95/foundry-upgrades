// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import {UUPSUpgradeable} from @openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol
import {Initializable} from @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol
import {OwnableUpgradeable} from @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol


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
