#!/bin/bash

# Compare three files passed as paramenters when the script is run
    # If <3 arguments passed to script, advise user and terminate script
    # If all arguments are files, determin which file is the newest

# Test 1: ./findnewest.sh calc_rect_area.sh sspw.sh secret.txt
# Test 2: ./findnewest.sh calc_rect_area.sh 216 secret.txt

if ! [ $# -eq 3 ]; then
    echo "Incorrect number of arguments provided. Exiting script."
    exit 1
fi

filecnt=0
newestfile=""

for i; do

    if [[ -f $i ]]; then
        (( filecnt++ ))
        echo "$i is a file."

        if [[ $filecnt < 1 ]]; then
            newestfile=$i
        else

            if [[ $i -nt $newestfile ]]; then
                newestfile=$i
            fi
        fi
        
    else
        echo "$i is not a file."
    fi

done

echo "File count is set to $filecnt"
echo "Arguments passed is set to $#"

if  [[ (( $filecnt -eq $# )) ]]; then
    echo "The newest file is $newestfile."
else
    echo "Insufficient files for comparison."
fi

exit 0