pragma solidity ^0.4.23;


contract Conversions {

    function f() public pure returns (uint8){
        int8 y = - 3;
        uint8 x = uint8(y);
        return x;
    }
}