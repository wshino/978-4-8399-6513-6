pragma solidity ^0.4.23;


contract Integers {

    function getTwo() public pure returns (uint) {
        uint a = 3;
        uint b = 2;
        return a / b * 2;
    }

    function getThree() public pure returns (uint) {
        return 3 / 2 * 2;
    }

    function divByZero() public pure returns (uint) {
        return 3 / 0;
    }

    function shift() public pure returns (uint[2]) {
        uint[2] memory a;
        a[0] = 16 << 2;
        a[1] = 16 >> 2;
        return a;
    }
}