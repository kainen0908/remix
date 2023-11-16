// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex9_8 {
    event Obtain(address from, uint amount);

    constructor() payable {
        emit Obtain(msg.sender, msg.value);
    }

    function getBalance(address _address) public view returns(uint) {
        return _address.balance;
    }

}