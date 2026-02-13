// SPDK-License-Identifier: MIT
pragma solidity ^0.8.33;
contract Con1{
 uint public number = 0 ;
 address public owner ;
 uint public starttime ;

 constructor(){
 owner = msg.sender;
 starttime = block.timestamp;
 }

 modifier isowner(){
 require(msg.sender == owner , "Not owner");
 _;
 }

 modifier afteR(){
 require(block.timestamp > starttime , "Too early");
 _;
 
  }

 function increase(uint _number) public isowner() afteR() {

 number = _number;

 }

 function decrease(uint _number) public isowner() {
 number = _number;
 }  

  }
