pragma solidity ^0.4.17;


contract Adoption {

    address[16] public adopters;

    function adopt(uint petId) public
        returns (uint)
    {
        require(petId >= 0 && petId < 16);
        require(adopters[petId] == 0);

        adopters[petId] = msg.sender;
        return petId;
    }

    function getAdopters() public view
        returns (address[16])
    {
        return adopters;
    }
}
