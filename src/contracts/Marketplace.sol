pragma solidity ^0.5.0;

contract Marketplace {
    string public name;
    uint public productCount = 0;
    mapping(uint => Product) public products;

    struct Product {
        uint id;
        string name;
        uint price;
        address owner;
        bool purchased;
    }

    event ProductCreated(
    uint id,
    string name,
    uint price,
    address owner,
    bool purchased
    );

    constructor() public {
        name = "Shopp.co MarketPlace";
    }
    function createProduct(string memory _name, uint price) public {
        require (bytes(_name).length>0);
        require (_price>0);
        productCount++;
        products[productCount]=Product(productCount, _name, _price, msg.sender, false);
        emit ProductCreated(productCount, _name, _price, msg.sender, false);

    } 

}