// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
// import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
// import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
// import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {BoxV1} from "./BoxV1.sol";



contract BoxV2 is BoxV1{
   
    function setNumber(uint256 _number) external {
        number = _number;
    }
    func

}
