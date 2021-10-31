pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

import 'FightUnit.sol';

abstract contract Warrior is FightUnit {
    uint healthWarrior = GameObject.health;

    function acceptAttack(address addr) public override{
        healthWarrior -= 1;
    }

    function getProtection() public override {
        healthWarrior += 1;
    }
}