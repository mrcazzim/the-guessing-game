all: README.md

README.md: guessinggame.sh
	echo "Welcome to the Guessing Game, by Mrcazzim" > README.md
	echo "Date and time at which make was run: `date +%Y-%m-%d_at_%H:%M:%S`" >> README.md
	echo "Number of lines of code in guessinggame.sh is: `wc -l guessinggame.sh | egrep -o "[0-9]+"`" >> README.md 
	
clean:
	rm README.md
