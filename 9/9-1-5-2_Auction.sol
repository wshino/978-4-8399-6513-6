contract Auction {

    address currentLeader;

    uint highestBid;

    mapping (address => uint) usersBalance;

    function bid() payable {
        require(msg.value > highestBid);
        usersBalance[currentLeader] += highestBid;
        currentLeader = msg.sender;
        highestBid = msg.value;
    }

    function withdraw() {
        require(usersBalance[msg.sender] > 0);
        uint amount = usersBalance[msg.sender];
        assert(msg.sender.send(amount));
    }
}