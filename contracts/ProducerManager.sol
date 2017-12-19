pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract ProducerManager is Ownable {

    struct Producer {
        bytes32 name;
    }

    mapping(address => Admin) producerMap;

    function ProducerManager() public {
    }

    function addProducer(address newProducer, bytes32 name) public onlyOwner {
        producerMap[newProducer] = Producer(name);
    }

    function isProducer(address entity) public view returns (bool) {
        return producerMap[entity].name != 0x0;
    }
}