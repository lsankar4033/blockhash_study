pragma solidity ^0.6.7;

// Check out how extracting gen method affects opcode spacing
contract Lottery2 {
    function withdraw() public {
        uint256 rand = generateRandomNumber();

        if (rand % 2 == 0) {
            msg.sender.transfer(1);
        }
    }

    function generateRandomNumber() private view returns (uint256) {
        return uint256(keccak256(
            abi.encodePacked(blockhash(1))
        ));
    }
}
