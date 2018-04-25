pragma solidity ^0.4.16;


contract ArrayLiterals {
    function f() {
        g([uint(1), 2, 3]);
    }

    function g(uint[3] _data) {
        // ...
    }
}