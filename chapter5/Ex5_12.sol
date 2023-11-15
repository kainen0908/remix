// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex5_12 {

    uint[] public numbers = [1, 2, 3];
    uint[] public copyNumbers = numbers;

    function add() public returns(uint[] memory, uint[] memory) {
        copyNumbers.push(99);
        return(numbers, copyNumbers);
    }
}

// 외부 storage 배열을 지역 storage 배열에 대입: 얕은 복사.
// 외부 storage 배역을 지역 memory  배열에 대입: 깊은 복사.
// 그외 조합: 깊은 복사.