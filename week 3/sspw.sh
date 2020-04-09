#!bin/bash

rtdir=D:/ECU/CSP2101 脚本语言/workshop/week 3/

#Ask the user to select a directory in folder
while true; do
echo "ACAILABLE DIRECTORIES:"
ls $rtdir]
read -p 'Enter a directory name from the list above: ' seldir

    if [ -d "${rtdir}${seldir}" ]; then
        echo "That directory does not exist. Please try again."
    else
        echo "The directory entered does not exist."
        break
    fi

done

# Request a new password from the user
while true; do
    read -s -p 'Enter a password for future use: ' selpw
        if ! [ -z "$selpw" ]; then
            echo "Thank you. Password accepted."
            break
        else
            echo "No password provided - please try again."        
        fi      

done

# Write password to text file in nominated directory
if ! [ -f "${rtdir}${seldir}/secret.txt" ]; then
    echo "The file secret.txt does not yet exist. Creating it now..."
    touch ${rtdir}${seldir}/secret.txt
    echo "Password now being written to file..."
    echo "$selpw" > "${rtdir}${seldir}/secret.txt"
    echo "Password has been written to ${rtdir}${seldir}/secret.txt"
    cat "${rtdir}${seldir}/secret.txt"
else
    echo "The file secret.txt already exists. Password being written to it now..."
    echo "$selpw" > "${rtdir}${seldir}/secret.txt"
    echo "Password has been written to ${rtdir}${seldir}/secret.txt"
    cat "${rtdir}${seldir}/secret.txt"
fi

exit 0