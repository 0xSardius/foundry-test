// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Calculator {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function decrement() public {
        number--
    }

    function multiplyNumber(uint256 _multiplier) public {
        number = number * _multiplier;
    }

    function divideNumber(uint256 _divisor) public {
        number = number / _divisor;
    }
}
