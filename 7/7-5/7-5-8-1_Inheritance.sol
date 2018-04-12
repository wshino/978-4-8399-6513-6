pragma solidity ^0.4.16;


contract A {

    uint countA;

    function incrementA() returns (uint) {
        countA++;
        return countA;
    }
}


contract B is A {

    uint countB;

    function incrementB() returns (uint, uint) {
        countB++;
        return (countA, countB);
    }
}