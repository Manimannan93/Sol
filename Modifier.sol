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