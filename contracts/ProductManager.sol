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

    function ProductManager() public {
    }

}
