#!/bin/bash

read -p 'Provide a name for the new directory: ' foldername
echo "$foldername"
mkdir " The $foldername directory has been created."
cp foldermaker.sh $foldername
echo "The file foldermaker.sh has been coped to the $foldername."