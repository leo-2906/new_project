all: README.md

README.md:
	echo "Bash, Make, Git and GitHub assigment" >> README.md
	printf "\n" >> README.md
	echo -n "Date and Time at *make* is running: " >> README.md
	date >> README.md
	printf "\n" >> README.md
	echo -n "The number of code lines in *guessinggame.sh* is: " >> README.md
	wc -l < guessinggame.sh >> README.md
clean:
	rm README.md

