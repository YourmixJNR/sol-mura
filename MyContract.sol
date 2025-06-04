// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Parent {
    uint256 public myNumber;

    constructor() {
        myNumber = 40;
    }
    function setMyNumber(uint256 newNumber) external {
        myNumber = newNumber;
    }
}

contract Child is Parent {
    constructor() {
        // this will override the parent's constructor value
        myNumber = 20;
    }
    function addToMyNumber(uint256 addition) external {
        myNumber += addition;
    }
}
