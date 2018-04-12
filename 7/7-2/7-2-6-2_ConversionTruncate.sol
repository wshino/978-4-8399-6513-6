pragma solidity ^0.4.0;


contract ConversionTruncate {

    function f() returns (uint16){
        uint32 a = 0x12345678;
        uint16 b = uint16(a);
        return b;
    }
}