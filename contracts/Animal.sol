pragma solidity ^0.6.0;

contract Animal {



     struct animal
    {
        uint256 tokenID;
        string nom;
        string espece;
        string couleur;
        string sexe;
        int age;
        int taille;
        string etat;

    }

    animal[] public zoo;

    function declareAnimal(uint256 tokenID, string memory nom, string memory espece, string memory couleur, string memory sexe, int age, int taille, string memory etat) public 
    {
        zoo.push(animal(tokenID, nom, espece, sexe, couleur, age, taille, etat));
    }

}
