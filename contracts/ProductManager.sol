pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract ProductManager is Ownable {

    struct Product {
        uint id;
        bytes32 name;
        address producer;
        address currentHolder;
        bool reachedDestination;
    }

    mapping(uint => Product) productMapping;
    uint index;

    modifier onlyProducer {
        require(ProducerManager(someAdress).isProducer(msg.sender));
        _;
    }

    function ProductManager() public {
    }

    function registerProduct(uint id, bytes32 name) public onlyProducer {
        // Add a product to the product mapping
    }

}
