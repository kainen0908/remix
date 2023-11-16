// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex9_6 {
    event Obtain(address from, uint amount);
    // 현재의 함수 작성법 중 receive 함수 사용
    receive() external payable { // external payable 선언필수 
        emit Obtain(msg.sender, msg.value);
    }

    function getBalance(address _address) public view returns(uint) {
        return _address.balance;
    }

    function sendEther() public payable {
        payable(address(this)).transfer(msg.value);
    }
}