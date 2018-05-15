pragma solidity ^0.4.23;


contract ScopingErrors {

    function scoping() public pure {
        uint i = 0;
        while (i++ < 1) {
            uint same1 = 0;
        }
        while (i++ < 2) {
            // 同一関数内でsame1を二度定義できません
            uint same1 = 0;
        }
    }

    function minimalScoping() public pure {
        {
            uint same2 = 0;
        }

        {
            // 同一関数内でsame2を二度定義できません
            uint same2 = 0;
        }
    }

    function forLoopScoping() public pure {
        for (uint same3 = 0; same3 < 1; same3++) {
        }
        // 同一関数内でsame3を二度定義できません
        for (uint same3 = 0; same3 < 1; same3++) {

        }
    }
}