//SPDX-License-Identifier

pragma solidity ^0.8.33;

contract Counter {

 address public owner ;
 uint public value = 0 ;

 constructor() {
 owner = msg.sender;
 }

 modifier onlyOwner(){
 require (owner == msg.sender , "Not the owner");
 _;
 }

 event Changing( uint newValue ) ;

 function Increase( uint _value ) public {
 value += _value;
 emit Changing(value);
 }

 function Decrease( uint _value ) public {
 value -= _value ;
 emit Changing(value);
 }

 function ChangeValue( uint _value ) public onlyOwner() {
 value = _value ;
 emit Changing(value);
 }

 }
