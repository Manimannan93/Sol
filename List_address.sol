// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Whitelist {

    uint8 public Bookedslot = 0;
    uint8 Limitedslot = 2;
    address private Owner;
    uint8 public whitelistCount=0;
    uint8 public blacklistCount=0;

    struct TicketInfo {

        uint8 ticketNumber;
        uint8 Age;
        string Name;
        address Account;
        
    }

    constructor(){

        Owner = msg.sender;
    }

    mapping (address => TicketInfo) public BookedInfo;
    mapping (address=>bool)public whiteList1;
    mapping (address=> bool)public blackList1;


    modifier onlyOwner() {
        require(Owner ==msg.sender,"Owner has only access for this");
        _;
    }   

    modifier onlyWhiteLister(){
        require(whiteList1[msg.sender] ,"Caller should be in Whitelist");
        _;
    }

    function setValue (address _account, uint8 _ticketNumber, uint8 _Age, string memory _Name) public onlyWhiteLister {
        Bookedslot++;
        require(Bookedslot<=Limitedslot);
        BookedInfo[_account]=TicketInfo( _ticketNumber, _Age, _Name,  _account);

    }

    function setwhiteList (address _account) public onlyWhiteLister{
        whiteList1[_account]= true;
        whitelistCount++;
    }

    function setblackList (address _account) public onlyWhiteLister{
        blackList1[_account]=true;
        blacklistCount++;
        
    }



}

contract derivedList is Whitelist{

//     function Remove (address _Account) public onlyOwner {
//         delete BookedInfo[_Account];
//         Bookedslot--;
//     }
// }


function Remove (address _Account) public onlyWhiteLister{
    delete BookedInfo[_Account];
    Bookedslot--;

    }
}