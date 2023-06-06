// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

interface IPriceFeed {

    // --- Events ---
    event LastGoodPriceUpdated(uint _lastGoodPrice);
    
    enum Status {
        active,
        stale,
        disabled
    }
   
    // --- Function ---
    function fetchPrice() external returns (Status, uint);
}
