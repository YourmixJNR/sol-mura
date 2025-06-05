// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

//demonstrates multiple inheritance and function overriding in Solidity

contract GrandFather {
    string public myGrandFatherString;

    constructor(string memory s) {
        myGrandFatherString = s;
    }

    function setMyString() public virtual {
        myGrandFatherString = "GrandFather";
    }
}

abstract contract Father is GrandFather {
    string public myFatherString;

    constructor() {
        myFatherString = "S";
    }
}

contract Child is Father {
    string public myChildString;

    constructor(string memory s) GrandFather(s) {
        myChildString = s;
    }
}
