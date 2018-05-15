// バージョンプラグマの指定
pragma solidity ^0.4.23; // ①

// コントラクトの宣言
contract SimpleStorage {

    // 変数の宣言
    uint storedData; // ②

    // storedDataを変更する　③
    function set(uint x) public {
        storedData = x;
    }

    // storedDataを取得する ④
    function get() public view returns (uint) {
        return storedData;
    }
}