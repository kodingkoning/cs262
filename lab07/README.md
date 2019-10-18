# Lab 7 Exercise 1

## Elizabeth Koning


### Original Monopoly Schema

Player(ID, emailAddress, name)

PlayerGame(gameID, playerID, score)

Game(ID, time)

### My Schema Extension

Game(ID, time, completed) [modified]

PlayerGame(gameID, playerID, score, cash, location) [modified]

Property(ID, name, colorGroup, price, rent, rent1House, rent2Houses, rent3Houses, rent4Houses, rentHotel, houseCost)

GameProperty(gameID, propertyID, playerID, houses, mortgaged) [a hotel can be represented by a value of 5 for houses. Unpurchased properties can be represented with NULL for playerID. The mortage value is half the purchase cost.]

### Lab 7 Exercise 2

See monopoly.sql

