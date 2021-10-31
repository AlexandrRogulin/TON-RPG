pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

import 'FightUnit.sol';

abstract contract Archer is FightUnit {
    uint healthArcher = GameObject.health;

    function acceptAttack(address ad) public override{
        healthArcher -= 1;
    }

    function getProtection() public override {
        healthArcher += 1;
    }
}
