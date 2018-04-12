pragma solidity ^0.4.0;


contract Bytes {

    function bybb() returns (bytes2) {
        bytes2 b = "ba";
        return b;
    }

    function bybaab() returns (bytes) {
        bytes memory a = 'baaaaaaaaaa';
        return a;
    }
}