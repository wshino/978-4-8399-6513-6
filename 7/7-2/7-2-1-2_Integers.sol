pragma solidity ^0.4.23;


contract Integers {

    // 3 / 2 は切り捨てられて1になり、1 * 2 で2が返ります
    function getTwo() public pure returns (uint) {
        uint a = 3;
        uint b = 2;
        return a / b * 2;
    }

    // リテラルなので 3 / 2 は切り捨てられず 1.5 になり、 1.5 * 2 で 3 が返ります
    function getThree() public pure returns (uint) {
        return 3 / 2 * 2;
    }

    // Solidityではコンパイルが通りません
    function divByZero() public pure returns (uint) {
        return 3 / 0;
    }

    function shift() public pure returns (uint[2]) {
        uint[2] memory a;
        a[0] = 16 << 2;
        a[1] = 16 >> 2;
        return a;
    }
}