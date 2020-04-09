#!/bin/bash

# Find all files that match user input within the directory structure from

read -p 'Enter the name or part name of the file you are looking for：' reqfile
for i in $( find D:/ECU -name $reqfile\* ) ; do
    
    if [ -s "$i" ]; then
        echo "The content of $i are as follow:"
        cat $i
    else
        echo "The $i file is empty."
    fi

done