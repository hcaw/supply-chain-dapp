pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract HolderManager is Ownable {

    struct Holder {
        bytes32 name;
    }

    mapping(address => Admin) holderMap;

    function HolderManager() public {
    }

    function addHolder(address newHolder, bytes32 name) public onlyOwner {
        holderMap[newHolder] = Holder(name);
    }

    function isHolder(address entity) public view returns (bool) {
        return holderMap[entity].name != 0x0;
    }
}