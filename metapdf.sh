unzip -jnq "*.zip"

for filename in *.pdf; do
	pdfinfo "$filename"|grep -i CreationDate >>output.csv
	pdfinfo "$filename"|grep -i Author >>output.csv
done
