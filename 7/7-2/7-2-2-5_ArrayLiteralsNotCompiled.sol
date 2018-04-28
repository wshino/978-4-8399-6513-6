// This will not compile.
pragma solidity ^0.4.23;


contract ArrayLiteralsNotCompiled {
    function f() public pure {
        uint[] x = [uint(1), 3, 4];
    }
}