// scripts/upgrade-box.js
const { ethers, upgrades } = require("hardhat");

async function main() {

  const BoxV2 = await ethers.getContractFactory("BoxV1");
  const box = await upgrades.upgradeProxy("0x3fce4B5209DF9F276cDD5422e0b604B8Be5952ff", BoxV2);
  console.log("Box upgraded");
}

main();