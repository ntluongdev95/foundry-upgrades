// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;
import {Script} from "forge-std/Script.sol";
import{BoxV1} from "..src/BoxV1.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

contract DeployBox is Script{