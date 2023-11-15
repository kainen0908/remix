// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex5_10 {

    uint[] public numbers = [1, 2, 3];

    function _push99(uint[] storage _input) internal returns(uint[] memory) { 
        uint[] storage copyInput = _input; // memory로 배열 저장타입을 맞추면 push 불가
        copyInput.push(99);
        return copyInput;
    }

    function push99() public { // 간단하게 값을 추가할 수는 있으나 배열을 매개변수로 받을 수는 없음
        numbers.push(99);          // 배열을 받아서 처리하기 위해 위처럼 local storage 타입의 배열 변수를  한수안에서 사용해야함.
    }

    function add() public returns(uint[] memory, uint[] memory) {
        return (numbers, _push99(numbers));
    }
/*
    function push77(uint[] storage _input) public { // storage 사용불가
        input.push(77);
    }

    function push77(uint[] memory _input) public pure{ 
        //input.push(77); //memory도 사용불가(push가 안됨)
    }

    function map(mapping(uint => uint) memory _input) public {//storage, memory 모두 오류.

    }
*/    
}