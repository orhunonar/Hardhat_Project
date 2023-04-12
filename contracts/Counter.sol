// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9 ;

contract Counter{
    uint256 public total;
    uint256 public subtracted;
    uint256 public multiplied;
    uint256 public divided;

    function add(uint256 x, uint256 y) public {
        uint256 result = x + y;
        total = result;
    }

    function subtract(uint256 x, uint256 y) public {
        subtracted = x - y;
    }

    function multiply(uint256 x, uint256 y) public {
        uint256 result = x * y;
        multiplied = result;
    }

    function divide(uint256 x, uint256 y) public {
        require(y != 0, "Division by zero");
        divided = x / y;
    }

function getResults() public view returns (uint256, uint256, uint256, uint256) {
        return (total, subtracted, multiplied, divided);
    }



}

