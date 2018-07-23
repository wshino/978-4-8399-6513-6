pragma solidity ^0.4.23;


contract Address {

    constructor () public payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function transfer(address _to, uint _amount) public {
        _to.transfer(_amount);
    }

    function send(address _to, uint _amount) public {
        require(_to.send(_amount));
    }

    function call(address _to, uint _amount) public {
        require(_to.call.value(_amount).gas(1000000)());
    }

    function withDraw() public {
        address to = msg.sender;
        to.transfer(address(this).balance);
    }

    function withDraw2() public {
        address to = msg.sender;
        require(to.call.value(address(this).balance).gas(1000000)());
    }
}
