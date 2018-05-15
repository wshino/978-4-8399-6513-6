pragma solidity ^0.4.23;


contract InputParams {

    function taker(uint _a, uint _b) public pure {
        _a;
    }

    // _bを使っていないのであれば_bは書かなくても良い
    function taker(uint _a, uint) public pure {
        _a;
    }
}