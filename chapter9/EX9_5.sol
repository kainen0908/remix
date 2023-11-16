// contract로 송금시 송금을 받으려면 작성해야하는 함수
// fallback: 원래부터 주어진 함수
// receive: 나중에 추가된 함수

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.6.0;

contract Ex9_5 {
    event Obtain(address from, uint amount);
    // 예전의 fallback 함수 작성법/무기명함수
    function() external payable { // external payable 선언필수 
        emit Obtain(msg.sender, msg.value);
    }

    function getBalance(address _address) public view returns(uint) {
        return _address.balance;
    }

    function sendEther(address payable _address) public payable {
        _address.transfer(msg.value);
    }
}