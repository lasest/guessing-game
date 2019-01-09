all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "## The guessing game - the best game in the world" >> README.md
	date -R >> README.md
	echo -n "The number of lines in 'guessinggame.sh': " >> README.md
	cat guessinggame.sh | wc -l >> README.md
