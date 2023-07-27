// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Ticket{

    uint Bookedseat=0;
    address internal Owner;

    // address public Owner 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;=> If use declare the address here, It will show entire program.
    //but if use "msg.sender", current owner of the contract could call it. 
    uint Limitedseat=2;
    //uint Limitseats;


    struct Attendesinfo{

     uint Ticketnumber;
     string Name;
     uint  Age;
     string Pavallionname;
     
     
}   

    constructor(){

        Owner = msg.sender;
    }

    modifier Status(){

        require(Owner==msg.sender, "Owner should be call this program");
        _;
    }

    event Logdata (uint indexed _Ticketnumber, string indexed  _Name, uint _Age, string _Pavallionname);

    mapping (uint => Attendesinfo) public Participant;

    
    function Participantdata(uint _Ticketnumber, string memory _Name, uint _Age, string calldata _Pavallionname) public Status {
        Bookedseat++;
        require(Bookedseat<=Limitedseat, "Tickets are sold");
        Participant[_Ticketnumber]=Attendesinfo(_Ticketnumber, _Name, _Age, _Pavallionname);

        emit Logdata( _Ticketnumber, _Name, _Age, _Pavallionname);
        
    }

    function Numofseats() public view returns(uint) {
        return Bookedseat;
    }  
    


    }
     
contract derived is Ticket{
     function deletedata(uint _ticket_number) public Status{
          delete Participant[ _ticket_number];
          Bookedseat--;
    }


}

     
     

