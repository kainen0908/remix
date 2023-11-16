// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ArtStudent {
    string public schoolName = "The Solidity University";
    uint public schoolHours;
    constructor(uint _schoolHours) {
        schoolHours = _schoolHours;
    }
    function time() public virtual  returns(uint) {
        return schoolHours;
    }
}