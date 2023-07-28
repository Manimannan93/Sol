// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Mymodi{

    uint age =15;
    string public Votername = "Vasaan";
    modifier Eligiblevoter {
        require(age>=18,"You are not eligible for voting");
        _;

        }
        function Eligible_to_voters() public Eligiblevoter view returns (uint){
            return age;
        }
}



// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Duplicate{

    address public  Owner;
    uint8  internal seatCount=0;
    uint internal totalSeat=3;


    struct Data {

        uint passportNumber;
        string Name;
        uint8 Age;
        
        
    }

    constructor () {

        Owner = msg.sender;
    } 

    event Traveller( uint passportNumber, string Name, uint Age);
    
    modifier passangerData (){
        require(Owner==msg.sender,"Owner should call this");
        _;
    }

    mapping (uint=>Data) public list;

    function passangerInfo( uint _passportNumber, string calldata _Name, uint8 Age, string memory month) public {

        seatCount++;

        require(totalSeat>=seatCount, "All tickets are sold");

        list[_passportNumber]=Data(_passportNumber, _Name, Age);

        emit Traveller(_passportNumber, _Name, Age);
}


    function bookedSeat() public view returns (uint){
        return seatCount;
    }
    }


    contract updaterList is Duplicate{

        function updaterName (uint _passportNumber, string calldata _Name) public{
            uint8 newAge = list[_passportNumber].Age;
            // string memory newMonth =list[_passportNumber].month;
            list[_passportNumber]=Data(_passportNumber, _Name, newAge);
            emit Traveller(_passportNumber, _Name, newAge);

        }

        function updaterAge (uint _passportNumber, uint8 newAge) public view {
            string memory newName = list[_passportNumber].Name;
            list[_passportNumber]=Data(_passportNumber, _Name, newAge);

        }





    }

    