 // SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_12 {
    uint public a = 4;
    function myFun() public view returns(uint) {
        //a = 3;
        uint b = a + 4;
        return b;
    }
}
