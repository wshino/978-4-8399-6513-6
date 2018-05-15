pragma solidity ^0.4.23;


contract Operator {
    constructor() public {
        int a = 10;
        int e = 3;

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
        // インクリメントとデクリメント
        a++;
        a--;
    }
}
