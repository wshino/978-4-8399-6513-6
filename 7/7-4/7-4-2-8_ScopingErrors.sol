pragma solidity ^0.4.23;


contract ScopingErrors {

    function scoping() public pure {
        uint i = 0;
        while (i++ < 1) {
            uint same1 = 0;
        }
        while (i++ < 2) {
            uint same1 = 0;
        }
    }

    function minimalScoping() public pure {
        {
            uint same2 = 0;
        }

        {
            uint same2 = 0;
        }
    }

    function forLoopScoping() public pure {
        for (uint same3 = 0; same3 < 1; same3++) {

        }
        for (uint same3 = 0; same3 < 1; same3++) {

        }
    }
}