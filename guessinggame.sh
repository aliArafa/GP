numberOfFiles=$(ls | wc -l)
echo $numberOfFiles
echo "How many files are there in the current directory?"
read yourGuess	
while [[ "$yourGuess" -ne "$numberOfFiles" ]]; do
    if [ "$yourGuess" -gt "$numberOfFiles" ]; then
        echo "Your guess is too high."
    else
        echo "Your guess is too low."
    fi
    echo "Please try again."
    read yourGuess
done

echo"congratulations, your guess is right the number of files is: $yourGuess"

