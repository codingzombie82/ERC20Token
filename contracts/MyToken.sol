pragma solidity 0.5.10;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract MyToken is ERC20Burnable, ERC20Mintable, ERC20Detailed{

    constructor(string memory  _name, string memory _symbol, uint8 _decimals, uint256 _supply) ERC20Detailed(_name, _symbol, _decimals) public {
        uint256 INITIAL_SUPPLY = _supply * (10 ** uint(_decimals));
        _mint(msg.sender, INITIAL_SUPPLY);
    }

}
