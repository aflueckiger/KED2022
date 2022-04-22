---
title: Cheatsheet Shell Commands
subtitle: Seminar KED2022
author: Alex Flückiger
date: 2022
toc: True
toc-depth: 1
geometry: "left=2cm,right=2cm,top=2cm,bottom=2cm"
---

# Basic Shell Commands

| **Shell Command**                             | **Explanation**                                              |
| --------------------------------------------- | ------------------------------------------------------------ |
| `cd` *filepath*                               | **c**hange **d**irectory aka move into a different folder    |
| `ls -lh` *folder*                             | **l**i**s**t the files and folders in your current **dir**ectory |
| `pwd`                                         | show **p**ath of **w**orking **d**irectory aka the folder that you're in right now |
| `touch` *fname*                               | make a new file                                              |
| `mkdir` *dirname*                             | **m**a**k**e a new **dir**ectory aka a folder                |
| `rm` *fname*                                  | **r**e**m**ove aka delete a file or directory                |
| `cp` *original-fname* *copied-fname*          | **c**o**p**y a file or directory                             |
| `mv` *original-fname* *new-fname*             | **m**o**v**e or rename a file or directory                   |
| `cat` *fname*                                 | show all the contents of a file                              |
| `more` *fname*                                | show snippet of a file that allows you to scroll through the entire thing |
| `head` *fname*                                | show the first 10 lines of a file (change number of lines by adding a flag, e.g. `head -100`) |
| `tail` *fname*                                | show the last 10 lines of a file (change number of lines by adding a flag, e.g. `tail -100`) |
| `wc -w -l` *fname*                            | show how many **w**ords or lines in a file                   |
| `man` *command*                               | show the **man**ual aka the documentation that tells you what a particular command does |
| `echo`                                        | print text to the command line                               |
| `egrep "search pattern"` *fname* or *dirname* | search for lines that include search term in file. See below for the arguments of egrep. |
| `wget` *url*                                  | **get** a file from the **w**eb                              |

This cheatsheet is based on [this resource](https://melaniewalsh.github.io/Intro-Cultural-Analytics/01-Command-Line/01-The-Command-Line.html#command-line-cheatsheet). Please also refer to this resource for a more in-dept explanation in prose. You should follow the guide for macOS and Unix even as a Windows user as we have installed a Unix environment.

## egrep
The most common arguments of `egrep`:

- `-i` search case insensitive
- `-r` search recursively in folder
- `-o` show exact matches only instead of entire lines with matches
- `-h` suppress the file path where the match occurred

## Operators

- `|`: A pipe takes the output of one command and passes it as the input to another.

   ``` bash
   echo "pass this text to next command" | cat
   ```

- `>`: This operator redirects the output to a file (overwrites if it already exists). Example:

   ```bash
   echo "first line of file1" > file1
   ```

- `>>`: This operator redirects and appends the output to an *existing* file: Example:

   ```bash
   echo "line following existing content of file1" >> file1
   ```



# NLP-related Shell Commands

coming soon!



# Regular Expressions

## Example Patterns

```bash
# alle Kleinbuchstaben
echo "Das ist ein Satz mit der Zahl 1000" | egrep --colour "[a-z]"

# alle Grossbuchstaben
echo "Das ist ein Satz mit der Zahl 1000" | egrep --colour "[A-Z]"

# das Wort "ist" und das nächste Wort
echo "Das ist ein Satz mit der Zahl 1000" | egrep --colour "ist [a-z]*"

# das Wort "Zahl" gefolgt von einer Ziffer
echo "Das ist ein Satz mit der Zahl 1000" | egrep --colour "Zahl [0-9]" 

# das Wort "Zahl" gefolgt von beliebig vielen Ziffern
echo "Das ist ein Satz mit der Zahl 1000" | egrep --colour "Zahl [0-9]*"
```

## Pattern Equivalence

```bash
a+ == aa* 				# "a" once or more than once
a? == (a|_) 			# "a" once or nothing
a{3} == aaa				# three "a"
a{2,3} == (aa|aaa)		# two or three "a"
[ab] == (a|b)			# "a" or "b"
[0-9] == (0|1|2|3|4|5|6|7|8|9)	#any digit
```



