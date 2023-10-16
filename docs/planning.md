# Classes 

## Player
- Read-only name, string property
- Read-only lives, integer to store the score of each player

- initialize, sets the player name and fill its life

## Game
- Player 1, first player, received when creating a game
- Player 2, second player, received when creating a game
- Read-only Winner, stored when the game is over
- Read-only Score, stored when the game is over

- initialize (Player1, Player2)
- play
  - creates rounds until a winner is identified
  - prints GAME OVER

## Round
- private operation, property to identify which is the selected operation of this round

- initialize (Player1, Player2), defines the operation randomly (1-4)

- Play
  - P1 turn
  - P2 turn
  - returns the winner player, otherwise returns nil

- Private Turn
  - creates an math operation
  - prompts the player to answer
  - prints a message with the result
  - prints a message with the score
