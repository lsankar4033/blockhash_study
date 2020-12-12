pragma solidity ^0.6.7;

contract Lottery {
    function withdraw() public {
        uint256 rand = uint256(keccak256(
            abi.encodePacked(blockhash(1))
        ));


        if (rand % 2 == 0) {
            msg.sender.transfer(1);
        }
    }
}
