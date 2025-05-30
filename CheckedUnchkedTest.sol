// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract CheckedUnchkedTest {
    function checkedAdd() public pure returns (uint256) {
        return type(uint256).max + 1;
    }

    function checkedSub() public pure returns (uint256) {
        return type(uint256).min - 1;
    }

    function checkedMul() public pure returns (uint256) {
        return type(uint256).max * 2;
    }

    function uncheckedAdd() public pure returns (uint256) {
        unchecked {
            return type(uint256).max + 1;
        }
    }

    function uncheckedSub() public pure returns (uint256) {
        unchecked {
            return type(uint256).min - 1;
        }
    }

    function uncheckedMul() public pure returns (uint256) {
        unchecked {
            return type(uint256).max * 2;
        }
    }
}
