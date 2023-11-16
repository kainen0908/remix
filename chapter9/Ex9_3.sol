// 3가지 송금함수
// send: 주어진 양만큼 wei를 주소로 전달하며 실패시 false 반환, 성공시 true 반환. 가스 2300 gwei를 제공.
// transfer: 주어진 양만큼 wei를 주소로 전달하며 실패시 트랜잭션 실패, 성공시 가스 2300 gwei를 제공.
// call: 
// send와 transfer 둘다 payable 주소에서만 호출 가능.

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex9_3 {

    function getBalance(address _address) public view returns(uint) {
        return _address.balance;
    }

    function etherUnits() public pure returns(uint, uint, uint) {
        return (1 ether, 1 gwei, 1 wei);
    }
/*
    function ethDelivery1(address payable _address) public payable {
        bool result = _address.send(10 ether);
        require(result, "Failed");
    }
*/
    function ethDelivery1(address _address) public payable {
        bool result = payable(_address).send(10 ether);
        require(result, "Failed");
    }

    function ethDelivery2(address payable _address) public payable {
        _address.transfer(msg.value);
    }
/* 위와 동등한 코드
    function ethDelivery2(address _address) public payable {
        payable(_address).transfer(msg.value);
    }
*/
}