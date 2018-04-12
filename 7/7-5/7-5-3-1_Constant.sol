pragma solidity ^0.4.0;


contract Constant {

    uint constant public data = 42;

    function set() returns (uint) {
        data = 20;
    }
}