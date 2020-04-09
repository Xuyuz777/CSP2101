#!bin/bash

rtdir=D:/ECU/CSP2101 脚本语言/workshop/week 3/

while true; do
echo "ACAILABLE DIRECTORIES IN $rtdir:"
ls $rtdir]

read -p 'Select a directory from the list above: ' seldir

if [ -d "${rtdir}${seldir}" ]; then
    # echo "The selected directory exists."
    echo "You have requested to see the contents of the $seldir: "
    if [ "ls -A ${rtdir}${seldir}" ]; then
        # echo "Yes, there are files in there."
        ls ${rtdir}${seldir}
    else
        echo "The $seldir directory is empty."
    fi
    break
    
else
    echo "The directory entered does not exist."
fi

done
