// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test,console} from "forge-std/Test.sol";
import {DeployBox} from "../script/DeployBox.s.sol";
import {UpgradeBox} from "../script/UpgradeBox.s.sol";
import {BoxV1} from "../src/BoxV1.sol";
import {BoxV2} from "../src/BoxV2.sol";

contract DeployAndUpgradeTest is Test{

    DeployBox public  deployer;
    UpgradeBox public upgrader;
    address public OWNER = makeAddr("owner");
    address public proxy;

    function setUp() public {
        deployer = new DeployBox();
        upgrader = new UpgradeBox();
        proxy = deployer.run(); //right now points to BoxV1
        console.log(msg.sender);
        log

    }
    function test_BoxV1() public{
        uint256 expectedValue =1 ;
        assertEq(expectedValue,BoxV1(proxy).version());
    }
    function test_Upgrade() public {
        BoxV2 box2 = new BoxV2();

        vm.prank(BoxV1(proxy).owner());
        console.log("owner1",BoxV1(proxy).owner());

        BoxV1(proxy).transferOwnership(msg.sender);

         console.log("owner2",BoxV1(proxy).owner());

         upgrader.upgradeBox(proxy,address(box2));
        uint256 expectedValue =2 ;
        assertEq(expectedValue,BoxV2(proxy).version());
        BoxV2(proxy).setNumber(10);
        assertEq(10,BoxV2(proxy).getNumber());
    }


}