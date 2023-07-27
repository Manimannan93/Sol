// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Basic{

    uint public myValue= 10;
    string public bookName = "influencer";
    address public myAddress= 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bool public 

    // mapping(address => uint ) public balanceof;
    //     function fund(uint x) public {
    //         balanceof[msg.sender]= x;

    // string  public name = "vasa";
    // bytes public x = "My name is Mannan";
    // uint public a = 8;

    // mapping (string => uint) public balance;
    //     function fund(uint _newTokenvalue) public {
    //         balance[name]= _newTokenvalue;


    // function Mybook() public view returns (string memory){
    //     return bookName;
    // }

    // function getValue(uint _newOne) public {
    //     myValue= _newOne;
    // }

    // function Wallet() public view returns (address){
    //     return myAddress;
    // }
    // function wallet1(address _newLoc) public {
    //     myAddress= _newLoc;
    // }

        }

// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// contract Contract1 {
//     uint public value;

//     function setValue(uint _value) external {
//         value = _value;
//     }
    
//     function getValue() external view returns (uint) {
//         return value;
//     }
// }

// contract Contract2 {
//     Contract1 public contract1Instance;
    
//     constructor(address _contract1Address) {
//         contract1Instance = Contract1(_contract1Address);
//     }
    
//     function callExternalFunction(uint _newValue) external {
//         contract1Instance.setValue(_newValue);
//     }
    
//     function getExternalValue() external view returns (uint) {
//         return contract1Instance.getValue();
//     }
// }


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


//      event Bank(string indexed Owner, uint indexed Balance);

//         uint  Newvalue= 10;
//         string Name = "Hameed";

        
//        constructor()  {
//             Locker[Name]=Newvalue;
//        }

//         mapping (string=> uint) public Locker ;
        

//         function _locker(uint _newvalue) public returns (uint) {
//              Locker[Name]= _newvalue;
             
//             emit Bank (Name, Newvalue);
//             return _newvalue;
//         }
//     }


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


        contract Inauguration{

            
            uint Total_people;
            string Nameoftheevent;
            string Description;
            uint Limit_people;
            uint total;


            struct Participants {

                uint Rollnumber;
                string Name;
                uint age;
                string city; 
            }

            mapping(uint=>Participants)public _participants;
                function Attendes(uint _Rollnumber, string memory _Name, uint _age, string calldata _city) public {
                    total++;
                _participants[_Rollnumber]= Participants(_Rollnumber, _Name, _age, _city);
            }
            function SetTotal(uint _Total) public{
                Total_people=_Total;
            }
             function get_totalnumbers () public view returns(uint){
                 return Total_people;

             }

            //  function Event_name(string _Event) public{

            //  }
             function SetLimit(uint _Limit) public{
                 Limit_people= _Limit;
             }
              function get_Limitnumber() public view returns (uint){
                  return Limit_people;
              }

            //   function Getdata()
        }
        


// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Basic{

    // uint public myValue= 10;
    // string public bookName = "influencer";
    // address public myAddress= 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // bool public 

    // mapping(address => uint ) public Steve;
    //     function fund(uint x) public {
    //         Steve[msg.sender]= x;

    string  public name = "vasa";
    bytes public x = "My name is Mannan";
    uint public a = 8;

    mapping (string => uint) public balance;
        function fund(uint _newTokenvalue) public {
            balance[name]= _newTokenvalue;


    // function Mybook() public view returns (string memory){
    //     return bookName;
    // }

    // function getValue(uint _newOne) public {
    //     myValue= _newOne;
    // }

    // function Wallet() public view returns (address){
    //     return myAddress;
    // }
    // function wallet1(address _newLoc) public {
    //     myAddress= _newLoc;
    // }

        }
}

    

        

        

    
        


    

    

        

        

    
