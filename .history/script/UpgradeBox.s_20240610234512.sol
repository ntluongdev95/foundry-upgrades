// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;
import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";
import {BoxV2} from "../src/BoxV2.sol";

contract UpgradeBox is Script{
   
   function run() external returns (address){
      address mostRecentlyDeployed =DevOpsTools.get_most_recent_deployment("ERC1967Proxy",block.chainid);
       vm.startBroadcast();
       BoxV2 newBox = new BoxV2();
       vm.stopBroadcast();
       address proxy  = upgradeBox(mostRecentlyDeployed,newBox);
      return proxy;
   }
   

}