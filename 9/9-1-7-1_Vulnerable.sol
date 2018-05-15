contract Vulnerable {
    function () payable {
        revert();
    }
    function doSomething() {
        require(this.balance > 0);
        // この下のコードが実行される可能性があります
        // ...
    }
}