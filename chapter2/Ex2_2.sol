// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Ex2_2 {
    string a = "Hello";

    function assignment() public returns (string memory) {
        a="Hello Solidity";
        return(a);
    }
}