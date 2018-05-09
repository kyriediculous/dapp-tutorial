pragma solidity ^0.4.20;

contract Casino {
  uint houseEdge;

  event Won(bool _status, uint _amount);

  function Casino(uint _houseEdge) payable public {
    require(_houseEdge <= 100);
    houseEdge = _houseEdge;
  }

  function bet(uint _number) payable public {
    require(_number > 0 && _number <= 10);
    require(msg.value > 0);
    uint winningNumber = block.number % 10 + 1;
    if (_number == winningNumber) {
      uint amountWon = msg.value * (100 - houseEdge)/10;
      if(!msg.sender.send(amountWon)) revert();
      emit Won(true, amountWon);
    } else {
      emit Won(false, 0);
    }
  }
}
