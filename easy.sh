#!/bin/bash

while true; do
    questions=("What is Linux?" "How to read the contents of a file in Linux?" "How to create a directory in Linux?" "Where is system configuration information stored in Linux?" "What is the common name for a terminal or command line interfaces?" "What is the uid of the root user?")
    answers=("kernel" "cat" "mkdir" "/etc/passwd" "shell" "id root")

    correct_answers=0

    for i in "${!questions[@]}"; do
        echo "${questions[i]}"
        read user_answer
        if [[ "$user_answer" == "${answers[i]}" ]]; then
            ((correct_answers++))
        else
            echo "Incorrect answer. You made a mistake in question $((i+1)). Start again."
            break
        fi
    done

    if [[ $correct_answers -eq ${#questions[@]} ]]; then
        echo " "
        echo " "
        echo " "
        
        congratulation="Congratulations! You have successfully completed. Now you have a file called 'easy', you can get the flag from it."
        for (( i=0; i<${#congratulation}; i++ )); do
            echo -n "${congratulation:$i:1}"
            sleep 0.05
        done
        echo " "
        echo " "
        echo " "
        
        echo "RED{L1nUX_Wa5_cR3At3D_bY_T0rValD5}" > easy
        chmod +x easy
        break
    fi
done
