#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# TRUNCATE=$($PSQL "TRUNCATE games, users;")

RANDOM_NUMBER=$((1 + $RANDOM % 1000))

echo -e "Enter your username:"
read USER_NAME_INPUT
USER_NAME=$($PSQL "SELECT name FROM users WHERE name='$USER_NAME_INPUT'")
USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USER_NAME_INPUT'")

if [[ -z $USER_NAME ]]
then
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(name) VALUES('$USER_NAME_INPUT')")
  if [[ $INSERT_USER_RESULT == "INSERT 0 1" ]]
  then
    USER_NAME=$($PSQL "SELECT name FROM users WHERE name='$USER_NAME_INPUT'")
    echo -e "Welcome, $USER_NAME! It looks like this is your first time here."
  fi
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID")
  echo -e "Welcome back, $USER_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi





USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USER_NAME_INPUT'")
GUESSES=1
echo "Guess the secret number between 1 and 1000:"
read GUESS_INPUT
while [[ $GUESS_INPUT != $RANDOM_NUMBER ]]
do
  if [[ ! "$GUESS_INPUT" =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read GUESS_INPUT
  else
    if [[ $GUESS_INPUT > $RANDOM_NUMBER ]]
    then
      ((GUESSES++))
      echo "It's lower than that, guess again:"  
      read GUESS_INPUT
    else
      ((GUESSES++))
      echo "It's higher than that, guess again:"
      read GUESS_INPUT
    fi
  fi
done


echo "You guessed it in $GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"

INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES('$USER_ID', $GUESSES)")
