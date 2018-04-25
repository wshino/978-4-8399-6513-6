pragma solidity ^0.4.23;


contract MemoryArrays {

    function f(uint len) public pure {
        uint[] memory a = new uint[](7);
        bytes memory b = new bytes(len);
        a[6] = 8;
    }
}