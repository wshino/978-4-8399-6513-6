pragma solidity ^0.4.16;


contract DeleteExample {

    uint data;

    uint[] dataArray;

    function f() {
        uint x = data;
        delete x;
        delete data;
        uint[] y = dataArray;
        delete dataArray;
    }
}