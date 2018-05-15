pragma solidity ^0.4.23;


contract Declarations {

    function foo() public pure returns (uint) {
        // bazは関数の実行段階で暗黙的に0で初期化されています
        uint bar = 5;
        if (true) {
            bar += baz;
        }
        else {
            // if 文の条件がtrueなのでbazに10が入ることはありません
            uint baz = 10;
        }
        // 5が返ります
        return bar;
    }
}