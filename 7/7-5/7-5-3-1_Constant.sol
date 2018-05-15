pragma solidity ^0.4.23;


contract Constant {

    uint constant public data = 42;

    // エラー。定数は変更できません
    function set() public returns (uint) {
        data = 20;
    }
}