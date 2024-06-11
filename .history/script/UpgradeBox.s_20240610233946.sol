// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;
import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";

contract UpgradeBox is Script{
   
   function run() external returns (address){
      address mostRecentlyDeployed =DevOpsTools.get_most_recent_deployment()
   }

}