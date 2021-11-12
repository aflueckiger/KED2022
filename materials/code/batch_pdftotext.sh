# batch convert digital native PDF-files to TXT-files

for file in *.pdf; do
    pdftotext -nopgbrk -eol unix $file
done
