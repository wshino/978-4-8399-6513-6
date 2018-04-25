pragma solidity ^0.4.16;


contract Arrays {

    uint[5] fArray = [uint(1), 2, 3, 4, 5];

    uint[] dArray;

    function getFifteen() returns (uint) {
        uint res = 0;
        for (uint i = 0; i < fArray.length; i++) {
            res = res + fArray[i];
        }
        return res;
    }

    function getDArray() returns (uint[]) {
        dArray.push(2);
        dArray.push(3);
        return dArray;
    }
}