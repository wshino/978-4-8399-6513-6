pragma solidity ^0.4.16;


contract Address {

    function() payable {}

    function getBalance(address _t) view returns (uint) {
        if (_t == address(0)) {
            _t = this;
        }
        return _t.balance;
    }

    function transfer(address _to, uint _amount) {
        _to.transfer(_amount);
    }

    function send(address _to, uint _amount) {
        if (!_to.send(_amount)) {
            throw;
        }
    }

    function call(address _to, uint _amount) {
        if (!_to.call.value(_amount).gas(1000000)()) {
            throw;
        }
    }

    function withDraw() {
        address to = msg.sender;
        to.transfer(this.balance);
    }

    function withDraw2() {
        address to = msg.sender;
        if (!to.call.value(this.balance).gas(1000000)()) {
            throw;
        }
    }
}