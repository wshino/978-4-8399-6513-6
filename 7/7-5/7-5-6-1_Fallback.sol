pragma solidity ^0.4.23;


contract Fallback {

    uint public counter = 1;

    function() public payable {
        if (msg.value <= 0) {
            revert();
        }
        counter++;
    }
}