#!/bin/bash
echo "_______________________Shell Scripting Task2_____________"
echo "Enter the number of column"
read VARCOLUMN
echo -e "Enter the number of rows"
read VARROW
columnCheck="$(head -1 cars.csv | sed 's/[^,]//g' | wc -c)"
rowCheck="$(cat cars.csv | wc -l)"
#if [ $VARCOLUMN -gt $columnCheck ];
#then
#	echo -e "\n\nNumber of Column you Entered does not exist! \n\n"
#else
#	if [ $VARROW -gt $rowCheck ];
#	then
	#	echo -e "\n\n Number of rows you entered does not exist!"
	#else
		#echo -e "\n\n\n"
		cat cars.csv | awk -v column=$VARCOLUMN -v row=$VARROW -F "," '{if(NR==row) print $column}'
#	fi
#fi
echo "_______________________end__________________"
