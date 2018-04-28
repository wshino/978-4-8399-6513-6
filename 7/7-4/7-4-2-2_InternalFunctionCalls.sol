pragma solidity ^0.4.23;


contract InternalFunctionCalls {

    function g(uint a) public returns (uint ret) {return f();}

    function f() public returns (uint ret) {return g(7) + f();}
}