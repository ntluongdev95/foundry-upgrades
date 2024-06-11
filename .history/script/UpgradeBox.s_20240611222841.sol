// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;
import {Script,console} from "forge-std/Script.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";
import {BoxV2} from "../src/BoxV2.sol";
import {BoxV1} from "../src/BoxV1.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {DeployBox} from "./DeployBox.s.sol";

contract UpgradeBox is Script{
   
   function run() external returns (address){
      address mostRecentlyDeployed =DevOpsTools.get_most_recent_deployment("ERC1967Proxy",block.chainid);
      console.log(mostRecentlyDeployed);
      DeployBox deployer = new DeployBox();
      address _currentProxy = deployer.run();
       vm.startBroadcast();
       BoxV2 newBox = new BoxV2();
       vm.stopBroadcast();
      address newProxy  = upgradeBox(_currentProxy,address(newBox));
      return address(newProxy);
   }
    function upgradeBox(address _proxy,address _newBox) public returns (address){
        vm.startBroadcast();
       
        proxy.upgradeTo(address(_newBox), new bytes(0));
        vm.stopBroadcast();
        return address(proxy);
    }

}