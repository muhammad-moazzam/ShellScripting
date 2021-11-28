#!/bin/bash

echo -e "\n\n___________________ShellScripting TASK#4_______________\n\n"
targetDir=/home/emumba
fileCount="$(stat -c "%n" *.c | wc -w)"
i=0
search_dir=$(pwd)
for entry in `ls *.c`
do
	myFile[$i]=$entry
	i=$((i+1))
done
for (( c=0; c<$fileCount; c++ ))
do
	actualFileTime=$(stat -c "%y" ${myFile[$c]})
	if test -f $targetDir/${myFile[$c]};
	then
		echo "File Exists."
		copiedFileTime=$(stat -c "%y" $targetDir/${myFile[$c]})
		if [[ $actualFileTime != $copiedFileTime ]]
		then
			cp ${myFile[$c]} $targetDir
			touch -d "$actualFileTime" $targetDir/${myFile[$c]}
			echo "And modified."
		fi
	else
		cp ${myFile[$c]} $targetDir
		touch -d "$actualFileTime" $targetDir/${myFile[$c]}
		echo "File Transfered."
	fi

done
	
echo -e "\n\n______________________END__________________\n\n"
