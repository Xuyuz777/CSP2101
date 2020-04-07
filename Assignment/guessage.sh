#!/bin/bash
#This is an age guessing game

#The first step is to create a number between 20 and 70.

age=$[RANDOM%50+20]

echo "There is a man between the ages of 20 and 70, try to guess his age!"

while true; do
read -p "Please enter the number of age you guess: " guessage
if [[ $guessage -ge 20 ]] && [[ $guessage -le 70 ]]; then
    if [[ $guessage -lt $age ]];then
        echo "Unfortunately, your guess is younger than that. Please try again."
    elif [[ $guessage -gt $age ]];then
        echo "Unfortunately, your guess is older than that. Please try again."
    else
        echo "Congratulations! He is $age years old!"
    break
    fi
else
    echo "Sorry, invalid number entered. Please try again."
fi

done
