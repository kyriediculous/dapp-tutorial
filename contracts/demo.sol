pragma solidity ^0.4.20;

contract Demo {
  uint x;

  function setX(uint _x) {
    x = _x;
  }

  function getX() returns (uint) {
    return x;
  }
}

contract ExtendDemo is Demo {
  function addTwo() returns (uint) {
    return x += 2;
  }
}
