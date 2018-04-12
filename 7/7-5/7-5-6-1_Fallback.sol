pragma solidity ^0.4.16;


contract Fallback {

    uint public counter = 1;

    function() payable {
        if (msg.value <= 0) {
            revert();
        }
        counter++;
    }
}