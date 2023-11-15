// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_19 {
    function funExt() external pure returns (uint) {
        return 2;
    }

    function funPri() private pure returns (uint) {
        return 3;
    }

    function outPutExt() public view returns (uint) {
        //return funExt();
        return this.funExt();
    }

    function outPutPri() public pure returns (uint) {
        return funPri();
    }
}