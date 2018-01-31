#!/bin/bash
function evaluate_guess {
      if [[ $1 -eq $2 ]]
      then
        echo -e "Congratulation! You guessed right! \n The current directory ($PWD)\n has $n_file files (and folders)"
        exit_status=0
      else
        if [[ $2 -gt  $1 ]]
        then
            echo "Your guess is too high"
        else
            echo "Your guess is too low"
        fi
      fi
}
n_file=$(ls | wc -l)
exit_status=1
echo "How many files are in the current directory?"
while [[ ${exit_status} -eq 1 ]]; do
    echo "Please enter your guess of the number of file in the current directory: "
    read guess
    evaluate_guess ${n_file} ${guess}
done

