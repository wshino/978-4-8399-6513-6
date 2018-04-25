pragma solidity ^0.4.23;


contract Booleans {

    function getTrue() public pure returns (bool) {
        bool a = true;
        bool b = false;
        return a || b;
    }

    function getFalse() public pure returns (bool) {
        bool a = false;
        bool b = true;
        return a && b;
    }
}