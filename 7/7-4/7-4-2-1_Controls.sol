pragma solidity ^0.4.23;


contract Controls {

    function f(uint _a, uint _b) public pure returns (uint res) {
        res = _a;
        // 数値からboolへの変換ができないのでエラーになります
        if (1) {
            res += _b;
        }
        // 括弧を省略できます
        if (true) res += _b;
    }
}