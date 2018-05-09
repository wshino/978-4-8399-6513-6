pragma solidity ^0.4.4;


library ConvertLib {
    // ①
    function convert(uint amount, uint conversionRate) public pure returns (uint convertedAmount)
    {
        return amount * conversionRate;
    }
}