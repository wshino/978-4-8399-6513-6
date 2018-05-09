pragma solidity ^0.4.23; // ①

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol"; // ②

contract DappsToken is StandardToken { // ③

    string public name = "DappsToken"; // トークンの名称を設定

    string public symbol = "DTKN"; // トークンを単位として表す場合にどのように表記するかを設定

    uint public decimals = 18; // 小数点の桁をどこまで許可するかを設定

    // ④
    constructor(uint initialSupply) public {
        totalSupply_ = initialSupply;
        balances[msg.sender] = initialSupply;
    }
}