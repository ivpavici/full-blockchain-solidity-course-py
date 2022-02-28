// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0 <0.9.9;

contract SimpleStorage {
    // initialized to 0
    uint256 favouriteNumber;

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavouriteNumber;

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(
            _favouriteNumber,
            _name
        ));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

    function store(uint256 _favoriteNumber) public {
        favouriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }
}