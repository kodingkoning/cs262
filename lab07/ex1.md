# Lab 7 Exericse 1

## Elizabeth Koning


### Monopoly Schema

Player(ID, emailAddress, name)
PlayerGame(gameID, playerID, score)
Game(ID, time)

### Schema Extension

Game(ID, time, completed) [modified]
PlayerGame(gameID, playerID, score, cash, location) [modified]
Property(ID, name, colorGroup, rent, rent1House, rent2Houses, rent3Houses, rent4Houses, rentHotel, mortgage, houseCost)
GameProperty(gameID, propertyID, playerID, houses, mortgaged) [a hotel can be represented by a value of 5 for houses. Unpurchased properties can be represented with NULL for playerID]

