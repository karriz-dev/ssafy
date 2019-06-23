pragma solidity >=0.4.22 <0.6.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/blob/master/contracts/math/SafeMath.sol";

contract SafeMathTest{
    using SafeMath for uint;
    uint public max;
    uint public min;
    constructor() public{
        max = 2**256-1;
        min = 0;
    }
    function unsafeAdd(uint x, uint y) public pure returns(uint){
        return x+y;
    }
    function unsafeSub(uint x, uint y) public pure returns(uint){
        return x-y;
    }
    function safeAdd(uint x, uint y) public pure returns(uint){
        return SafeMath.add(x,y);
    }
    function safeSub(uint x, uint y) public pure returns(uint){
        return SafeMath.sub(x,y);
    }
}