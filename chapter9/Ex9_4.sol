// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex9_4 {

    function getBalance(address _address) public view returns(uint) {
        return _address.balance;
    }

    function ethDelivery1(address _address) public payable  {
        (bool result, ) = _address.call {value:msg.value, gas: 30000}("");
        require(result, "Failed");
    }
/* 0.7 이전 버전에서
    function ethDelivery2(address _address) public payable  {
        (bool result, ) = _address.call.value(msg.value).gas(30000)("");
        require(result, "Failed");
    }
*/    
}