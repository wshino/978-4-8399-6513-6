pragma solidity ^0.4.23;


contract Enum {

    enum Colors {Red, Blue, Green}
    Colors color;
    Colors constant defaultColor = Colors.Green;

    function setColor() public {
        color = Colors.Blue;
    }

    // setColorを呼ばない場合は、0(Red)が返ります
    // setColorを呼んだあとでは、1(Blue)が返ります
    function getColor() public view returns (Colors) {
        return color;
    }

    // 2(Green)が返ります
    function getDefaultColor() public pure returns (uint) {
        return uint(defaultColor);
    }
}