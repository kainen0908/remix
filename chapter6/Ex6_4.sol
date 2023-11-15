// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Monitor {
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
    function show() public pure returns (string memory) {
        return "show";
    }
}

contract System {
    string public name = "XG12";
    function turnOn() public pure returns (string memory) {
        return "turnOn";
    }
}

contract Computer {
    Monitor public monitor;
    System public system;

    constructor() {
        monitor = new Monitor("DW12");
        system = new System();
    }

    function getAllNames() public view returns(string memory, string memory) {
        return(monitor.name(), system.name());
    }

    function start() public view returns(string memory, string memory) {
        return(monitor.show(), system.turnOn());
    }
}