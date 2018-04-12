pragma solidity ^0.4.0;


contract Mappings {

    struct User {
        string name;
        string email;
    }

    mapping (address => User) public users;

    function addUser(string _name, string _email) {
        users[msg.sender].name = _name;
        users[msg.sender].email = _email;
    }

    function getUser() returns (string, string){
        return (users[msg.sender].name, users[msg.sender].email);
    }
}