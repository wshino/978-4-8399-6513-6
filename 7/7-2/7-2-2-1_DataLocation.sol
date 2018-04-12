pragma solidity ^0.4.0;


contract DataLocation {

    uint[] x;

    function f(uint[] memoryArray) {
        x = memoryArray;
        var y = x;
        y[7];
        y.length = 2;
        delete x;
        // y = memoryArray;
        // delete y;
        g(x);
        h(x);
    }

    function g(uint[] storage storageArray) internal {}

    function h(uint[] memoryArray) {}
}