 // SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_10 {
    uint public a = 3;
    function myFun() public pure returns(uint) {
        a = 4;
        return a;
    }
}
