#!/bin/sh

#displaying data
echo "MENU\n\n1. Date\n2. Open\n3. Close\n4. Volume\n5. All(*)Enter choice: "
read choice
while IFS=, read -r Date Open High Low Close AdjClose Volume
do
	case $choice in
		Date)
			echo "$Date"
			;;
		Open)
			echo "$Open"
			;;
		Close)
			echo "$Close"
			;;
		Volume)
			echo "$Volume"
			;;
		*)
			echo "$Date $Open $High $Low $Close $AdjClose $Volume"
			;;
	esac
done < GOOG.csv