pragma solidity ^0.4.23;


contract InputParams {

    function taker(uint _a, uint _b) public pure {
        _a;
    }

    function taker(uint _a, uint) public pure {
        _a;
    }
}