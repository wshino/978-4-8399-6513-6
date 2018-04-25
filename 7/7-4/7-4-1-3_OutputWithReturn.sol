pragma solidity ^0.4.23;


contract OutputWithReturn {

    function arithmetics(uint _a, uint _b) public pure returns (uint o_sum, uint o_product) {
        o_sum = _a + _b;
        o_product = _a * _b;
        return (o_sum, o_product);
    }
}