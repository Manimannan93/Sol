// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Foodmenu{

    address  private  owner;
    uint totalNoFood = 0;

    // string name; //it does not require to declare it bcoz we get a user input on function
    // string day;


    struct Menu{
        string item;
        uint8 price;
    }
    struct Food{
        string food;
    }


    constructor () {
        owner=msg.sender;
    }

    mapping (string => mapping(string=> Menu)) public foodOrdered;
    mapping (string =>Menu) public totalOrdered;



    string[] public Monday;
    string[] Tuesday;
    string[] Wednesday; 

    function setMenu (string memory _Name, string memory _Day, string memory _Item, uint8 _Price) public {
        totalNoFood++; 
        foodOrdered[_Name][_Day] = Menu(_Item, _Price);
        totalOrdered[_Day]= Menu(_Item,_Price);
        if (keccak256(abi.encodePacked(_Day)) == keccak256(abi.encodePacked("Monday"))){
            Monday.push(_Item);
        }
        if(keccak256(abi.encodePacked(_Day))== keccak256(abi.encodePacked("Tuesday"))){
            Tuesday.push(_Item);
        }
     
        }
    function getOrdered(string memory _Name, string memory _Day) public view  returns(Menu memory) {

        return foodOrdered[_Name][_Day]; //always use keyvalue to get the value in the program.

     }

    // function getTotal (string memory _Day) public view returns (Menu memory){
    //     return totalOrdered[_Day];

    }   

        
    
    

    
