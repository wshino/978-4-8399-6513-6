pragma solidity ^0.4.16;


contract NamedCalls {

    function f(uint key, uint value) {
        // ...
    }

    function g() {
        f({value : 2, key : 3});
    }
}