var DappsToken = artifacts.require("./DappsToken.sol"); // ①

// ②
module.exports = function (deployer) {
    var initialSupply = 1000;
    deployer.deploy(DappsToken, initialSupply);
}