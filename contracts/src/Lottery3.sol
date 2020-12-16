pragma solidity ^0.6.7;

// Check out how extra args to randomness changes things
contract Lottery3 {
    function withdraw() public {
        uint256 rand = generateRandomNumber();

        if (rand % 2 == 0) {
            msg.sender.transfer(1);
        }
    }

    function generateRandomNumber() private view returns (uint256) {
        return uint256(keccak256(
            abi.encodePacked(
                blockhash(1),
                block.timestamp,
                block.difficulty
            )
        ));
    }
}
