contract Vulnerable {
    function () payable {
        revert();
    }
    function doSomething() {
        require(this.balance > 0);
        // The code below may be executed
        // ...
    }
}