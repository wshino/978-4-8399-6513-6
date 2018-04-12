pragma solidity ^0.4.0;


contract Conversions {

    function f() returns (uint8){
        int8 y = - 3;
        uint8 x = uint8(y);
        return x;
    }
}