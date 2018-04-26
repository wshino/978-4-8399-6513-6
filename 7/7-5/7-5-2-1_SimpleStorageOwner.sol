pragma solidity ^0.4.23;


contract SimpleStorageOwner {

    uint storedData;
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function set(uint x) public onlyOwner {
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}