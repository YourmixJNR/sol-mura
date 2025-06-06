// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import {IERC20} from "./IERC20.sol";

contract ERC20 is IERC20 {
    // modifiers
    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "ERC20: Only owner can call this function"
        );
        _;
    }

    string public name;
    string public symbol;
    uint8 public immutable decimal;
    uint256 public totalSupply;

    address public owner;

    mapping(address => uint256) public balanceOf;

    mapping(address => mapping(address => uint256)) public allowance;

    constructor(
        address _owner,
        string memory _name,
        string memory _symbol,
        uint8 _decimal
    ) {
        name = _name;
        symbol = _symbol;
        decimal = _decimal;

        owner = _owner;
    }

    function transfer(address to, uint256 value) external returns (bool) {
        _transfer(msg.sender, to, value);
    }

    function _mint(address to, uint256 value) private {
        balanceOf[to] += value;
        totalSupply += value;
    }

    function mint(address to, uint256 value) external onlyOwner {
        _mint(to, value);
    }

    function _burn(address from, uint256 value) private {
        balanceOf[from] -= value;
        totalSupply -= value;
    }

    function burn(address from, uint256 value) external onlyOwner {
        _burn(from, value);

        emit Transfer(from, address(0), value);
    }

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external returns (bool) {
        require(
            allowance[from][msg.sender] >= value,
            "ERC20: Insufficient allwoance"
        );

        allowance[from][msg.sender] -= value;

        emit Approval(from, msg.sender, allowance[from][msg.sender]);

        _transfer(from, to, value);
    }

    function _transfer(
        address from,
        address to,
        uint256 value
    ) private returns (bool) {
        require(balanceOf[from] >= value, "ERC20: Insufficient sender balance");

        emit Transfer(from, to, value);

        balanceOf[from] -= value;

        balanceOf[to] += value;

        return true;
    }

    function approve(address spender, uint256 value) external returns (bool) {
        allowance[msg.sender][spender] += value;

        emit Approval(msg.sender, spender, value);

        return true;
    }
}
