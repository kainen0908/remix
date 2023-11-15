// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex5_3 {
    uint[] public array1;
    string[5] public array2 = ["apple", "banana", "coconut"];

    function getLength1() public view returns(uint) {
        return array1.length;
    }

    function getLength2() public view returns(uint) {
        return array2.length;
    }
/*
    function getArray1(uint _index) public view returns(uint) {
        return array1[_index];
    }    

    function getArray2(uint _index) public view returns(string memory) {
        return array2[_index];
    }
*/
    function addArray1(uint _value) public {
        array1.push(_value);
    }
/*
    function addArray2(string memory _value) public {
        array2.push(_value);//처음부터 크기 고정되어 추가 불가능
    }
*/
    function changeArray1(uint _index, uint _value) public {
        array1[_index] = _value;
    }

    function changeArray2(uint _index, string memory _value) public {
        array2[_index] = _value;
    }

    function popArray() public {
        array1.pop();
    }

    function deleteArray(uint _index) public {
        delete array1[_index];
    }
}