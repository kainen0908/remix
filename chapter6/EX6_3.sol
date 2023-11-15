// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex6_3 {

    //uint[] public immutable arr; // 배열과 같은 참조형은 immutable을 쓸 수 없다.    
    //uint public constant num1; // constant는 초기값을 반드시 지정해야함.
    uint public immutable num2;

    constructor(uint _num) {
        num2 = _num;
    }
/*
    function change() public {
        num2 = 10;
    }
*/
}