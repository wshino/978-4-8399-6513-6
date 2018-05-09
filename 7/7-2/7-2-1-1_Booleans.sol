// バージョンプラグマの指定
pragma solidity ^0.4.23;

// コントラクトの宣言
contract Booleans {

    // aがtrueなのでbを評価せずtrueになります
    function getTrue() public pure returns (bool) {
        bool a = true;
        bool b = false;
        return a || b;
    }

    // aがfalseなのでbを評価せずfalseになります
    function getFalse() public pure returns (bool) {
        bool a = false;
        bool b = true;
        return a && b;
    }
}