pragma solidity ^0.4.23;


contract InfoFeed {

    function info() public payable returns (uint ret) {return 42;}

    function getBalance() public view returns (uint){return address(this).balance;}
}


contract Consumer {
    InfoFeed feed;

    constructor() public payable {}

    function setFeed(address addr) public {feed = InfoFeed(addr);}

    function callFeed() public {feed.info.value(10).gas(800)();}

    function getBalance() public view returns (uint){return address(this).balance;}
}