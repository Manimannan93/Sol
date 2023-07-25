// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// contract Base {
//     struct program {
//         string Name;
//         uint version;
//         string level;
//         string  location;
//     }

//     mapping (address => program) public _Code;
//         function _program (string memory _Name, uint _version, string memory _level, string memory _location) public {
//             _Code[msg.sender]= program( _Name,_version, _level, _location);
//         }
//         function getProg_Details() public view returns (program memory){
//            return _Code[msg.sender];
//         }
//     }


// contract Simple{

//     struct Data{
//         string Bike_name;
//         uint model;
//         string RPM;
//         uint Mileage;
//     }

//     mapping(address => Data) public Bikeinfo;
//         function Info( string memory _Name, uint _model, string memory _RPM, uint _Mileage) public {
//             Bikeinfo[msg.sender]=Data(_Name, _model, _RPM, _Mileage);

//         }
//         function getInfo() public view returns ( Data memory){
//             return Bikeinfo[msg.sender];
//         }
//     }
    

    contract Visibility{

        uint a;
        uint b;
        uint c;

        function Value_a(uint x) public{
            a= x;
        }
        function Value_b(uint y) public {
            b=y;
        }
        function Value_c(uint z) private{
            c=z;
        }
        function add() public view returns(uint){
            uint Sum= a+b;
            return Sum;
        }
        function sub() private view returns(uint){
            uint Sub= a-c;
            return Sub;
        }
        function mul() internal view returns (uint){
            uint Mul=a*b;
            return Mul;
        }

        function mod() external view returns (uint){
            uint Mod= a%b;
            return Mod;
        }
    }
 contract Deriverd is Visibility 
 {
     function Multiplication () public view returns(uint){
            return mul();
     }

     
 }

// // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

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

// contract Mymap{

//     // mapping (address => string) public Greeting;
//     // function _greet(string memory MSG) public{
//     //    Greeting[msg.sender]= MSG; 
//     // }

//     //    mapping(address => uint) public compute;
//     //         function calcul(uint a) public {
//     //             compute[msg.sender]= a;
//     //         }
        
//     string  public Name =" Mani";
    
//     mapping (string => string) public Caller;
//     function _callername(string memory _newName)public {
//         Caller[Name]=_newName;
//     }
// }




    

