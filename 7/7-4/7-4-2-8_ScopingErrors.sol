pragma solidity ^0.4.16;


contract ScopingErrors {

    function scoping() {
        uint i = 0;
        while (i++ < 1) {
            uint same1 = 0;
        }
        while (i++ < 2) {
            uint same1 = 0;
        }
    }

    function minimalScoping() {
        {
            uint same2 = 0;
        }

        {
            uint same2 = 0;
        }
    }

    function forLoopScoping() {
        for (uint same3 = 0; same3 < 1; same3++) {

        }
        for (uint same3 = 0; same3 < 1; same3++) {

        }
    }
}