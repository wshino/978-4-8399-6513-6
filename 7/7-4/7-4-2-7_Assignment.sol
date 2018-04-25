pragma solidity ^0.4.23;


contract Assignment {

    uint[] data;

    function f() public pure returns (uint, bool, uint) {
        return (7, true, 2);
    }

    function g() public {
        uint x;
        bool b;
        uint y;
        (x, b, y) = f();
        (x, y) = (2, 7);
        (x, y) = (y, x);
        (data.length,) = f();
        (, data[3]) = f();
    }
}