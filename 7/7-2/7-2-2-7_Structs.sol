pragma solidity ^0.4.16;


contract Structs {

    struct User {
        string name;
        string email;
    }

    User[] public users;

    function addUser(string _name, string _email) {
        users.push(User(_name, _email));
    }

    function getUser(uint _id) returns (string, string){
        // User storage u = users[_id];
        // u.name = "changed";
        return (users[_id].name, users[_id].email);
    }
}