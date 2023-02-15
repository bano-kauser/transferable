pragma solidity ^0.8.6;

contract Bank {

    mapping(address => uint)balance;

    address owner;
    event balanceAdded( uint amount, address depoitedTo);
    modifier onlyOwner{
          require(msg.sender  ==  owner);
          _;
    }
    constructor(){

    owner =msg.sender;
    }
    function deposit() public payable returns (uint){

        balance[msg.sender] +=msg.value;
        emit balanceAdded(msg.value,msg.sender);
        return balance[msg.sender];
    }
    function withdraw(uint amount)public returns(uint){
        address toSend = 0.21222hygr46fgr5hyt323rguu86gt5eyh;
        payable(toSend).transfer(amount);
    }
    function tatalBalance()public view return(uint){
        return address(this).balance;
    }