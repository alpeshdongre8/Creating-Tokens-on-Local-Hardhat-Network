# Create and Mint Tokens

## Description

We have created our own token. The contract have certain functionalities-
* Only the owner of the contract can Mint the Tokens.
* Anyone can Burn or Transfer the Tokens, if they hold.

## Getting Started

Create a new Hardhat Javascript Project using
```
npx hardhat
```

### Installing

* You have to install dependencies in order to connect Remix

```
npm install -g @remix-project/remixd
```

### Executing program

* After setting up everthing let's deploy this contract on the local hardhat network and interact with the deployed contract using Remix
* Connect to Remix
```
remixd -s ./ --remix-ide https://remix.ethereum.org
```
* Now, start the local hardhat network
```
npx hardhat node
```
* Lastly, go to Remix IDE, in the envirnoment section select the Hardhat Provider. Deploy and interact with the contract.

## Help

* Make sure you install all the hardhat dependencies needed to avoid getting an error.
```
npm install @nomicfoundation/hardhat-toolbox      
```

## Authors

Alpesh Dongre


## License

This project is licensed under the MIT License
