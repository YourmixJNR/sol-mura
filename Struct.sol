// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Struct {
    // define a struct to hold user information
    struct User {
        string name;
        uint256 age;
        address walletAddress;
    }

    // declare a mapping to store users by their address
    mapping(address => User) public users;

    // function to add or update a user
    function setUser(string memory _name, uint256 _age) public {
        users[msg.sender] = User(_name, _age, msg.sender);
    }

    // function to get user information
    function getUser(address _userAddress) public view returns (User memory) {
        return users[_userAddress];
    }
}
