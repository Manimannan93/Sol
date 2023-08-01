// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Listing {


    address private Owner;
    uint public bookedSeat = 0;
    uint private limitedSeat =2;

    uint public whitelistCount =0;
    uint public blacklistCount = 0;
 


struct Ticketinfo {

    uint8 ticketNumber;
    string Name;
    uint8 Age; 
    }

    constructor (){
        Owner = msg.sender; 
    } 

    

    mapping (uint8 => Ticketinfo) public attendeesInfo;
    mapping (uint8=>bool)internal  whiteList1;
    mapping (uint8=>bool)internal  blackList1;

    uint8[] whiteList1Array;
    uint8[] blackList1Array;


    modifier onlyOwner {

        require (Owner == msg.sender,"Owner should call this");
        _;
    }

    
    modifier onlyWhiteList(uint8 _ticketNumber) {
        require(whiteList1[_ticketNumber],"User should be in the whitelist");
        _;
    }
    

        function setParticipantInfo (uint8 _ticketNumber, string memory _Name, uint8 _Age) public onlyWhiteList(_ticketNumber) {
            bookedSeat++;
            require(bookedSeat<=limitedSeat,"Tickets are sold");

        attendeesInfo[_ticketNumber]= Ticketinfo (_ticketNumber, _Name,_Age);

    }

    function setWhiteList(uint8 _ticketNumber) public onlyOwner {
        whiteList1[_ticketNumber]=true;
        whitelistCount++;
        whiteList1Array.push(_ticketNumber); // Pushing value inside to the array
    }

    function setBlackList(uint8 _ticketNumber) public onlyOwner{

        blackList1[_ticketNumber]= true;
        blacklistCount++;
        blackList1Array.push(_ticketNumber);
    }
}

 contract dervied is Listing {
      
      function Remove( uint8 _ticketNumber) public onlyWhiteList(_ticketNumber) {
          delete attendeesInfo [_ticketNumber];
          bookedSeat--;

      }

      

      }
 


 /* blackList1Array.push(_ticketNumber) - Pushing Value inside array or getting the value for Array. It means "ticketnumber" is used 
 to assign for an array. 


 
 Storing the multiple value in same data type
 
 uint8[] whiteList1Array - "Integer data type value" stores into the whiteListArray*/