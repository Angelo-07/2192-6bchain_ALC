pragma solidity ^0.8.0;

contract MQuizContract {
    address public owner;
    uint256 public Age;
    uint256 public hoursWorked;
    uint256 public hourlyRate;
    uint256 public totalSalary;
  
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the Owner can call this function");
        _;
    } 
    modifier validHours(uint256 _value) {
        require(_value > 0, "Hours worked must be greater than zero.");
        _;
    } 

   modifier validRate(uint256 _value) {
        require(_value > 0, "Hourly Rate must be greater than zero.");
        _;
    } 
    function setHourlyRate(uint256 _value) public onlyOwner validRate(_value) {
        hourlyRate = _value;
    }
    function setAge(uint256 _age) public {
        Age = _age;
    }
    function setHoursWorked(uint256 _value) public validHours(_value){
        hoursWorked = _value;
    }
    function CalcualteTotalSalary() public onlyOwner {
        require (hourlyRate > 0 && hoursWorked > 0, "Hourly rate or Hours worked is zero.");
        totalSalary = hourlyRate * hoursWorked;
    }
}