#! /bin/sh

echo "Enter the name to search for:"
read search_name

result=$(grep "$search_name" DB.txt)
if [ -n "$result" ]; then
	echo ">> $search_name:"
	echo "$result"
else
	echo "No information."
fi

