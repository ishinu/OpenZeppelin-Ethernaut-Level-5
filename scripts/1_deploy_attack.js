const { ethers } = require("hardhat");

var instanceAddress = 0xE666aC27852F1D40BAA57e0cD6918123f26b26cc;

async function main(){
    console.log("Deploying Attack contract...");
    const Attack = await ethers.getContractFactory("Attack");
    const attack = await Attack.deploy(instanceAddress);
    await attack.deployed();
    console.log("Attack contract deployed at : ",attack.address);
}

main();