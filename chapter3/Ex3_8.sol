 // SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_8 {
    uint public a = 3;
    uint public b = myFun(4);
    function myFun(uint c) public returns(uint) {
        a = c;
        return a;
    }
}