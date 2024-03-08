// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import { Sphinx } from "@sphinx-labs/contracts/SphinxPlugin.sol";

contract DeploymentGlobals is Sphinx {
    mapping(uint256 => address) public ecoAddressByChain;
    address public squidAddress;

    constructor() {
        // SET SQUID
        squidAddress = 0xce16F69375520ab01377ce7B88f5BA8C48F8D666;
        // this should be dependent on mainnet or testnet....


        // SET ECO

        // Mainnet and its testnets
        ecoAddressByChain[1] = 0x8dBF9A4c99580fC7Fd4024ee08f3994420035727;
        ecoAddressByChain[5] = 0x8dBF9A4c99580fC7Fd4024ee08f3994420035727;
        ecoAddressByChain[11155111] = 0x8dBF9A4c99580fC7Fd4024ee08f3994420035727;
        ecoAddressByChain[17000] = 0x8dBF9A4c99580fC7Fd4024ee08f3994420035727;

        // Optimism and its goerli
        ecoAddressByChain[10] = 0xe7BC9b3A936F122f08AAC3b1fac3C3eC29A78874;
        ecoAddressByChain[420] = 0xe7BC9b3A936F122f08AAC3b1fac3C3eC29A78874;
    }

    function configureSphinx() public override {
        sphinxConfig.owners = [<YOUR_EOA_ADDRESS>]; // Owner address(es)
        sphinxConfig.orgId = <YOUR_SPHINX_ORG_ID>; // Org ID (string)
        sphinxConfig.projectName = "Peanut";
        sphinxConfig.threshold = 1;
    }
}
