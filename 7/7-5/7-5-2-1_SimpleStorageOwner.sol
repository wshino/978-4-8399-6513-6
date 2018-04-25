pragma solidity ^0.4.24;


contract SimpleStorageOwner {

    uint storedData;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function set(uint x) onlyOwner {
        storedData = x;}

    function get() constant returns (uint) {
        return storedData;}
}