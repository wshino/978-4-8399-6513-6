pragma solidity ^0.4.23;


contract Constant {

    uint constant public data = 42;

    function set() public returns (uint) {
        data = 20;
    }
}