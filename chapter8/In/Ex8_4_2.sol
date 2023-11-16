// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract PartTimer {
    string public workPlace = "A pizza shop";
    uint public workingHours;
    constructor(uint _workingHours) {
        workingHours = _workingHours;
    }
    function time() public virtual  returns(uint) {
        return workingHours;
    }
}