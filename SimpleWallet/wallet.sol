//SPDX-License-Identifier:MIT

pragma solidity ^0.8.33;

contract Wallet {

 event change(address _one , uint _money);

 mapping (address => uint) public account ;

 function Withdraw(address _person , uint _amount) public {
 
 require(account[_person] == _amount , "You can't withdraw more than your wallet");

 account[_person] -= _amount ;

 emit change(_person , _amount);

  }


 function Deposit(address _person , uint _amount) public {
 
 account[_person] += _amount ;

 emit change(_person , _amount);


 }


   }
