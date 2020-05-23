#!/bin/sh

#downloading data
curl "https://query1.finance.yahoo.com/v7/finance/download/GOOG?period1=1557792000&period2=1589414400&interval=1d&events=history" --output GOOG.csv

#scrapping off first line in csv
flag="0"
while IFS=, read -r Date Open High Low Close AdjClose Volume
do
	if [ $flag -eq "0" ]
	then
		flag="1"
		continue
	fi
	echo "$Date,$Open,$High,$Low,$Close,$AdjClose,$Volume" >> GOOG_CLEAN.csv
done < GOOG.csv