#!usr/bin/env bash
# File: gessinggame.sh

function greetings {
	echo "Hello! What's your name?"
	read user_name
	echo "Good luck $user_name!. Now, how may files are there in the current repository?"
}

function feedback {
	echo "That's too $1, $user_name. There are $2 files than that. Try again" 
}

#firstly, greet user
greetings

#then, obtain right answer
right_answer=$(ls -l | grep -v ^d | wc -l)
let right_answer=right_answer-1

#and now iterate until user gets it right
while true ;
do
	echo "What's your guess?"
	read user_answer

	if ! [[ "$user_answer" =~ ^[0-9]+$ ]]
		then echo "Please enter a valid positive number" 
		continue
	fi

	if [[ $user_answer -lt $right_answer ]]
		then feedback low more
	elif [[ $user_answer -gt $right_answer ]]
		then feedback high fewer
	else 
		echo "Wow! Spot on, $user_name! That's the right number of files in the current directory"
		break
	fi
done
