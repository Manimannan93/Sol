// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Foodmenu{

    address  private  owner;
    uint totalNoFood = 0;

    // string name; //it does not require to declare it bcoz we get a user input on function
    // string day;


    struct Menu{
    string item;
    uint8 price;

    }

    constructor () {

        owner=msg.sender;
    }

    mapping (string => mapping(string=> Menu)) public foodOrdered;
    mapping (string =>Menu) public totalOrdered;

    function setMenu (string memory _Name, string memory _Day, string memory _Item, uint8 _Price) public {
        totalNoFood++;
        foodOrdered[_Name][_Day] = Menu(_Item, _Price);
        totalOrdered[_Day]= Menu(_Item,_Price);
        
    }

    function getMenu (string memory _Name, string memory _Day) public view returns(Menu memory) {

        return foodOrdered[_Name][_Day]; //always use keyvalue to get the value in the program.

    }

    function getTotal (string memory _Name, string memory _Day) public view returns (Menu memory){
        return totalOrdered [_Name][_Day];

    }   
    

    
}