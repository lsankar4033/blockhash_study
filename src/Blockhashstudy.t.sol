pragma solidity ^0.6.7;

import "ds-test/test.sol";

import "./Blockhashstudy.sol";

contract BlockhashstudyTest is DSTest {
    Blockhashstudy study;

    function setUp() public {
        study = new Blockhashstudy();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
