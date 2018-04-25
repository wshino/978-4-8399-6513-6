pragma solidity ^0.4.16;


contract InfoFeed {

    function info() payable returns (uint ret) {return 42;}

    function getBalance() public returns (uint){return this.balance;}
}


contract Consumer {
    InfoFeed feed;

    function Consumer() payable {}

    function setFeed(address addr) {feed = InfoFeed(addr);}

    function callFeed() {feed.info.value(10).gas(800)();}

    function getBalance() public returns (uint){return this.balance;}
}