#!/bin/bash

echo -e "\n\n___________ShellScripting Task6___________\n\n"
for entry in $(awk '{print $NF}' raw_data_for_stats_calculation.txt | sort)
do
	echo $entry >> separateFile.txt

done


echo -e "\n\n________________FINDING MEAN________________\n\n"
mean=$(awk '{ total += $1 } END { print total/NR }' separateFile.txt)
echo "MEAN IS GIVEN BY: " $mean



echo -e "\n\n_____________FINDING MEDIAN______________\n\n"
numberOfLines=$(cat separateFile.txt | wc -l)
if [ n%2 ==  0 ]
then
	echo $numberOfLines / 2
else
	firstMedian=$(( (numberOfLines + 1) / 2 ))
	secondMedian=$(( (numberOfLines - 1) / 2 ))
	echo -e "\n First Median= " $firstMedian
	echo -e "\n Second Median= " $secondMedian
fi


echo -e "\n\n________________FINDING SUM________________\n\n"
total=$(awk '{ total += $1 } END { print total }' separateFile.txt)
echo $total

echo -e "\n\n______________FINDING MINIMUM_____________\n\n"
head -1 separateFile.txt

echo -e "\n\n______________FINDING MAXIMUM_____________\n\n"
tail -1 separateFile.txt

echo -e "\n\n_____________END_____________\n\n"
