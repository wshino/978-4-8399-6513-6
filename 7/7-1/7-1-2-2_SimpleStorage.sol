pragma solidity ^0.4.16;


contract SimpleStorage {

    uint storedData;

    function set(uint x) {
        storedData = x;
    }

    function get() view returns (uint) {
        return storedData;
    }
}