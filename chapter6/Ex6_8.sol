// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Student {
    string private schoolName = "The University of solidity";
    string internal  schoolNumbers = "02-1234-5678";
}

contract ArtStudent is Student {
    function getSchoolNumbers() public view returns (string memory) {
        return schoolNumbers;
    }
    /*
    function getSchoolName() public view returns (string memory) {
        return schoolName;
    } 
    */   
}