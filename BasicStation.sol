pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

import "GameObject.sol";

contract BasicStation is GameObject {
    uint healthBaseSt = health;
    address[] public fightUnits;
    function getProtection() public virtual override{
        require(healthBaseSt < 5);
        healthBaseSt += 1;
    }

    function addFightUnit(address addr) public {
        fightUnits.push(addr);
    }
    
    function deleteMilitaryUnit(address _addr) public {
        deleteFromArray(fightUnits,_addr);
    }
    
    function destructionBase() private {
        address addressBase = msg.sender;
        addressBase.transfer(0, true, 128 + 32);
        deleteAllFromArray(fightUnits);
    }

    function deleteFromArray(address[] array, address a) internal pure {
        uint help;
        for (uint i = 0; i + 1 < array.length; ++i){
            if (array[i] == a){
                help = i;
            }
        }
        for (uint j = help; j + 1 < array.length; j++){
            array[j] = array[j + 1];
        }
        array.pop();
    }

    function deleteAllFromArray(address[] array) internal pure {
    for (uint j = 0; j + 1 < array.length; j++){
            array.pop();
        }
    }
}
