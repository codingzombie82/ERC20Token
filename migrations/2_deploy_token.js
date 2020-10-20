const VanProtocol = artifacts.require("VanProtocol");

module.exports = function(deployer) {


//MyToken.deployed().then((instance)=>{VANP=instance;})
//https://medium.com/returnvalues/developing-smart-contracts-erc20-token-fdae78ce7d7a
//truffle migrate --network ropsten
//truffle console --network ropsten
  deployer.deploy(VanProtocol);
};


// 1) truffle compile all
// 2) truffle migrate --network ropsten --reset
// 3) truffle console --network ropsten
// 4) npm i truffle-flattener --save
//truffle-flattener
//truffle-flattener .\contracts\MyToken.sol > MySole.sol