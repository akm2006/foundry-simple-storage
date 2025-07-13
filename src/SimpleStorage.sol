//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage {
    uint256 favoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;
    // Person public aak = Person({favoriteNumber:0 , name: "Aakash"});

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
        // favoriteNumber = _favoriteNumber + 1;
    }

    function retreive() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, name));
        nameToFavoriteNumber[name] = _favoriteNumber;
    }
}
