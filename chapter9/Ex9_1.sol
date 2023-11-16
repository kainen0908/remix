// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 전역변수
// msg.value: 메시지와 함께 전송된 wei 개수 1ether = 10 ^ 18 wei
// msg.sender: 현재 호출한 메시지 발신자.

contract Ex9_1 {
    function getBalance(address _address) public view returns(uint) {
        return _address.balance; // 현재 주소에서 보유한 이더 잔액을 wei 단위로 표시
    }
    function getMsgValue() public payable returns(uint) {
        return msg.value;
    }
}