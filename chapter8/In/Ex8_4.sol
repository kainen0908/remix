// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "../Ex8_4_1.sol";
import "./Ex8_4_2.sol";

contract Alice is ArtStudent(5), PartTimer(6) {
    uint public totalHours;
    constructor() {
        totalHours = schoolHours + workingHours;
    }
    function time() public override(ArtStudent, PartTimer) returns (uint) {
        return super.time();
    }
}