pragma solidity ^0.4.23;


contract Assignment {

    uint[] data;

    // uint, bool, uintの3つの値を返す関数です
    function f() public pure returns (uint, bool, uint) {
        return (7, true, 2);
    }

    function g() public {
        // 複数値で各々を取ります。型を明示することはできませんので注意していください。
        var (x, b, y) = f();
        // 既に定義されている変数にまとめて代入します
        (x, y) = (2, 7);
        // swapする際の便利な手法です
        (x, y) = (y, x);
        // length に7を代入します
        // タプルが空の値で終わってる場合は残りは破棄されます
        (data.length,) = f();
        // 同様に左側を破棄することもできます
        // data[3]に2が代入されます
        (, data[3]) = f();
    }
}