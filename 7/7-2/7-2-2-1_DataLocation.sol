pragma solidity ^0.4.23;


contract DataLocation {

    uint[] x; // ローカル変数の宣言なのでstorageです

    // memoryArrayは関数内で使用されるのでmemoryです
    function f(uint[] memoryArray) public {
        x = memoryArray; // storageにmemoryArrayがコピーされます
        uint[] storage y = x; // xのポインタが入ります
        y[7]; // yの8番目の要素です
        y.length = 2; // y経由でxの長さを変更します
        delete x; // xを削除するとyも削除されます
        // 以下は動作しません。yはstorageとして静的に確保されています
        // y = memoryArray;
        // こちらも同様に動作しません。yを指し示すべき値が存在しないからです
        // delete y;
        g(x); // xへの参照をそのままgに渡します
        h(x); // xはstorageなのでmemoryをコピーしてhを実行します
    }

    function g(uint[] storage storageArray) internal pure {}

    function h(uint[] memoryArray) public pure {}
}