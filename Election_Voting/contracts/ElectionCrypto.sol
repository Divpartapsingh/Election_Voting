// SPDX-License-Identifier: GPL-3.0



pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";



contract ElectionCrypto is ERC20, ERC20Detailed {
    address payable owner;
 
    modifier onlyOwner {
        require(msg.sender == owner, "You do not have permission to mint these tokens!");
        _;
    }

    constructor(uint initial_supply) ERC20Detailed("ElectionCrypto", "ElectionCrypto", 18) public {
        owner = msg.sender;
        _mint(owner, initial_supply);
    }

    function mint(address recipient, uint amount) public onlyOwner {
        _mint(recipient, amount);
    }





    // function vote(address recipient, uint256 OTP, string memory email, string memory shareholder) public {
    //     _transfer(owner, recipient, 1);
    // }

}