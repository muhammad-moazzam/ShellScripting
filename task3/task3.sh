#!/bin/bash


echo -e "\n\n _____________________ShellScripting Task3_________________\n\n"

echo -e "Provide the path of directory or leave empty for current directory:\n\n"
read path

#IF PATH IS EMPTY
if [ -z $path ];
then
	ls -laSh
else
	ls -laSh $path
fi

echo -e "\n\n______________________END____________________________\n\n"
