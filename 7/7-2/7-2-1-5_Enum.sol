pragma solidity ^0.4.16;


contract Enum {

    enum Colors {Red, Blue, Green}
    Colors color;
    Colors constant defaultColor = Colors.Green;

    function setColor() {
        color = Colors.Blue;
    }

    function getColor() returns (Colors) {
        return color;
    }

    function getDefaultColor() returns (uint) {
        return uint(defaultColor);
    }
}