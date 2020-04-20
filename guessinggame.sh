#/bin/bash
# File: guessinggame.sh
# This program continuously ask the user to guess the number of files in the current directory
# Developed by: Leonardo Castro I

function display_dir_name {
echo $(pwd)
}

num_files=$(ls | wc -l)
echo -n "Enter your guess of the number of files in the directory:"
display_dir_name
read guess_num
echo "You entered: $guess_num"

while [[ $guess_num -ne $num_files ]]
do
    if [[ $guess_num -gt $num_files ]]
    then
       echo -n "$guess_num is a high number, try again with some lower value:"
    else
       echo -n "$guess_num is a low number, try again with some higher value:" 
    fi 
    read guess_num
done
echo "Well done !!!  congratulations...!"


