pragma solidity ^0.4.16;


contract Booleans {

    function getTrue() constant returns (bool) {
        bool a = true;
        bool b = false;
        return a || b;
    }

    function getFalse() constant returns (bool) {
        bool a = false;
        bool b = true;
        return a && b;
    }
}