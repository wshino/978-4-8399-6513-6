pragma solidity ^0.4.4;


import "./ConvertLib.sol";


contract MetaCoin {

    mapping (address => uint) balances; // ①

    event Transfer(address indexed _from, address indexed _to, uint256 _value); // ②

    // ③
    function MetaCoin() public {
        balances[tx.origin] = 10000;
    }

    // ④
    function sendCoin(address receiver, uint amount) public returns (bool sufficient) {
        if (balances[msg.sender] < amount) return false;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        Transfer(msg.sender, receiver, amount);
        return true;
    }

    // ⑤
    function getBalanceInEth(address addr) public view returns (uint){
        return ConvertLib.convert(getBalance(addr), 2);
    }

    // ⑥
    function getBalance(address addr) public view returns (uint) {
        return balances[addr];
    }
}