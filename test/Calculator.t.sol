// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Calculator} from "../src/Calculator.sol";

contract CalculatorTest is Test {
    Calculator public calculator;

    function setUp() public {
        calculator = new Calculator();
        calculator.setNumber(0);
    }

    function test_Increment() public {
        calculator.increment();
        assertEq(calculator.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        calculator.setNumber(x);
        assertEq(calculator.number(), x);
    }
}
