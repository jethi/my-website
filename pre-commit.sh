#!/bin/sh

# All the edited files
EDITED_FILES=$(git diff --cached --name-only -- "*.gmi")

# Files edited ? (Checks if len of EDITED_FILES is 0)
if [ -z "$EDITED_FILES" ]; then
	echo "No .gmi files edited"
	exit 0
fi

# Prepare output directories
if [ ! -d "./public" ]; then
	mkdir ./public
fi

if [ ! -d "./public/blog" ]; then
	mkdir ./public/blog
fi

if [ ! -d "./public/doc" ]; then
	mkdir ./public/doc
fi

# Feed files to meow
echo "Converting Files:"
for file in $EDITED_FILES; do
	case $file in
		"markup/blog/"* )
			meow -o ./public/blog -t ./main.tmpl -c title $file
			;;
		"markup/doc/"* )
			meow -o ./public/doc -t ./main.tmpl -c title $file
			;;
		* )
			meow -o ./public -t ./main.tmpl -c title $file
			;;
	esac
	echo "Converted $file"
done
echo "Successfully Finished"
exit 0

