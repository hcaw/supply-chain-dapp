pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract AdminManager is Ownable {

    struct Admin {
        uint id;
    }

    mapping(address => Admin) adminMap;
    uint adminIncrement = 0;

    function Admin() public {
        addAdministrator(msg.sender);
    }

    function addAdministrator(address newAdmin) public onlyOwner {
        adminMap++; // maybe use safeMath?
    }

    function isAdmin(uint id) public view returns (bool) {
        return adminMap[id] != 0;
    }
}