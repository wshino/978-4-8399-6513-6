pragma solidity ^0.4.23;


contract ArrayLiterals {

    function f() public pure {
        g([uint(1), 2, 3]);
    }

    function g(uint[3] _data) public pure {
        // ...
    }
}
