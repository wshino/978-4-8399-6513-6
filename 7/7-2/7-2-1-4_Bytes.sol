pragma solidity ^0.4.23;


contract Bytes {

    // bytes2は2バイトの表現が可能です
    function bybb() public pure returns (bytes2) {
        bytes2 b = "ba";
        return b;
    }

    // bytesは動的サイズで、参照型です
    function bybaab() public pure returns (bytes) {
        bytes memory a = 'baaaaaaaaaa';
        return a;
    }
}