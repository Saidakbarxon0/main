#!/bin/bash

function animated_echo {
    local text="$1"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep 0.05
    done
    echo ""
}

if [ ! -d "flag" ]; then
    animated_echo "You could not find the flag directory. Create it and try again."
    exit 1
fi

if [ ! -f "flag/flag.txt" ]; then
    animated_echo "You now have a flag directory, but the flag.txt file was not found in it. Create it and try again."
    exit 1
fi

user_answer=$(cat flag/flag.txt)

if [ "$user_answer" == "ransomware" ]; then
    echo "RED{C13AN_Y0uR_BrA1n_Fr0M_Th3_V1Ru5}" > real_flag_file.txt
    echo " "
    animated_echo "Congratulations! You answered correctly. I present to you the file real_flag_file.txt."
else
    echo " "
    animated_echo "You did it right, and now I'm asking a question to verify that you're not a bot:"
    echo " "
    animated_echo "This type of malware encrypts data on your computer and demands money from you in return."
    animated_echo "Write the answer to this question in the flag.txt file"
    echo " "
    animated_echo "Now look at your flag.txt file and try again."
fi
