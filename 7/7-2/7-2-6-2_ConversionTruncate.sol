pragma solidity ^0.4.23;


contract ConversionTruncate {

    function f() public pure returns (uint16){
        // 305419896がセットされます
        uint32 a = 0x12345678;
        // 切り捨てられて0x5678になります
        uint16 b = uint16(a);
        // 22136が返ります
        return b;
    }
}