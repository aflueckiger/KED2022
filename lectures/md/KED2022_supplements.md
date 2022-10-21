---
title: The ABC of Computational Text Analysis
subtitle: "Supplements"
author: "Alex Flückiger"
institute: "Faculty of Humanities and Social Sciences<br>University of Lucerne" 
date: "14 April 2022"
lang: en-US
---



## Purpose

Here I present some stuff that we did not cover in class.

## Tasks

- find various ngrams with wildcards
- check gender specific language
  - what follows `she/he` or `her/his`



## Forms of Data

- content data
  - clean, plain text data
  - preferable as `.txt`
- metadata ~ information about the actual data
  - publishing date, authors, source, version
  - preferable as `.csv` 



## Key Word in Context (KWIC)

```bash
ptx -f -w 50 */*.txt > ptx.txt
egrep -i "[a-z]  word" ptx.txt
```



## Select Column in Dataset

```bash
cut -d\t -f1 	# extract the 2nd column from a tab-separated file
```



## Extract texts from tsv: 

* http://www.theunixschool.com/2012/05/shell-read-text-or-csv-file-and-extract.html 

## Variables

```bash
echo "Starting program at $(date)" 
```



## Better Tokenization

- tokenization ~ splitting into words

```bash
# new, improved approach
cat text.txt | tr -sc "[a-zäöüA-ZÄÖÜ0-9-]" "\n"

# old approach
cat text.txt | tr ' ' '\n'	
```

::: notes

- Tokenisierung = in Wörter splitten
- Interpunktion "klebt nicht mehr an Wörtern"
- -s = beliebig viele Zeichen
- -c = Komplement (also nicht diese Zeichen)
- angegebene Zeichen werden NICHT ersetzt

:::



## Batch Processing

```bash
for file in *.txt; do			# loop over all text files
 cat "$file" | pipe commands > "proc_$file"
done
```





## Batch Renaming

```bash
rename  " " "_" *.txt	# replace spaces with underscores
# since there are different versions, if this doesn't work try:
# rename 's/ /_/' *.txt

```

```bash
i=1
for file in *.txt; do			# loop over all text files
 mv -- "$file" "text_$i.txt"	# rename each file with a sequential number
 i=$((i+1))
done
```



## Imperfect Data: A Tail of Bias

- social bias
  - view from somewhere, stereotypes
- data/archive holes

  - lost, uncollected
- corpus curation
  - supposition that key-word indicates topic
- noise in data
  - OCR errors, inconsistent spelling, non-content



<br>

:point_right: think about the data and mitigate issues



::: notes

- fehlende, rauschende, selektive & verzerrte Daten
- sozialer Kontext
  - z.B. Budgetkürzung oder Neuausrichtung --> Wegfall von Thema
  - Sicht von weisen Männern auf Thema
- non-content elements
  - Metadaten, Kopfzeilen etc.

:::



## Outlook: NLP is on Fire 🔥


- supervised machine learning
- you can do basically anything with modern NLP

  - train on human-annotated data
- effort, insights and quality may differ

  - for better or worse

::: notes

- die meisten haben ihr Schulwissen wieder vergessen, wieso kann das der Computer
- Intuition einfach, genaue technische Funktionsweise egal
  - Genauigkeit wichtig, aber noch zu advanced
  - best-practice
- viel genauer dank Embeddings (self-supervised)

:::



## Mind your Data

- Who has a voice in your data?
  - social context
- bigger is not necessarily better
  - more vs. more diverse data

* clean your data thoroughly
  * noisy vs. clean data



## <span style="color:var(--red)">Anatomy of AI[@Crawford2018]<br> illustrated by the Amazon Echo</span>{data-background=../images/anatomy_of_ai.png}

::: notes

- Es geht um mehr als nur Technologie
- Technologie ist eingewoben ins Soziale
- Soziotechnische Systeme

:::

## Grid Example

<div class="l-double">

::: 

**COL 1**

- text processing

:::

::: 

**COL 2**

- existing resources
- creating new resources

:::
</div>