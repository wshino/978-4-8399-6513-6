pragma solidity ^0.4.23;


contract Selector {

    function e() public pure returns (bytes4) {
        return this.e.selector;
    }

    function f() public pure returns (uint) {
        return g();
    }

    function g() internal pure returns (uint) {
        return 0;
    }
}