pragma solidity ^0.4.16;


contract Assignment {

    uint[] data;

    function f() returns (uint, bool, uint) {
        return (7, true, 2);
    }

    function g() {
        var (x, b, y) = f();
        (x, y) = (2, 7);
        (x, y) = (y, x);
        (data.length,) = f();
        (, data[3]) = f();
    }
}