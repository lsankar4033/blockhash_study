pragma solidity >=0.6.11;

contract Lottery {
    function withdraw() public {
        uint256 rand = generateRandomNumber();

        if (rand % 2 == 0) {
            msg.sender.transfer(1)
        }
    }

    function generateRandomNumber() private view returns (uint256) {
        return uint256(keccak256(blockhash(1)));
    }
}
