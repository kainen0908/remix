// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex5_6 {
    string[] public fruitArray = ["apple", "banana", "coconut", "durian", "etrog"];
    function linearSearch(string memory _word) public view returns(uint, string memory) {
        for(uint i = 0; i < fruitArray.length; ++i){
            //주어진 문자열을 내장함수 keccak256 함수를 이용하여 문자열에 고유한 해시값으로 변환
            if(keccak256(bytes(fruitArray[i]))==keccak256(bytes(_word))){
                return (i, fruitArray[i]);
            }
        }
        return(0, "Nothing");
    }
}