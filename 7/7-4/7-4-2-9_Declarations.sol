pragma solidity ^0.4.23;


contract Declarations {

    function foo() public pure returns (uint) {
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