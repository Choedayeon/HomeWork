#! /bin/sh

if [ ! -d "$1" ]; then
	echo "Creating Folder... $1"
	mkdir "$1"
fi

cd "$1"

for i in 0 1 2 3 4; do
	filename="file$i.txt"
	touch "$filename"
	echo "$filename created"
done

for i in 0 1 2 3 4; do
	foldername="file$i"
	filename="file$i.txt"

	mkdir "$foldername"

	ln -s "../$filename" "$foldername/$filename"
	echo "Link created: $foldername/$filename -> ../$filename"
done

