pragma solidity ^0.4.23;


contract DeleteExample {

    uint data;

    uint[] dataArray;

    function f() public {
        uint x = data;
        delete x;
        delete data;
        uint[] y = dataArray;
        delete dataArray;
    }
}