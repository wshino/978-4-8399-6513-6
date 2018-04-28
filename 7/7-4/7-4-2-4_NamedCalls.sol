pragma solidity ^0.4.23;


contract NamedCalls {

    function f(uint key, uint value) public pure {
        // ...
    }

    function g() public pure {
        f({value : 2, key : 3});
    }
}