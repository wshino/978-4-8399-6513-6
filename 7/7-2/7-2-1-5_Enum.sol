pragma solidity ^0.4.23;


contract Enum {

    enum Colors {Red, Blue, Green}
    Colors color;
    Colors constant defaultColor = Colors.Green;

    function setColor() public {
        color = Colors.Blue;
    }

    function getColor() public view returns (Colors) {
        return color;
    }

    function getDefaultColor() public pure returns (uint) {
        return uint(defaultColor);
    }
}