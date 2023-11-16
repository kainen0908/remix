// 자료형 uint 매개변수 _num을 가지는 함수 revertFunction을 정의
// 매개변수 _num이 6이상이면 revert를 통해 오류를  발생
// 오류 메시지 _num must not be more than 5
// 입력값이 5 이하이면 출력

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex7_6 {
    function revertFunction(uint _num) public pure returns (uint) {
        //if(_num >=6) {
        //    revert("_num must not be more than 5");
        //}
        require(_num< 6, "_num must not be more than 5");//require로 구현
        return _num;
    }
}