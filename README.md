# sol-mura

A collection of simple Solidity smart contracts demonstrating core concepts such as ERC20 tokens, struct usage, and checked/unchecked arithmetic.

## Contracts

- **[`ERC20`](ERC20.sol)**:  
  A basic implementation of the ERC20 token standard with minting, burning, and transfer functionality.

- **[`IERC20`](IERC20.sol)**:  
  The ERC20 interface specifying required functions and events.

- **[`MyContract`](MyContract.sol)**:  
  A contract that accepts ERC20 token payments using the `transferFrom` method.

- **[`Struct`](Struct.sol)**:  
  Demonstrates how to use structs and mappings to store user information on-chain.

- **[`CheckedUnchkedTest`](CheckedUnchkedTest.sol)**:  
  Shows the difference between checked and unchecked arithmetic operations in Solidity.

## Usage

1. Clone or download this repository.
2. Open the contracts in [Remix](https://remix.ethereum.org/) or your preferred Solidity development environment.
3. Compile the contracts with Solidity version `^0.8.2`.
4. Deploy and interact with the contracts as needed.

## License

This project is licensed under the GPL-3.0 License.
