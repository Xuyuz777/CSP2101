#!/bin/bash

# Find all files that match user input within the directory structure from

rtdir=D:/ECU
read -p 'Enter the name or part name of the file you are looking for：' reqfile

cd $rtdir
find -mindepth 1 -maxdepth 1 -type d | while read -r dir
do
cd "$dir"
    if [[ $(find -name $reqfile\*) ]]; then
        i=$(find -name $reqfile\*)
        echo -n "${dir//.}"
        echo -n "${i#?}"
        echo " contains"
        cat $i
    fi
cd $rtdir
done
    