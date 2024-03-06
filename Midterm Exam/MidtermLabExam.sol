//Angelo L. Cometa
pragma solidity ^0.8.0;

    contract GradeContract {

    address public owner;
    string public studentName;
    uint256 public prelimGrade;
    uint256 public midtermGrade;
    uint256 public finalGrade;
    enum GradeStatus { Pass, Fail }
    GradeStatus public gradeStatus;


    modifier onlyOwner() {
    require(msg.sender == owner, "Only contract owner can call this function");
    _;
    }

    modifier validGrade(uint256 _grade) {
    require(_grade >= 0 && _grade <= 100, "Invalid grade. Grade must be between 0 and 100");
    _;
    }


    event GradeComputed(string studentName, GradeStatus gradeStatus);

    // Constructor
    constructor() {
    owner = msg.sender;
    }

    function setName(string calldata _name) external onlyOwner {
    studentName = _name;
    }

    function setPrelimGrade(uint256 _grade) external onlyOwner validGrade(_grade) {
    prelimGrade = _grade;
    }

    function setMidtermGrade(uint256 _grade) external onlyOwner validGrade(_grade) {
    midtermGrade = _grade;
    }

    function setFinalGrade(uint256 _grade) external onlyOwner validGrade(_grade) {
    finalGrade = _grade;
    }

    function calculateGrade() external onlyOwner {
    uint256 averageGrade = (prelimGrade + midtermGrade + finalGrade) / 3;
    if (averageGrade >= 50) {
    gradeStatus = GradeStatus.Pass;
    } else {
    gradeStatus = GradeStatus.Fail;
    }
    emit GradeComputed(studentName, gradeStatus);
    }
    }