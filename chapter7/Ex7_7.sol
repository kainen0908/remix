// 함수 arrPop을 try-catch에 적용
// try-catch가 적용된 함수명은 arrPopWithTryCatch bool값 반환
// arrPop이 try-catch에서 오류가 없다면 true 아니면 false
// try-catch 중 catch만 적용

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex7_7 {
    uint[] arr;
    function arrPop() public {
        arr.pop();
    }

    function arrPopWithTryCatch() public returns(bool) {
        try this.arrPop() {
            return true;
        } catch {
            return false;
        }
    }
}