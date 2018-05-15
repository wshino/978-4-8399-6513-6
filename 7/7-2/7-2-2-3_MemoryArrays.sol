pragma solidity ^0.4.23;


contract MemoryArrays {

    function f(uint len) public pure {
        // uintの動的配列を7つ作成します
        uint[] memory a = new uint[](7);
        // サイズがlenの固定バイト配列を作成します
        bytes memory b = new bytes(len);
        a[6] = 8;
    }
}