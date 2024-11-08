#! /bin/sh

if [ ! -f DB.txt ]; then
  echo '--my friends--' > DB.txt
  echo "DB.txt file has been created."
else
	echo "Do you want to reset the DB.txt file? (y/n)"
	read answer
	if [ "$answer" = "y" ]; then
		echo '--my friends--' > DB.txt
		echo "DB.txt file has been reset."
	else
		echo "DB.txt file already exists."
	fi
fi

echo "Enter name:"
read name
echo "Enter phone number or birthday:"
read info

echo "$name $info" >> DB.txt

cat DB.txt


