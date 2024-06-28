#!/bin/bash

function animated_echo {
    local text="$1"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep 0.01
    done
    echo ""
}

if [ ! -f "car" ]; then
    touch car
    chmod u+w car
    animated_echo "    Wake up hacker, you are tired. 
    Now we are going to rest in the mountain before that 
    you look at the history and a long time ago your document was taken by 
    FBI you bring it back and put it in the car and try to drive the BMW again."
    exit 0
fi

car_content=$(cat car)

if [ "$car_content" == "RED{Y0uR_D0cUm3Nt}" ]; then
    animated_echo "    The hacker stopped you on the way to the FBI, 
    when your documents are checked, they are expired, 
    you can change it from the place where your data is stored and give it to the FBI, 
    then you can continue."
    echo ""
    echo ""
    animated_echo "    You now go to the place where your data is stored, 
    get it and post it to the FBI"

    if [ -f "FBI" ]; then
        fbi_content=$(cat FBI)
        # "FBI" faylida "RED{Th15_15_a_N3w_D0cUm3nT}" matnini tekshirish
        if [ "$fbi_content" == "RED{Th15_15_a_N3w_D0cUm3nT}" ]; then
            echo ""
            echo ""
            animated_echo "    You updated the document, don't pay attention now. 
    They look for many excuses to get money. "
            echo ""
            echo ""
            animated_echo "    We now have a mountain called Everest and you can go there and relax"
        fi
    fi
fi

exit 0
