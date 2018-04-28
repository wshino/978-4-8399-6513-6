pragma solidity ^0.4.23;

contract Auction {

    address currentLeader;

    uint highestBid;

    mapping (address => uint) usersBalance;

    function bid() public payable {
        require(msg.value > highestBid);
        usersBalance[currentLeader] += highestBid;
        currentLeader = msg.sender;
        highestBid = msg.value;
    }

    function withdraw() public {
        require(usersBalance[msg.sender] > 0);
        uint amount = usersBalance[msg.sender];
        assert(msg.sender.send(amount));
    }
}