pragma solidity ^0.4.23;


contract Operator {
    constructor() public {
        int a;
        int e;

        // a = a + e
        a += e;
        // a = a - e
        a -= e;
        // a = a * e
        a *= e;
        // a = a / e
        a /= e;
        // a = a % e
        a %= e;
        // a = a | e
        a |= e;
        // a = a & e
        a &= e;
        // a = a ^ e
        a ^= e;
        // increment and decrement
        a++;
        a--;
    }
}
