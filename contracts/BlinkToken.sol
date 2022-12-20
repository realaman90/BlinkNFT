// SPDX-License-Identifier: MIT
pragma solidity >=0.8.3 < 0.9.0;

import "@openzeppelin/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";

contract BlinkToken is ERC721PresetMinterPauserAutoId{
    //use our own site
    constructor() ERC721PresetMinterPauserAutoId("BlinkToken","BLK","https://blink.art/metadata/"){}

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory){
        return string(abi.encodePacked(super.tokenURI(tokenId), ".json"));
    }
}