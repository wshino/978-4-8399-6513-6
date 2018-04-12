var DappsToken = artifacts.require("./DappsToken.sol");

module.exports = function (deployer) {
    var initialSupply = 1000;
    deployer.deploy(DappsToken, initialSupply);
}