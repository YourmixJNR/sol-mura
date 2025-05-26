// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
    uint number;


    function setNumber(uint newNumber) public  {
        number = newNumber;
    }

    function getNumber() public view returns (uint) {
        return number;
    }

    function getRandomNumber() public pure returns (uint) {
        return 9;
    }

    function payMeBackLess() external payable {

        require(msg.value >= 1 ether, "Must send at least 1 ether");

        uint randomNumber = getRandomNumber();
        uint ethRefund = msg.value / randomNumber;
        payable(msg.sender).transfer(ethRefund);
    }
}