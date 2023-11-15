// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

interface System {
    function versionCheck() external returns(uint);
    function errorCheck() external returns(bool);
    function boot() external returns(uint, bool);
}
//1. 인터페이스 끼리 상속 불가
//2. 함수의 정의부가 구현되어 있으면 안되고 external 지정
//3. 생성자를 정의 불가
//4. 필드를 정의할 수 없다.
//5. 모디파이어(pure, view, payable)를 지정할 수 없다.

contract Computer is System {
    function versionCheck() public pure override returns(uint) {
        return 3;
    }
    function errorCheck() public pure override returns(bool) {
        return true;
    }
    function boot() public pure override returns(uint, bool){
        return (versionCheck(), errorCheck());
    }
}

contract SmartPhone is System {
    function versionCheck() public pure override returns(uint) {
        return 25;
    }
    function errorCheck() public pure override returns(bool) {
        return false;
    }
    function boot() public pure override returns(uint, bool){
        return (versionCheck(), errorCheck());
    }  
}

contract Load {
    function versionCheck(address _addr) public returns(uint) {
        return System(_addr).versionCheck();
    }
    function errorCheck(address _addr) public returns(bool) {
        return System(_addr).errorCheck();
    }
    function boot(address _addr) public returns(uint, bool){
        return System(_addr).boot();
    }      
}
