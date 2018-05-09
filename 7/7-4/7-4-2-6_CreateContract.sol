pragma solidity ^0.4.23;


contract Target {

    uint x;

    constructor(uint a) public payable {
        x = a;
    }
}


contract CreateContract {

    Target t = new Target(4); // CreateContractのコンストラクタとして実行されます

    function createTarget(uint arg) public {
        Target newTarget = new Target(arg);
        t = newTarget;
    }

    function createAndEndowTarget(uint arg, uint amount) public payable {
        // 作成と共にetherを送ります
        Target newTarget = (new Target).value(amount)(arg);
        t = newTarget;
    }
}