pragma solidity ^0.4.23;


contract InternalFunctionCalls {
    // g()の中でf()を呼び出します
    function g(uint a) public returns (uint ret) {return f();}
    // f()の中でg()を呼び出し、かつf()を再帰的に呼び出します
    function f() public returns (uint ret) {return g(7) + f();}
}