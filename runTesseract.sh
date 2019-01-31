mkdir TesseractOutput
for file in images/*.tif; do
	echo $file
	outputFile=`echo $file | sed 's/images/TesseractOutput/' | sed 's/\.tif//'`
	tesseract $file $outputFile -l kan --psm 4 --oem 1
done
tar cvfz TesseractOutput.tar.gz TesseractOutput
