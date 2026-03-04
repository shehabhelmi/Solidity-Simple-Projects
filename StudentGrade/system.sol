//SPDX-License-Identifier : MIT

pragma solidity^0.8.33;

contract System {
 address owner;
 constructor() {
 owner = msg.sender ;
 }

 modifier OnlyOwner(){
 require(msg.sender == owner , "Not the Owner");
 _;
 }
 
 struct Student {
 string name ;
 uint grade ;
 }

 mapping(address => Student) public student;

 function Sign(string memory _name , uint _grade ) public {
 student[msg.sender]=Student(_name , _grade);
 }

 function ResetGrade(address studentAddress,string memory _name , uint _grade) public OnlyOwner(){
 student[studentAddress] = Student(_name , _grade);
 }

 }

