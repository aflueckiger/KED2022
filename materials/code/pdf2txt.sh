################################
### CONVERT SCANNED PDF TO TXT
################################

# replace spaces with underscores in filenames
for f in *\ *; do mv "$f" "${f// /_}"; done

echo "Start OCR process. Please wait."

# convert pdf-files to txt-files
for FILEPATH in *.pdf; do 

    echo "Perform OCR on $FILEPATH"

	# convert pdf to image
    convert -density 300 $FILEPATH -depth 8 -strip \
    -background white -alpha off temp.tiff
    
    # define output name (remove .pdf, .txt suffix will be added by tesseract)
    OUTFILE=${FILEPATH%.pdf} 
    
    # perform OCR on the tiff image (change language if needed, deu=German)
    tesseract -l deu temp.tiff $OUTFILE
    
    # remove the intermediate tiff image
    rm temp.tiff

done

echo "OCR process finished successfully."
