// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// contract EventTest{

//     // event Fund(address location, uint wallet);

//     // mapping (address=> uint) public _account;
//     //     function account(uint _acc) public returns(uint){
//     //         _account[msg.sender] = _acc;
//     //         emit Fund(msg.sender,_acc);
//     //         return _account [msg.sender];
//     //     }


    //  event Bank(string indexed Owner, uint indexed Balance);

    //     uint  Newvalue= 10;
    //     string Name = "Hameed";

        
    //    constructor()  {
    //         Locker[Name]=Newvalue;
    //    }

    //     mapping (string=> uint) public Locker ;
        

    //     function _locker(uint _newvalue) public returns (uint) {
    //          Locker[Name]= _newvalue;
             
    //         emit Bank (Name, Newvalue);
    //         return _newvalue;
    //     }
    // }


    // contract Task_event {

    //     event Bankdetails( uint indexed branch_no, string Bank_Name, uint indexed  Acc, string indexed  Code);

    //     struct Information{

    //         string Bank_Name;
    //         uint Acc;
    //         string Code;
    //     }

    //         mapping (uint=> Information) public _bankdetails; 

    //         function _Info( uint branch_no, string memory _Bank_name, uint _Acc, string calldata _Code) public {

    //             _bankdetails[branch_no]=Information(_Bank_name,_Acc,_Code);

    //             emit Bankdetails(branch_no, _Bank_name, _Acc, _Code);

    //         }



            

        //}


        // contract Inauguration{

            
        //     uint Total_people;
        //     string Nameoftheevent;
        //     string Description;
        //     uint Limit_people;
        //     uint total;


        //     struct Participants {

        //         uint Rollnumber;
        //         string Name;
        //         uint age;
        //         string city; 
        //     }

        //     mapping(uint=>Participants)public _participants;
        //         function Attendes(uint _Rollnumber, string memory _Name, uint _age, string calldata _city) public {
        //             total++;
        //         _participants[_Rollnumber]= Participants(_Rollnumber, _Name, _age, _city);
        //     }
        //     function SetTotal(uint _Total) public{
        //         Total_people=_Total;
        //     }
        //      function get_totalnumbers () public view returns(uint){
        //          return Total_people;

        //      }

        //     //  function Event_name(string _Event) public{

        //     //  }
        //      function SetLimit(uint _Limit) public{
        //          Limit_people= _Limit;
        //      }
        //       function get_Limitnumber() public view returns (uint){
        //           return Limit_people;
        //       }

        //     //   function Getdata()
        // }
        

        contract Booking{


            uint Total_seats;
            string Name_of_the_statdium;
            uint Limit_seats;
            uint total;
            address  owner;


            struct Audience_Data {

                uint Ticketnumber;
                string Name;
                uint age;
                string Pavallion_name; 
            }
                constructor(){
                owner=msg.sender;
            }

            modifier Accessor() {
                require(msg.sender==owner, "Owner should call this function");
                _;
            }

            //mapping(key data type=>value data type) map_name;

            mapping(uint=>Audience_Data)public _participants;
                function Attendes(uint _Ticketnumber, string memory _Name, uint _age, string calldata _Pavallion_name) public Accessor {
                    total++;
                _participants[_Ticketnumber]= Audience_Data(_Ticketnumber, _Name, _age, _Pavallion_name);
            }

            // function SetTotal(uint _Total) public{
            //     Total_seats=_Total;
            // }
            //  function get_totalnumbers () public view returns(uint){
            //      return Total_seats;

            //  }

            //  function Stadium_name(string memory _Location) public{
            //      Name_of_the_statdium = _Location;

            //  }

            //  function getLocation() public view returns(string memory){
            //      return Name_of_the_statdium;
            //  }
            //  function Set_Seatlimit(uint _Limit) public{
            //      Limit_seats= _Limit;
            //  }
            //   function Set_Seatlimit() public view returns (uint){
            //       return Limit_seats;
            //   }

              
              }



    