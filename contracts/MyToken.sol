pragma solidity 0.5.10;
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "./Ownable.sol";

contract MyToken is ERC20Detailed, Ownable, ERC20 {
    string private constant _name = "WoongEHouse";
    string private constant _symbol = "WEH";
    uint8 private constant _decimals = 18;
    uint256 private constant _totalSupply = 5000000000;

    constructor() ERC20Detailed(_name, _symbol, _decimals) public {
        uint256 INITIAL_SUPPLY = _totalSupply * (10 ** uint(_decimals));
        _mint(owner(), INITIAL_SUPPLY);
    }

    function burn(uint256 amount) public onlyOwner {
        _burn(msg.sender, amount);
    }
    /**
     * @dev See `ERC20._burnFrom`.
     */
    function burnFrom(address account, uint256 amount)  public onlyOwner {
       _burnFrom(account, amount);
    }

}
