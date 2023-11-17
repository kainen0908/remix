// 당첨 수: 3; random하게 매 게임마다 결정
// 1참가자 0.01 ether: 합계 0.01
// 2참가자 0.01 ether: 합계 0.02
// 3참가자 0.01 ether: 합계 0.03 --> 당첨 / 그 동안 쌓인 금액을 가져감.
// 당첨이 되면 다음 회차로 넘어감
// 조건: 
// 1. 한계정(주소)의 참가자는 중복참여 x
// 2. 당첨 수나 회차 수 등의 민감한 정보는 게임 배포자만 확인가능.

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract RandomGame {
    event PaidAddress(address indexed sender, uint256 payment);
    event WinnerAddress(address indexed  winner);

    modifier onlyOwner() {
        require(msg.sender == owner, "Ownable: caller is not the owner");
        _;
    }

    mapping (uint256 => mapping (address => bool)) public paidAddressList;
    // 첫번째 입력: 회차수 1, 2, 3,...
    // 두번째 입력: 주소 (참가자 주소)
    // 최종 결과값: true - 해당 회차의 해당 주소의 참가자가 이미 참여했단 의미
    //             false - 해당 회차의 해당 주소의 참가자가 미참여

    address public owner;
    uint private winnerNumber = 0;
    string private  key1;
    uint private key2;

    uint public round = 1;
    uint public playNumber = 0;

    constructor(string memory _key1, uint _key2) {
        owner = msg.sender;
        key1 = _key1;
        key2 = _key2;
        winnerNumber = randomNumber();
    }

    function randomNumber() private view returns(uint) {
        uint num = uint(keccak256(abi.encode(key1))) + key2 + (block.timestamp) +(block.number);
        //return (num - (num/10)*10) +1;
        // num:  1234
        // num/10: 123
        // (num/10)*10: 1230
        // num-(num/10)*10: 1234-1230 = 4 / 0부터 9사이의 수
        // num-((num/10)*10)+1 / 1부터 10사이의 수
        return (num - (num/2)*2) +1;
    }

    receive() external payable {
        require(msg.value == 10**16, "Must be 0.01 ether.");
        require(paidAddressList[round][msg.sender] == false, "Must be the first time.");
        paidAddressList[round][msg.sender] == true;
        ++playNumber;

        if(playNumber == winnerNumber) {
            (bool success,) = msg.sender.call {value:address(this).balance}("");
            require(success, "Failed");
            playNumber = 0;
            ++round;
            winnerNumber = randomNumber();
            emit WinnerAddress(msg.sender);
        } else {
            emit PaidAddress(msg.sender, msg.value);
        }
    }

    function setSecretKey(string memory _key1, uint _key2) public onlyOwner() {
        key1 = _key1;
        key2 = _key2;
    }

    function getSecretKey() public view onlyOwner() returns (string memory, uint) {
        return (key1, key2);
    }

    function getWinnerNumber() public view onlyOwner() returns(uint256) {
        return winnerNumber;
    }

    function getRound() public view returns(uint256) {
        return round;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

