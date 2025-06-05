// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

//demonstrates multiple inheritance and function overriding in Solidity

contract GrandFather {
    string public myGrandFatherString;

    function setMyString() public virtual {
        myGrandFatherString = "GrandFather";
    }
}

contract GrandMother {
    string public myGrandMotherString;

    function setMyString() public virtual {
        myGrandMotherString = "GrandMother";
    }
}

contract Father is GrandFather {
    string public myFatherString;

    function setMyString() public virtual override {
        myFatherString = "Father";
        super.setMyString();
    }
}

contract Mother is GrandMother {
    string public myMotherString;

    function setMyString() public virtual override {
        myMotherString = "Mother";
        super.setMyString();
    }
}

contract Child is Father, Mother {
    string public myChildString;

    function setMyString() public override(Father, Mother) {
        myChildString = "Child";
        Father.setMyString();
        Mother.setMyString();
    }
}
