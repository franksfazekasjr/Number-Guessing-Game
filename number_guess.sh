#!/bin/bash

# Initialization.

# Create PSQL variable for querying the DB.
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

# A new game has started, generate a new random number.
NUMBER=$((1 + RANDOM % 1000))

#echo $NUMBER

# First get the user name and determine if the user has played before.
echo "Enter your username:"
read USERNAME

# Almost anything can be a name these days so we are not going to do any 
# name validation other than an existance test.
if [[ ! -z $USERNAME ]]
then

  # See if the username exists in the database
  # USERINFO=$($PSQL "SELECT COUNT(game_id), MIN(guesses_to_win) FROM games WHERE username = '$USERNAME'")
  EXISTING_USER=$($PSQL "SELECT username FROM games WHERE username = '$USERNAME'")

  #echo $EXISTING_USER


  if [[ -z $EXISTING_USER ]]
  then
    # New user message.
    echo -e "Welcome, $USERNAME! It looks like this is your first time here."
  else
    # Existing user message.
    # Get the existing user info from the DB.
    USERINFO=$($PSQL "SELECT COUNT(game_id), MIN(guesses_to_win) FROM games WHERE username = '$USERNAME'")
    # USERINFO=$($PSQL "SELECT username, count(game_id), MIN(guesses_to_win) from games WHERE username = '$USERNAME' GROUP by username")

    # Parse values from database
    #USERNAME=$(echo $USERINFO | sed -E 's/ \| [0-9]+ \| [0-9]+$//')
    GAMES_PLAYED=$(echo $USERINFO | sed -E 's/ \| [0-9]+$//' | sed -E 's/^.+ \| //')
    BEST_GAME=$(echo $USERINFO | sed -E 's/^[0-9]+ \| //')

    #echo $USERNAME
    #echo $GAMES_PLAYED
    #echo $BEST_GAME
    # Print the message.
    echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

  fi

  # Start guessing...
  echo "Guess the secret number between 1 and 1000:"
  read GUESS
  GUESS_COUNT=0
  # Loop until they guess the secret number
  while [[ $GUESS -ne $NUMBER ]] 
  do
    # Did we get a number?
    if [[ $GUESS =~ ^[0-9]+ ]]
    then
      # Yes, got a number
      if [[ $GUESS -lt $NUMBER ]]
      then
        echo "It's higher than that, guess again:"
      else
        echo "It's lower than that, guess again:"
      fi
      
      read GUESS
      ((GUESS_COUNT++))

      # echo $i
      # echo $NUMBER
      
    else
      # Not a number, don't count the guess.
      echo -e "That is not an integer, guess again:"
      read GUESS
    fi
  done

  # Count the very first guess.
  ((GUESS_COUNT++))

  # echo $GUESS_COUNT
  
  # At the end, we need to insert the game data (username, guesses_to_win)
  INSERT_RESULT=$($PSQL "INSERT INTO games (username, guesses_to_win) VALUES('$USERNAME', $GUESS_COUNT)")

  # Print the winning message to the user.
  echo -e "\nYou guessed it in $GUESS_COUNT tries. The secret number was $NUMBER. Nice job!"

fi