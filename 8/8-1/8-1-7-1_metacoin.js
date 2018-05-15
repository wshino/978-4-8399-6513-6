var MetaCoin = artifacts.require("./MetaCoin.sol"); // ①

contract('MetaCoin', function (accounts) { // ②
    it("should put 10000 MetaCoin in the first account", function () { // ③
        return MetaCoin.deployed().then(function (instance) { // ④
            return instance.getBalance.call(accounts[0]); // ⑤
        }).then(function (balance) { // ⑥
            assert.equal(balance.valueOf(), 10000, "10000 wasn't in the first account"); // ⑦
        });
    });

    it("should call a function that depends on a linked library", function () { // ⑧
        // 各値を保持する変数の宣言
        var meta;
        var metaCoinBalance;
        var metaCoinEthBalance;

        // ⑨
        return MetaCoin.deployed().then(function (instance) {
            meta = instance;
            return meta.getBalance.call(accounts[0]);
        // ⑩
        }).then(function (outCoinBalance) {
            metaCoinBalance = outCoinBalance.toNumber();
            return meta.getBalanceInEth.call(accounts[0]);
        // ⑪
        }).then(function (outCoinBalanceEth) {
            metaCoinEthBalance = outCoinBalanceEth.toNumber();
        // ⑫
        }).then(function () {
            assert.equal(metaCoinEthBalance, 2 * metaCoinBalance, "Library function returned unexpected function, linkage may be broken");
        });

    });

    it("should send coin correctly", function () {
        // コントラクトを保持する変数の宣言
        var meta;

        // Get initial balances of first and second account.
        // アカウントの数量を保持するための変数の宣言
        var account_one = accounts[0];
        var account_two = accounts[1];

        var account_one_starting_balance;
        var account_two_starting_balance;
        var account_one_ending_balance;
        var account_two_ending_balance;

        // 送る量を定義
        var amount = 10;

        // ⑬
        return MetaCoin.deployed().then(function (instance) {
            meta = instance;
            return meta.getBalance.call(account_one);
        // ⑭
        }).then(function (balance) {
            account_one_starting_balance = balance.toNumber();
            return meta.getBalance.call(account_two);
        // ⑮
        }).then(function (balance) {
            account_two_starting_balance = balance.toNumber();
            return meta.sendCoin(account_two, amount, {from: account_one});
        // ⑯
        }).then(function () {
            return meta.getBalance.call(account_one);
        // ⑰
        }).then(function (balance) {
            account_one_ending_balance = balance.toNumber();
            return meta.getBalance.call(account_two);
        }).then(function (balance) {
            account_two_ending_balance = balance.toNumber(); // ⑱
            assert.equal(account_one_ending_balance, account_one_starting_balance - amount, "Amount wasn't correctly taken from the sender"); // ⑲
            assert.equal(account_two_ending_balance, account_two_starting_balance + amount, "Amount wasn't correctly sent to the receiver"); // ⑳
        });
    });
});