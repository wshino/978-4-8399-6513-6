pragma solidity ^0.4.18;


import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract DappsToken is StandardToken {

    string public name = "DappsToken";

    string public symbol = "DTKN";

    uint public decimals = 18;

    function DappsToken(uint initialSupply) public {
        totalSupply_ = initialSupply;
        balances[msg.sender] = initialSupply;
    }
}