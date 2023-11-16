// 함수 value의 매개변수 _num이 5 초과시 함수가 실행되는 모디파이어를 작성.
// 모디파이어 이름은 numMoreThan5
// 오류 메시지: _num must be more than 5

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.8.0;

contract Ex8_8 {

    modifier numMoreThan5(uint _num) {
        require(_num > 5, "_num must be more than 5");
        _;
    }

    function value(uint _num) public pure numMoreThan5(_num) returns (uint) {
        return _num;
    }
}