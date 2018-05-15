pragma solidity ^0.4.23;


contract DeleteExample {

    uint data;

    uint[] dataArray;

    function f() public {
        uint x = data;
        // xが0で初期化される
        delete x;
        // dataが0で初期化される
        // xはdataの値型をcopyしているため影響はありません
        delete data;
        uint[] y = dataArray;
        // dataArray.lengthを0にする
        // yはdataArrayへの参照のため、y.lengthも0になります
        // 参照から実体をdeleteできないため、delete yはエラーになります
        delete dataArray;
    }
}