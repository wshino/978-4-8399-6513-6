pragma solidity ^0.4.23;


contract Sharer {

    function sendHalf(address addr) public payable returns (uint balance) {
        require(msg.value % 2 == 0);
        uint balanceBeforeTransfer = address(this).balance;
        addr.transfer(msg.value / 2);
        assert(address(this).balance == balanceBeforeTransfer - msg.value / 2);
        return address(this).balance;
    }
}