#!/bin/bash
# This is an age guessing game
# Author: Xuyu Zhang, Student Number: 10493476

echo "######################"
echo "#                    #"
echo "#   Guess Age Game   #"
echo "#                    #"
echo "######################"

while true; do
echo "1: Start"
echo "2: Exit"
read -p "Please enter 0 or 1: " num

    if [[ $num -eq 1 ]]; then
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
                exit
                fi

            else
            echo "Sorry, invalid number or word entered. Please try again."
            fi

        done

    elif [[ $num -eq 0 ]]; then
    exit
    else
    echo "Sorry, invalid number or word entered. Please try again."
    fi

done