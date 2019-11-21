## Tic Tac Toe Tech Test! ##

The brief

The rules of tic-tac-toe are as follows:

--------------------------------------------------------------------------------

There are two players in the game (X and O)
it takes...
- player x
- player o

- x plays first
- o plays next
- then x, then o etc...
Players take turns until the game is over

--------------------------------------------------------------------------------

A player can claim a field if it is not already taken
- it takes 9 fields
- each field is either claimed or not claimed
- starts with all 9 fields unclaimed

A turn ends when a player claims a field

A player wins if they claim all the fields in a row, column or diagonal

A game is over if a player wins
## OR ##
A game is over when all fields are taken

--------------------------------------------------------------------------------

Build the business logic for a game of tic tac toe. It should be easy to
implement a working game of tic tac toe by combining your code with any user
interface, whether web or command line.

================================================================================

## SETUP ##

- mkdir tic-tac-toe
- cd tic-tac-toe
- touch README.md
- mkdir lib
- mkdir spec
- rspec --init

Challenge: how do you set up the tic-tac-toe board without a visual
representation on screen?

I decided to number the squares like this:

A1  A2  A3
B1  B2  B3
C1  C2  C3

A player can win by claiming the following combination of fields, in
whatever (chronological) order:
Horizontally:
A1  A2  A3
B1  B2  B3
C1  C2  C3

Vertically:
A1  B1  C1
A2  B2  C2
A3  B3  C3

Diagonally:
A1  B2  C3
C1  B2  A3

--------------------------------------------------------------------------------
What classes should the game have?

After class extraction proved the most painful part of my previous challenge
(bank), I decided to plan classes better in this one.

Game class:
- it initialises with two players: x and o
- it initialises with the 'lost' value of 'false'
- takes a method along the lines of 'current turn', initialises with it
as player x
- includes an 'attack'-type method, which claims a square for that player
- includes a 'game_over'-type method, which is called if all the squares are
full (but no-one has won), in which case it prints 'draw', or when a player
has won and it prints 'player (?) wins'
Board class:
- takes a board which initialises with 9 unclaimed squares, structured as above
- has a method for registering each square as claimed or unclaimed

--------------------------------------------------------------------------------

Start by building test for the initialisation of the game.

<!--
Player class:
- takes two players: player x and player o
- takes -->
