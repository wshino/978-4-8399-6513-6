// バージョンプラグマの指定
pragma solidity ^0.4.23;

// コントラクトの宣言
contract SimpleStorageOwner {

    // 変数の宣言
    uint storedData;
    // コントラクトを作成したアカウントのアドレスを入れる ①
    address owner;

    // ②
    constructor() public {
        owner = msg.sender;
    }

    // ③
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    // storedDataを変更する ④
    function set(uint x) public onlyOwner {
        storedData = x;
    }

    // storedDataを取得する
    function get() public view returns (uint) {
        return storedData;
    }
}