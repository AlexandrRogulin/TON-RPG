pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

import "GameObject.sol";
import "BasicStation.sol";

contract FightUnit is GameObject {
    address addressBaseSt;
    uint healthFightUnit = health;

    constructor(BasicStation basicStation) public {
        basicStation.addFightUnit(msg.sender);
        addressBaseSt = msg.sender;
    }

    function acceptAttack(address addres) virtual public override{
        healthFightUnit -= 1;
    }

    function getProtection() virtual public override {
        require(healthFightUnit < 5);
        healthFightUnit += 1;
    }

    function Attack(address ad) public {
        healthFightUnit -= 1;
    }
}
