pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract AdminManager is Ownable {

    struct Admin {
        uint id;
    }

    mapping(address => Admin) adminMap;
    uint adminIncrement = 0;

    function AdminManager() public {
        addAdministrator(msg.sender);
    }

    function addAdministrator(address newAdmin) public onlyOwner {
        adminMap[newAdmin] = Admin(++adminIncrement); // maybe use safeMath?
    }

    function isAdmin(address entity) public view returns (bool) {
        return adminMap[entity].id != 0;
    }
}