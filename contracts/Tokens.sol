// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ALP_Token {

    string public token_name;
    string public token_symbol;
    uint256 public totalsupplies;
    mapping(address => uint256) public balance;
    address public owner;
    uint public max_mintable;

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }
    constructor() {
        token_name = "Alpesh";
        token_symbol = "ALP";
        totalsupplies = 0;
        max_mintable = 200;
        owner = msg.sender;
    }

    function mintToken(address to, uint256 amount) public onlyOwner {
        require(to != address(0), "Error");
        require(amount < max_mintable, "Exceed the maximum supply");
        totalsupplies += amount;
        balance[to] += amount;
        max_mintable -= amount;
    }

    function burnToken(uint256 amount) public {
        require(balance[msg.sender] >= amount, "Insufficient Balance");
        totalsupplies -= amount;
        balance[msg.sender] -= amount;
        max_mintable += amount;
    }

    function transferToken(address to, uint256 amount) public returns (bool) {
        require(to != address(0), "Error");
        require(balance[msg.sender] >= amount, "Insufficient balance");
        balance[msg.sender] -= amount;
        balance[to] += amount;
        return true;
    }
}