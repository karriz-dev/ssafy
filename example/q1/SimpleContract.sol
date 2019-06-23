pragma solidity >=0.4.22 <0.6.0;

contract SimpleContract{
    uint256 data;
    constructor() public{
        data = 0;
    }
    function get() public view returns (uint256){
        return data;
    }
    function set(uint256 _data) public{
        data = _data;
    }
}