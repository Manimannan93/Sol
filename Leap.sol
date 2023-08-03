// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

 contract Leapyear{

     uint year;


     function setYear (uint X) public  {

         year = X;
     }

     function checkYear () public view returns(string memory){

         if (year % 4 == 0 && year%100 !=0){

             return "This is Leap year";

         }
         else{
             return "This is not leap year";
         } 
     }
          
 } 
     
 
     //        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

     

     //    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

