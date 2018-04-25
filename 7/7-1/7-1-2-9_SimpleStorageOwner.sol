pragma solidity ^0.4.16;


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

    function get() view returns (uint) {
        return storedData;
    }
}