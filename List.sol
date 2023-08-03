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

    uint8[] public participantData;
    uint8[]public whiteList1Array;
    uint8[]public blackList1Array;


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
        require(!blackList1[_ticketNumber],"It is in the Blacklist");
        whiteList1[_ticketNumber]=true;
        whitelistCount++;
        whiteList1Array.push(_ticketNumber); // Pushing value inside to the array
    }

    function setBlackList(uint8 _ticketNumber) public onlyOwner{

        require(!whiteList1[_ticketNumber],"it is in the Whitelist");

        blackList1[_ticketNumber]= true;
        blacklistCount++;
        blackList1Array.push(_ticketNumber);
    }

    function isWhitelisted(uint8 _ticketNumber) public view returns(bool){
        return whiteList1[_ticketNumber];
    }

    function isBlacklisted(uint8 _ticketNumber) public view returns(bool){
        return blackList1[_ticketNumber];
    }
}

 contract dervied is Listing {
      
      function Remove( uint8 _ticketNumber) public onlyWhiteList(_ticketNumber) {
          delete attendeesInfo [_ticketNumber];
          bookedSeat--;

      }

      function dataStorage() internal  {

          for(uint i =0; i<participantData.length; i++){
              if(isWhitelisted(participantData[i])){
                  whiteList1Array.push(participantData[i]);
              }
                  else {
                      blackList1Array.push(participantData[i]);
                  }

                  }
      }

      function getWhitelist() public view returns(uint8 [] memory){
          return whiteList1Array;
      }
      function getBlacklist()public view returns(uint8 [] memory){
          return blackList1Array;
      }
      }
          

              
          
    

      

      





      
 


 /* blackList1Array.push(_ticketNumber) - Pushing Value inside array or getting the value for Array. It means "ticketnumber" is used 
 to assign for an array. 


 
 Storing the multiple value in same data type
 
 uint8[] whiteList1Array - "Integer data type value" stores into the whiteListArray*/
