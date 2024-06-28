#!/bin/bash

function animated_echo {
    local text="$1"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep 0.01
    done
    echo ""
}
animated_echo "######################################################################################################################"
animated_echo "#    The purpose of this CTF is a small experiment to enhance and strengthen your knowledge. You use it correctly.   #"
animated_echo "#    The law states:                                                                                                 #"
animated_echo "######################################################################################################################"
animated_echo "#    Direct use of AI is prohibited.                                                                                 #"
animated_echo "######################################################################################################################"
animated_echo "#    CTFs copied from other users are not accepted.                                                                  #"
animated_echo "######################################################################################################################"
animated_echo "#    Challenges are completed sequentially.                                                                           #"
animated_echo "######################################################################################################################"
animated_echo "#    You can only look at the information taught in the lesson.                                                      #"
animated_echo "######################################################################################################################"
animated_echo "#    Whenever you feel difficulty, think about your future.                                                          #"
animated_echo "######################################################################################################################"
animated_echo "#    Choose yes or no if you have read the law thoroughly?                                                           #"
animated_echo "#    1. Yes                                                                                                          #"
animated_echo "#    2. No                                                                                                           #"
animated_echo "######################################################################################################################"
echo ""
read -p "Choose (1 or 2): " choice

if [ "$choice" == "1" ]; then
    animated_echo ""
elif [ "$choice" == "2" ]; then
    animated_echo "Let it be read again"
else
    animated_echo "Incorrect selection, please try again"
fi

exit 0
