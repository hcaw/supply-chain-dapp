pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract ProducerManager is Ownable {

    struct Producer {
        uint id;
    }

    function ProducerManager() public {
    }
}