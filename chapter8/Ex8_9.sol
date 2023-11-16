// substraction에 언더플로가 발생하지 않도로 Math 라이브러리를 정의
// unit에 라이브러리 적용

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.8.0;

library Math {
    function sub(uint _num1, uint _num2) internal pure returns(uint) {
        require(_num1 >= _num2, "Error: subtraction underflow");
        return _num1 - _num2;
    }
}


contract Ex8_9 {
    using Math for uint;
    function subtraction(uint _num1, uint _num2) public pure returns(uint) {
        return _num1.sub(_num2);
    }
}