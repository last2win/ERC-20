pragma solidity ^0.5.0;

import "https://github.com/zhang0peter/ERC-20/blob/master/Context.sol";
import "https://github.com/zhang0peter/ERC-20/blob/master/ERC20.sol";
import "https://github.com/zhang0peter/ERC-20/blob/master/ERC20Detailed.sol";

contract SimpleToken is Context, ERC20, ERC20Detailed {
    //Zhang0PeterCoin： 代币的全名
    //ZPC：代币的简写
    //3: 代币小数点位数，代币的最小单位， 3表示我们可以拥有 0.001单位个代币
    constructor () public ERC20Detailed("Zhang0PeterCoin", "ZPC", 3) {
        //初始化币，并把所有的币都给部署智能合约的ETH钱包地址
        //233：代币的总数量
        _mint(_msgSender(), 2333 * (10 ** uint256(decimals())));
    }
}