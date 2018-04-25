pragma solidity ^0.4.23;


contract Bytes {

    function bybb() public pure returns (bytes2) {
        bytes2 b = "ba";
        return b;
    }

    function bybaab() public pure returns (bytes) {
        bytes memory a = 'baaaaaaaaaa';
        return a;
    }
}