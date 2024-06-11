// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/src/Test.sol";
import {DeployBox} from "../script/DeployBox.s.sol";
import {UpgradeBox} from "../script/UpgradeBox.s.sol";
import {BoxV1} from "../src/BoxV1.sol";
import {BoxV2} from "../src/BoxV2.sol";

contract DeployAndUpgradeTest is Test{

    DeployBox public  deployBox;
    UpgradeBox public upgradeBox;
    address public OWNER = makeAddr("owner");
    address public proxy;

    function setUp() public {
        deployer = new Deployer();
        deployBox = new DeployBox();
        proxy = deployer.run(); //right now points to BoxV1

    }
    function test_Upgrade() public {
        BoxV2 boxV2
    }


}