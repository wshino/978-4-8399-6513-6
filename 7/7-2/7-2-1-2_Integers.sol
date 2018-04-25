pragma solidity ^0.4.16;


contract Integers {

    function getTwo() pure returns (uint) {
        uint a = 3;
        uint b = 2;
        return a / b * 2;
    }

    function getThree() pure returns (uint) {
        return 3 / 2 * 2;
    }

    function divByZero() pure returns (uint) {
        return 3 / 0;
    }

    function shift() constant returns (uint[2]) {
        uint[2] a;
        a[0] = 16 << 2;
        a[1] = 16 >> 2;
        return a;

    }
}