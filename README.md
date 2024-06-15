

# Salvador Token (SAVY)

## Overview

The Salvador Token (SAVY) is an ERC20-compliant token built on the Ethereum blockchain. This token demonstrates basic functionalities of a custom cryptocurrency, including minting, burning, and transferring tokens. The project is designed to help developers understand the fundamental operations of creating and managing a custom ERC20 token.

## Features

- **Minting**: The contract owner can mint new tokens.
- **Burning**: Any token holder can burn (destroy) their tokens.
- **Transferring**: Any token holder can transfer their tokens to another address.
- **Ownership**: The contract uses OpenZeppelin's Ownable module, allowing only the contract owner to execute certain functions.

## Technologies Used

- Solidity (0.8.24)
- OpenZeppelin Contracts
- Remix IDE

## Getting Started

### Minting Tokens

Only the contract owner can mint new tokens. To mint 1000 new tokens, the owner can call the `mintToken` function.

```solidity
function mintToken() external onlyOwner {
    _mint(msg.sender, 1000);
}
```

### Burning Tokens

Any token holder can burn their tokens by calling the `burnToken` function with the amount to burn as the argument.

```solidity
function burnToken(uint256 amount) external {
    _burn(msg.sender, amount);
}
```

### Transferring Tokens

Any token holder can transfer their tokens to another address using the standard ERC20 `transfer` function.

Example of transferring tokens in JavaScript:


## Smart Contract Details

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token is ERC20("salvador", "savy"), Ownable(msg.sender) {

    function mintToken() external onlyOwner {
        _mint(msg.sender, 1000);
    }

    function burnToken(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [OpenZeppelin](https://openzeppelin.com/contracts/) for providing secure and community-reviewed smart contract libraries.

This README provides a concise overview of the Salvador Token project, including its purpose and usage instructions. It is designed to help developers understand and utilize the project effectively.
