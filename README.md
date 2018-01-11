# supply-chain-dapp

This is a decentralised application for a supply chain provenance system using Angular as the front-end framework.
All contracts are written by me unless otherwise stated.

## Architecture

Roles:
    - Admin
        - Form the governing body of the supply chain
        - Any admin can create a producer
        - Three admins must jointly appoint a new certifier or admin
    - Producers
        - Creates products
    - Certifiers
        - Certifies the authenticity (e.g. this is a real diamond) or a certain characteristic (e.g. organic) of a product
        - When a certifier certifies a product, they are staking their reputation

Artefacts:
    - Products
        - Can only be created by a registered producer
        - Properties
            - uint id (auto-increments for each product) - needed as can use address?
            - bytes32 productName
            - Producer associatedProducer
            - Certificate[] certifications
    - Certificates
        - Certifier associatedCertifier
        - CertificateType certificateType

## UI

When a consumer wants to check the authenticity of a product, they can access the Dapp and type in a code. This code will map to the address of a product. 

## In Future

    - Should support user authentication with uPort.
    - When a physical artefact (such as a certificate) is created, a scan of the document should be sent to IPFS, and its hash stored as a property of the product.
    - Aggregation of several products into one aggregate product (e.g. coffee that is a mix from several producers).

## Why use the blockchain?

Supply chain data suffers from fragmentation of storage with limited access rights.
Storing provenance data in a blockchain such as ethereum allows for immutable, persistent and permissioned storage.