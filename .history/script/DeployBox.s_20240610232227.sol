// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;
import {Script} from "forge-std/Script.sol";
import{BoxV1} from "..src/BoxV1.sol";

contract DeployBox is Script{
   

    function run () external returns (address){
       address proxy = deployBoxV1();
       return proxy;
    }
    function deployBoxV1() public return


}