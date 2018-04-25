pragma solidity ^0.4.16;


contract Booleans {

    function getTrue() pure returns (bool) {
        bool a = true;
        bool b = false;
        return a || b;
    }

    function getFalse() pure returns (bool) {
        bool a = false;
        bool b = true;
        return a && b;
    }
}