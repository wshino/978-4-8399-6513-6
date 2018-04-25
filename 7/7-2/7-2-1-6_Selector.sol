pragma solidity ^0.4.16;


contract Selector {

    function e() returns (bytes4) {
        return this.e.selector;
    }

    function f() returns (uint) {
        return g();
    }

    function g() internal returns (uint) {
        return 0;
    }
}