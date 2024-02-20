pragma solidity ^0.8.0;

contract functionModifier {
    mapping (address => uint256) public valueMapping;


    modifier  nonZeroValue(uint256 _value) {
        require(_value !=0, "Value cannot be zero");
    _;
    }

    modifier valueHasBeenSet() {
        require(valueMapping[msg.sender] !=0, "No Value set for sender");
        _;
    }
    //function to set a value for the sender's address
    function setValue(uint256 _value) public nonZeroValue(_value){
        valueMapping[msg.sender] = _value;
    }

    function getValue() public view  valueHasBeenSet returns (uint256) {
        return valueMapping[msg.sender];
    }

    }
