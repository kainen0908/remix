 // SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Ex2_10 {
    bytes1 a = 0x10;  //00010000 :16
                      //00100000 :32
                      //00001000 : 8
    function left() public view returns (bytes1) {
        return a << 1;
    }
    function right() public view returns (bytes1) {
        return a >> 1;
    }    
}