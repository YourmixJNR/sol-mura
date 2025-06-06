// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import {IERC20} from "./IERC20.sol";

contract MyContract {
    function payMe(IERC20 token, uint256 value) external {
        bool success = token.transferFrom(msg.sender, address(this), value);
        require(success);
    }
}
