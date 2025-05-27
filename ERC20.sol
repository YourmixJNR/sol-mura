// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract ERC20 {
    string public constant name = "MyTokenName";
    string public constant symbol = "MTN";
    uint8 public constant decimal = 18;

    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    mapping(address => mapping(address => uint256)) public allowance;

    function transfer(address to, uint256 value) public returns (bool) {
        require(
            balanceOf[msg.sender] >= value,
            "ERC20: Insufficient sender balance"
        );

        // msg.sender: decrease token balance by value
        balanceOf[msg.sender] -= value;

        // to: increase token balance by value
        balanceOf[to] += value;

        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) public returns (bool) {
        allowance[from][msg.sender] -= value;

        balanceOf[from] -= value;

        balanceOf[to] += value;

        return true;
    }

    function approve(address spender, uint256 value) public returns (bool) {
        allowance[msg.sender][spender] = value;
        return true;
    }
}
