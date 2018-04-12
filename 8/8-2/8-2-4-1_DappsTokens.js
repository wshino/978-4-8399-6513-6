var DappsToken = artifacts.require("./DappsToken.sol");

contract('DappsToken', function (accounts) {
    it("should put 1000 DappsToken in the first account", function () {
        return DappsToken.deployed().then(function (instance) {
            return instance.balanceOf.call(accounts[0]);
        }).then(function (balance) {
            assert.equal(balance.valueOf(), 1000, "1000 wasn't in the first account");
        });
    });
});