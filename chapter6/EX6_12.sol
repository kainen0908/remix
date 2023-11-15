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

contract Alice is ArtStudent(5), PartTimer(6) {
    uint public totalHours;
    constructor() {
        totalHours = schoolHours + workingHours;
    }
    function time() public override(ArtStudent, PartTimer) returns (uint) {
        return super.time();
    }
}