pragma solidity ^0.4.23;


contract Selector {

    function e() public pure returns (bytes4) {
        // thisがつくと外部呼び出し
        return this.e.selector;
    }

    function f() public pure returns (uint) {
        // 内部呼び出しでselectorがないのでエラー
        //return f.selector;
        return g();
    }

    // internalをつけるとコントラクトと継承コントラクト以外からは呼べません
    function g() internal pure returns (uint) {
        return 0;
    }
}