pragma solidity ^0.6.0;

import "./ERC721Full.sol";
import "./ERC721Metadata.sol";
import "./ERC721Enumerable.sol";
import "./ERC721Burnable.sol";

import "./Context.sol";
import "./Ownable.sol";
import "./ERC721.sol";
import "./IERC721Metadata.sol";
import "./ERC165.sol";
import "./WhiteList.sol";
import "./Animal.sol";


contract MyToken is ERC721, ERC721Burnable, Animal, WhiteList {

    string private _name;
    string private _symbol;

    mapping(uint256 => string) private _tokenURIs;

    string private _baseURI;
    bytes4 private constant _INTERFACE_ID_ERC721_METADATA = 0x5b5e139f;

    

    constructor (string memory AnimalToken, string memory ANI) public {
        _name = AnimalToken;
        _symbol = ANI;

        _registerInterface(_INTERFACE_ID_ERC721_METADATA);
    }

    function deadAnimal(uint256 tokenId) public virtual {
        burn(tokenId);
    }



}

