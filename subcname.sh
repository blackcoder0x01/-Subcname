#!/bin/bash
if [ ! "$1" ]; then
	echo "Missing parameter"
	echo "Please Used ./subcname.sh weblist.txt"
	exit 1
fi
cat $1 | sort -u | while read line; do
  NS=$(dig $line | grep "CNAME\|status: ")
  echo -e "$line	--------> \n$NS"
echo -e ""
echo -e ""
done;