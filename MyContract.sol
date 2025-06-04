// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Father {
    uint256 public myNumber1;

    function setMyNumber1(uint256 newNumber) external {
        myNumber1 = newNumber;
    }
}
contract Mother {
    uint256 public myNumber2;

    function setMyNumber2(uint256 newNumber) external {
        myNumber2 = newNumber;
    }
}

contract Child is Father, Mother {
    function addToMyNumber(uint256 addition) external {
        myNumber1 += addition;
        myNumber2 += addition;
    }
}
