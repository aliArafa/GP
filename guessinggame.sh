#this is a function to determine if number was high or low
high_or_low() {
    if [ "$1" -gt "$2" ]; then
        echo "Your guess is too high."
    else
        echo "Your guess is too low."
    fi
}
#counting the number of files
numberOfFiles=$(ls | wc -l)

#taking the guessing from the user
echo "How many files are there in the current directory?"
read yourGuess	

#looping till we get the right answer 
while [[ "$yourGuess" -ne "$numberOfFiles" ]]; do
   
    high_or_low "$yourGuess" "$numberOfFiles"
    echo "Please try again."
    read yourGuess
done

echo"congratulations, your guess is right the number of files is: $yourGuess"
