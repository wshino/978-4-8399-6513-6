pragma solidity ^0.4.23;


contract NamedCalls {

    function f(uint key, uint value) public pure {
        // ...
    }

    function g() public pure {
        // key, valueの順番以外で呼び出します。ここではvalue, keyで関数f()を呼びます
        f({value : 2, key : 3});
    }
}