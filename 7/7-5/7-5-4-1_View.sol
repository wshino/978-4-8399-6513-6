pragma solidity ^0.4.16;


contract View {

    function f(uint a, uint b) public view returns (uint) {
        return a * (b + 42) + now;
    }
}