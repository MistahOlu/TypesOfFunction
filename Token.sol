

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token is ERC20("salvador", "savy"), Ownable(msg.sender){

    function mintToken() external onlyOwner {
        _mint(msg.sender, 1000);
    }

    function burnToken(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
