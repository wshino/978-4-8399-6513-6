pragma solidity ^0.4.0;


contract Controls {

    function f(uint _a, uint _b) returns (uint res) {
        res = _a;

        if (1) {
            res += _b;
        }

        if (true) res += _b;
    }
}