#!/bin/bash

mkdir $2
cd $2
wget -r http://$1.$2 -nd --adjust-extension --content-disposition -e robots=off -p --random-wait -U mozilla --mirror --domains=$2 --tries 2
unzip -jnq "*.zip"

for filename in *.pdf; do
	pdfinfo "$filename"|grep -i CreationDate
	pdfinfo "$filename"|grep -i Author
done
