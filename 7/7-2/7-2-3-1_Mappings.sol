pragma solidity ^0.4.23;


contract Mappings {

    struct User {
        string name;
        string email;
    }

    mapping (address => User) public users;

    function addUser(string _name, string _email) public {
        users[msg.sender].name = _name;
        users[msg.sender].email = _email;
    }

    function getUser() public view returns (string, string) {
        return (users[msg.sender].name, users[msg.sender].email);
    }
}