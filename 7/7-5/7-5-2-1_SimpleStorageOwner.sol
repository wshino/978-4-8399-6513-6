pragma solidity ^0.4.23;


contract SimpleStorageOwner {
    uint storedData;
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        // コントラクトへの呼び出しがコントラクトの作成者かを確認する
        // 違ったらrevertが発生します
        require(msg.sender == owner);
        // _ は修飾子がつけられた関数を実行するという意味
        _;
    }

    function set(uint x) public onlyOwner {
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}