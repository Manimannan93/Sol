// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract dataList{

    uint8 internal  bookedSeat=0;
    uint8 internal  limitedSeat=2;
    address public   Owner = msg.sender; 

    uint whitelistCount =0;
    uint blacklistCount = 0;
 

    struct participantList {

        uint8 ticketNumber;
        string Name;
        uint8 Age;
    }

    modifier Controller() {
        require (Owner == msg.sender,"Owner should call this");
        _;
    }

    mapping (uint => participantList) public Attendees;

    event logData(uint8 ticketNumber, string  Name, uint8 Age, uint8 month);

    function setValue( uint8 _ticketNumber, string calldata _Name, uint8 _Age, uint8 month ) public {
        bookedSeat++;
        require(bookedSeat<=limitedSeat);
        Attendees[_ticketNumber]=participantList(_ticketNumber, _Name, _Age);
        emit logData(_ticketNumber, _Name, _Age, month);

    }

    function totalSeat() public view returns (uint8){
        return bookedSeat;
    }

    modifier Finder(address account){
        require(!whiteList[account], "The account has been already existed in the whitelisted" );
        _;
    }

    function addwhiteList(address userAccount) public Controller Finder (userAccount){
        whiteList[userAccount]= true;
        whiteList++;

    }
}

contract Remove is dataList{

    function removeData( uint8 _ticketNumber) public Controller {
        delete Attendees[_ticketNumber];
        bookedSeat--;
    }
}