#!/bin/bash

##################################################
### Assignment 1
### Seminar: The ABC of Computational Text Analysis
### University of Lucerne
##################################################


### Task 1: Organize your project

# create directory with the required name 
mkdir KED2022_exercise_1

# change into the created directory
cd KED2022_exercise_1

# print path to current directory (e.g., ~/KED2022/KED2022_exercise_1)
pwd

# create all the subfolders at once
mkdir reports src data data/raw data/interim

# use the given commands to create various empty files
# hint: you need to be in the folder "KED2022_exercise_1", in which "data" and its subsubfolder "interim" exists already
touch data/raw/speeches_{2019..2022}_{a..z}.txt 
touch data/raw/text_{2019..2022}_{1..12}_{1..30}.txt

# change into the interim directory
cd data/interim

# Use expansion to create all the directories with the name of the year at once.
# Hint: run echo {2019..2022} to see to what the expression expands
mkdir {2019..2022}

# change into the folder raw (one folder up into the main directory and then into the folder raw)
cd ../raw

# Copy the newly created files into the corresponding folders using wildcards.
# Hint: you can use multiple wildcards at once. Each wildcard matches any sequence of characters. 
# Thus, all files with a particular year in its name go into the folder of the corresponding year.
cp *2019*.txt ../interim/2019
cp *2020*.txt ../interim/2020
cp *2021*.txt ../interim/2021
cp *2022*.txt ../interim/2022



### Task 2: Report on file collection

# change into the directory reports where the reports should be generated
cd ../../reports

## Task 2.1
# `locate` looks for files of these partiular endings everywhere on your computer
# The output of `locate` is redirected to the `wc` command by the pipe operator `|`. `wc` counts the number of lines (=one file per line).
# The operator `>` writes the output of the final command into a new file.
# Unfortunately, `locate` is no longer installed by default. I apologize for this additional obstacle that I didn't intend.
locate .pdf .docx .txt | wc -l > count_documents.txt

## Task 2.2
# A simple solution that lists any pdfs located in the document folder and its subfolders.
# `ls` lists any pdf files up to an arbitrary using wildcards and, due to the argument -t, it orders them from new to old new.
# After piping, `tail` retains only the last 20 lines.
# This final output is then written into a file with the `>` operator
ls -t ~/Documents/**/*.pdf | tail -n 20 > oldest_pdf_files.txt


# While the use of `**` instructs `ls` to match files in any subdirectory, the single `*` is a wildcard that matches an arbitrary name of a file or directory.
# Don't worry if you have not used the double wildcard and check for more information here: 
# https://stackoverflow.com/questions/28176590/what-do-double-asterisk-wildcards-mean



### Your feedback
