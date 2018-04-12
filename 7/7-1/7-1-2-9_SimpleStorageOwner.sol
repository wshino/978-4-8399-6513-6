pragma solidity ^0.4.0;


contract SimpleStorageOwner {

    uint storedData;
    address owner;

    function SimpleStorageOwner() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function set(uint x) onlyOwner {
        storedData = x;
    }

    function get() constant returns (uint) {
        return storedData;
    }
}