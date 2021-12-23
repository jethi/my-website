#!/bin/sh

echo "Converting all files..."
meow -o ./public/blog -t ./main.tmpl -c title ./markup/blog
meow -o ./public/doc -t ./main.tmpl -c title ./markup/doc
meow -o ./public -t ./main.tmpl -c title ./markup

if [ -e "./public/home.html" ]; then
	mv home.html index.html
	echo "Renaming home.html to index.html"
fi

echo "Successfully Finished!"
exit 0
