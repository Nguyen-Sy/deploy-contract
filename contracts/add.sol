// Specifies the version of Solidity, using semantic versioning.
// Learn more: https://solidity.readthedocs.io/en/v0.5.10/layout-of-source-files.html#pragma
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.3;

// Defines a contract named `HelloWorld`.
// A contract is a collection of functions and data (its state). Once deployed, a contract resides at a specific address on the Ethereum blockchain. Learn more: https://solidity.readthedocs.io/en/v0.5.10/structure-of-a-contract.html
contract HelloWorld {

   //Emitted when update function is called
   //Smart contract events are a way for your contract to communicate that something happened on the blockchain to your app front-end, which can be 'listening' for certain events and take action when they happen.
   event UpdatedMessages(uint256 oldNumber, uint256 newNumber);

   // Declares a state variable `message` of type `uint256`.
   // State variables are variables whose values are permanently stored in contract storage. The keyword `public` makes variables accessible from outside a contract and creates a function that other contracts or clients can call to access the value.
   uint256 public number;

   // Similar to many class-based object-oriented languages, a constructor is a special function that is only executed upon contract creation.
   // Constructors are used to initialize the contract's data. Learn more:https://solidity.readthedocs.io/en/v0.5.10/contracts.html#constructors
   constructor(uint256  initNumber) {

      // Accepts a uint256 argument `initMessage` and sets the value into the contract's `message` storage variable).
      number = initNumber;
   }

   // A public function that accepts a uint256 argument and updates the `message` storage variable.
   function update(uint256  number1, uint256 number2) public {
      uint256 newNumber;
      newNumber = number1 + number2;
      number = newNumber;
      emit UpdatedMessages(number, newNumber);
   }

   function getNumber () public view returns(uint256){
      return number;
   }
}