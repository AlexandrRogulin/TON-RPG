pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

interface InterfaceOfTheGameObject {
    function acceptAttack(address addressAttacked) external;
}