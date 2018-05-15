// This will not compile.
pragma solidity ^0.4.23;


contract ArrayLiteralsNotCompiled {
    function f() public pure {
        // uint[3]の配列リテラルなので動的なuint[]に代入することができません
        uint[] x = [uint(1), 3, 4];
    }
}