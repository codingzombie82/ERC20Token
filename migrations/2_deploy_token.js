const MyToken = artifacts.require("MyToken");

module.exports = function(deployer) {

  const _name = 'VAN PROTOCOL1';
  const _symbole = "VANP1";
  const _decimals = 18;
  const _supply = 500000000;
//MyToken.deployed().then((instance)=>{VANP=instance;})
//https://medium.com/returnvalues/developing-smart-contracts-erc20-token-fdae78ce7d7a
  deployer.deploy(MyToken, _name, _symbole, _decimals, _supply);
};
