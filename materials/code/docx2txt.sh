##########################
### CONVERT DOCX TO TXT
##########################



# replace spaces with underscores in filenames
for f in *\ *; do mv "$f" "${f// /_}"; done

# convert docx-files to txt
for file in *.docx; do

    # define output file name (fname.docx to fname.txt)
    outfile="${file%.docx}.txt"
    
    # print status
    echo "convert $file to $outfile"
    
    # convert
    pandoc $file -t plain -o $outfile

done
