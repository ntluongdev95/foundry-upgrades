// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import {UUPSUpgradeable} from @openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol
import {Initializable}

contract BoxV1 is UUPSUpgradeable {
    uint256 public number;

    function getNumber() public returns (uint256) {
        return number;
    }
    
    function version () public pure returns(uint8){
        return 1;
    }
    function _authorizeUpgrade(address newImplementation) internal override{};
    

}