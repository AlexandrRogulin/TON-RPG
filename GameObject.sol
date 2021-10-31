pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

import "InterfaceOfTheGameObject.sol";

contract GameObject is InterfaceOfTheGameObject {
    uint public health = 5;

    event killed(bool isAlive);

    function acceptAttack(address addressAttacked) virtual public override{
        health -= 1;
    }

    function getProtection() virtual public {
        require(health < 5);
        health += 1;
    }

    function isKilled() private{
        if (health == 0) {
            emit killed(true);
        } else {
            emit killed(false);
        }
    }

    function selfDestruction(address dest) private {
        dest.transfer(0, true, 128 + 32);
    }
}
