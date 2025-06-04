// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Father {
    uint256 private myNumber;

    function setMyNumber(uint256 newNumber) external virtual {
        myNumber = newNumber;
    }
}
contract Mother {
    uint256 private myNumber;

    function setMyNumber(uint256 newNumber) external virtual {
        myNumber = newNumber;
    }
}

contract Child is Father, Mother {
    uint256 private myNumber;

    function addToMyNumber(uint256 addition) external {
        myNumber += addition;
    }

    function setMyNumber(uint256 newNumber) external override(Father, Mother) {
        myNumber = newNumber;
    }
}
