pragma solidity ^0.4.23;


contract Omitted {
    // funcの2つめのuintは省略されています
    function func(uint k, uint) public pure returns (uint) {
        return k;
    }
}