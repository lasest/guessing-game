function verifyGuess {
  if [[ $1 =~ [^0-9] ]]
  then
    return 1
  else
    return 0
  fi
}

function checkGuess {
  if [[ $1 -gt $2 ]]
  then
    echo -n "Your guess is too high. Try again: "
  elif [[ $1 -lt $2 ]]
  then
    echo -n "Your guess is too low. Try again: "
  fi
}

filesN=$(ls -l | grep -e ^[-] | wc -l)
guess=0

echo -n "Guess how many files are in the current directory: "

while [[ $guess -ne $filesN ]]
do
  read guess
  verifyGuess $guess && checkGuess $guess $filesN || printf "The input seems to be incorrect :(\nTry again: "
done

echo "Congrats! You've guessed it right!"
