#!/bin/bash

##################################################
### Assignment 2
### Seminar: The ABC of Computational Text Analysis
### University of Lucerne
##################################################


### parsing and removing meta information from a document similar to the following:

# Von BRUNO VANONI, BERN.      
# 591 words
# 26 February 2004
# Tages Anzeiger
# TANZ
# German
# (c) 2004 Tages Anzeiger Homepage Address:      http://www.tages-anzeiger.ch 


### Task 1: Parse Information with RegEx

### general hints
# As meta information always starts at the beginning of a new line, use ^ to be more specific and avoid false positive matches. 
# Similarly, you may use the $ symbol to match the end of the line.


# Task 1.1: parse number of words
# include the comma as there are numbers like 1,529
egrep -o "^[0-9,]+ words$" newspaper_articles.txt > words.txt


# Task 1.2:  parse dates
# assuming dates of the format: X MONTH XXXX or XX MONTH XXXX
egrep -o "^[0-9]{1,2} \w+ [0-9]{4}$" newspaper_articles.txt > dates.txt


# Task 1.2:  parse author names 
# author names are not provided for all articles
# some examples are really hard to match like:
#   Von DAS GESPRÄCH FÜHRTEN IWAN STÄDLER UND VERENA ARBURG
#   Von MIT ALEX SCHEIWILLER* SPRACH ERWIN HAAS. 
# Practically, it's not worth to cover all of them unless you really need them. Removing is easier than exact extracting.
# Moreover, it takes more sophisticated patterns (lookarounds, see below) or even a machine-learning approach.
# Both approaches go beyond what you learn in this seminar.

# assuming names consist of uppercased letters, dots (e.g. abbreviated names), hyphens (e.g. double names) and spaces (e.g. firstname secondname lastname).
# thus, locations are excluded as they are preceded by commas.
egrep -o "^[vV]on [A-ZÄÜÖ .-]+" newspaper_articles.txt > authors.txt


### Task 2: Removing Parts of a Document
# Simply reuse the patterns from above and replace the matches with an empty sequence (i.e. nothing). Names are removed completely.
cat newspaper_articles.txt | sed -E "s/^[0-9,]+ words$//g" | sed -E "s/^[0-9]{1,2} \w+ [0-9]{4}$//g" | sed -E "s/^[vV]on [A-ZÄÜÖ .-].*//g" > clean.txt


####################################
# Further Information
####################################

# count the number of articles. With this information, you know how many matches you should get in Task 1)
egrep "^Document" newspaper_articles.txt | wc -l
# the number of documents should equal the number of matches (e.g. words)
egrep "^[0-9,]+ words$" newspaper_articles.txt | wc -l

# check the differences between the original file and the clean file 
diff -y --suppress-common-lines newspaper_articles.txt clean.txt 

# More poweful engines (like the one in Perl/Python) support negative/positive lookahead and lookbehind operators to make the match context-specific without matching it. 
# See https://www.rexegg.com/regex-lookarounds.html
# This may be useful for the name extraction task. You may want to get rid of the "Von" and the period at the end of the line.
# Even without using lookarounds, you can simply pipe multiple regex operations to subsequentally remove more information to get the same result.
egrep  "^[vV]on [A-ZÄÜÖ .-]+" newspaper_articles.txt | sed 's/^Von //'


# To remove empty lines, you can use the following command
sed -E '/^\s*$/d' newspaper_articles.txt

# Pattern to extract URLs (there are also more complicated ones to cover edge-cases)
egrep -o "(http://)?www\.[a-z0-9.-]+" newspaper_articles.txt

