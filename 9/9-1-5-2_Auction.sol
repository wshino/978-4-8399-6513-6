pragma solidity ^0.4.23;

contract Auction {

    address currentLeader;

    uint highestBid;

    mapping (address => uint) usersBalance;

    function bid() public payable {
        require(msg.value > highestBid);
        // 現在の最高価格入札者の返金額を更新する
        usersBalance[currentLeader] += highestBid;
        currentLeader = msg.sender;
        highestBid = msg.value;
    }

    function withdraw() public {
        require(usersBalance[msg.sender] > 0);
        // 返金額を取得
        uint amount = usersBalance[msg.sender];
        // 返金
        assert(msg.sender.send(amount));
    }
}