pragma solidity ^0.4.23;


contract Sharer {

    function sendHalf(address addr) public payable returns (uint balance) {
        // 2で割れる金額しか許可しません
        require(msg.value % 2 == 0);
        uint balanceBeforeTransfer = address(this).balance;
        addr.transfer(msg.value / 2);
        // transferは失敗時に例外を出しますが、状態を戻せないため、
        // 必ず送金できているかを確認します
        assert(address(this).balance == balanceBeforeTransfer - msg.value / 2);
        return address(this).balance;
    }
}