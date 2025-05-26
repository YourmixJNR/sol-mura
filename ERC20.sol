// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract ERC20 {
    string constant public  name = "MyTokenName";
    string constant public  symbol = "MTN";
    uint8 constant public  decimal = 18;

    uint256 public totalSupply;

    mapping (address => uint256) public  balanceOf;

    function transfer(address to, uint256 value) public returns (bool) {
        require(balanceOf[msg.sender] >= value, "ERC20: Insufficient sender balance");

        // msg.sender: decrease token balance by value
        balanceOf[msg.sender] -= value;

        // to: increase token balance by value
        balanceOf[to] += value;

        return true;
    }

}