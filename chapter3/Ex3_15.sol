
// 솔리디티 프로그램의 저장공간 구분
// storage : 영속적으로 읽기 쓰기 가능
//           키와 값의 쌍으로 이루어진 매핑 구조 각 키과 값은 32 byte 크기
//           함수 외부에 선언된 변수, 함수와 같은 스마트 컨트랙트의 주요 정보 저장
//           다른 저장공간보다 가스 비용이 비싸다.
// memory : 휘발적으로 읽기 쓰기가 가능한 저장공간. 함수의 매개변수, 반환값, 지역 변수
// calldata : memory와 비슷하나 데이터의 저장이 불가능. 트랜잭션 또는 call 함수의 매개변수
//            external 이 적용된 함수의 매개변수에 사용
// stack : 이더리움 가상 머신에서 휘발성을 가진 데이터를 유지 관리하는 공간. 최대 1024Mb

 // SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_15 {
    function myFun(string memory str) public pure returns (uint, string memory, bytes memory) {
        uint num = 90;
        bytes memory byt = hex"01";
        return (num, str, byt);
    }
}
