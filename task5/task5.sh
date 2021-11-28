#!/bin/bash
echo -e "\n\n________________SHELLSCRIPTING Task5_____________\n\n"
cd logs
echo -e "\n\n RunTime of all Log Files \n\n"
time=9.5
for entry in `ls *.log`
do
	var=$(cat $entry | grep -i 'run-time' | awk '{printf("%.2f\n", $NF)}')
	printf $var
	if (( $(echo "$var > $time" |bc -l) ));
	then
		echo -e " " $entry "file Runtime Greater than 9.5 hrs\n"
	fi
	echo -e "\n\n"
done
echo -e "\n\n________________END____________\n\n"
