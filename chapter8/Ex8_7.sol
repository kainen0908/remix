// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.2.0-solc-0.7/contracts/math/SafeMath.sol";

contract Ex8_7 {
    using SafeMath for uint; // uint == uint256
    uint constant public MAX_UINT = ~uint(0); // (~ 01001001) == 10110110 (~ 0000) == (1111) ~는 비트반전

    function addition(uint _num) public pure returns(uint) {
        return MAX_UINT.add(_num);
    }
    function multiplication(uint _num) public pure returns(uint) {
        return MAX_UINT.mul(_num);
    }
    function division(uint _num) public pure returns(uint) {
        return MAX_UINT.div(_num);
    }
    function modulo(uint _num) public pure returns(uint) {
        return MAX_UINT.mod(_num);
    }
    function subtraction(uint _num1, uint _num2) public pure returns(uint) {
        return _num1.add(_num2);
    }
}

