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

    modifier onlyWhiteLister(address _userAccount){
        require(whiteList1[msg.sender] ,"Caller should be in Whitelist");
        require(!whiteList1[ _userAccount]," The whitelist is removed");
        _;
    }

    modifier 

    function setValue (address _userAccount, uint8 _ticketNumber, uint8 _Age, string memory _Name) public onlyWhiteLister (_userAccount) {
        Bookedslot++;
        require(Bookedslot<=Limitedslot,"The tickets are sold");
        BookedInfo[_userAccount]=TicketInfo( _ticketNumber, _Age, _Name,  _userAccount);

    }

    function setwhiteList (address _userAccount) public onlyWhiteLister(_userAccount){
        whiteList1[_userAccount]= true;
        whitelistCount++;
    }

    function setblackList (address _userAccount) public onlyWhiteLister(_userAccount){
        blackList1[_userAccount]=true;
        blacklistCount++;
        
    }

    function removeWhitelist(address _userAccount) public  onlyWhiteLister(_userAccount){
        require(whiteList1[_userAccount]," The Whitelist account is removed");
        whiteList1[_userAccount] = false;
        whitelistCount--;

        
    }

    function removeBlacklist(address _userAccount) public  onlyWhiteLister(_userAccount){
        require(blackList1[_userAccount]," The Blacklist account is removed");
       blackList1[_userAccount] = false;
    



}

contract derivedList is Whitelist{

//     function Remove (address _Account) public onlyOwner {
//         delete BookedInfo[_Account];
//         Bookedslot--;
//     }
// }


function Remove (address _Account) public onlyWhiteLister(_Account){
    delete BookedInfo[_Account];
    Bookedslot--;

    }
}
