pragma solidity ^0.4.16;


contract Declarations {

    function foo() returns (uint) {
        uint bar = 5;
        if (true) {
            bar += baz;
        }
        else {
            uint baz = 10;
        }
        return bar;
    }
}