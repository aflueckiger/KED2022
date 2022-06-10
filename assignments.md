---
title: 'Assignments'
layout: page
date: "2022-05-20"
---



You have to submit three assignments to complete the seminar successfully. The purpose of the assignments is not making the course hard to pass but rather to foster your engagement with the covered topics. As you like, you may prefer to work in teams to discuss different approaches. Nonetheless, each student has to come up with their own solution and submit it before the deadline. 

| #    | Topic                                                        | Published     | Deadline (by midnight)      | Solution                                                     |
| -- | --------------------------------- | ------------------------- | ----------------------------------------------- | --------------------------------------------- |
| 1    | [Data Wrangling](https://aflueckiger.github.io/KED2022/assignments/assignment_1/KED2022_assignment_1.pdf) | 24 March 2022 | 31 March 2022 | [Example](https://raw.githubusercontent.com/aflueckiger/KED2022/main/assignments/assignment_1/flueckiger_KED2022_1_solutions.sh) |
| 2    | [Regex NLP](https://aflueckiger.github.io/KED2022/assignments/assignment_2/KED2022_assignment_2.pdf) | 08 April 2022 | 15 April 2022 | [Example](https://raw.githubusercontent.com/aflueckiger/KED2022/main/assignments/assignment_2/flueckiger_KED2022_2_solutions.sh) |
| 3    | [Python NLP](https://aflueckiger.github.io/KED2022/assignments/assignment_3/KED2022_assignment_3.pdf) | 13 May 2022  | 20 May 2022 | [Example](https://github.com/aflueckiger/KED2022/blob/main/assignments/assignment_3/flueckiger_KED2022_3_solutions.ipynb) |



## Formal Instructions

Your submission is a single script, meaning that is readily executable, and is named as follows:

- Bash scripts: `SURNAME_KED2022_NR.sh`
- Python scripts: `SURNAME_KED2022_NR.py` 

The script follows the order of the tasks in the assignment. In addition to the commands you have used in your solution, you also provide a short, yet concise explanation to your solution.   You should include these comments directly in the script by starting the line with `#`.

Please use the following examples as template:

### Bash

```bash
#!/bin/bash

##################################################
### assignment 1
### Seminar: The ABC of Computational Text Analysis
### University of Lucerne
##################################################

### task 1a)
echo "this is a test"
# solution: echo prints out the provided text in the command-line 

### task 1b)
echo -n "test" | wc
# solution: wc counts the lines, words and characters. 
# The argument -n is necessary to omit the trailing new-line symbol.
# "test" has 4 characters.

...
```

### Python

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

##################################################
### assignment 1
### Seminar: The ABC of Computational Text Analysis
### University of Lucerne
##################################################

### task 1a)
print("Hello, World")
# outputs the provided string to the prompt

...
```


# Mini-Project

You conduct a small computational text analysis and present the results in the final session. To give as many options as possible, you are free to choose your research question as well as computational methods and data you are going to use. It is certainly more fun when you work with data from your area of interest. 

Again, the aim of this project is not to overwhelm students with too ambitious requirements. It should be the other way around. You will have as much freedom as you need to engage with your data creatively. I will be glad when you realize that your knowledge is already good enough to perform powerful analyses.

The only requirement is to complement your claims with some quantitative facts about the data, which you can freely choose. You may work in teams of two.

## Inspiring Student Projects

- [Gender differences in 1 August speeches](https://github.com/aflueckiger/KED2022/raw/main/materials/mini_projects/2022_gender_differences/KED2022_presentation.pdf) [[Code](https://github.com/aflueckiger/KED2022/tree/main/materials/mini_projects/2022_gender_differences)], Dario Haab, Valentina Meyer, Nils Brun, 2022
- [Analysis of Bulletin Board Systeme (BBS)](https://git.makersphere.ch/josias/jason-scotts-favorite-100/raw/master/README.pdf), Josias Bruderer, 2021

# Optional Seminar Paper

You are welcomed to write an optional seminar paper (Hauptseminararbeit) for which you get additional credit points. As I am in the position of a guest lecturer, I will accept seminar papers in cooperation with [Prof. Sophie Mützel](https://www.unilu.ch/fakultaeten/ksf/institute/soziologisches-seminar/mitarbeitende/sophie-muetzel/).

Due to the practical foundation of this seminar, you are well-prepared to subsequently apply computational text methods in a personal project. Although this is not a requirement, you may want to turn your mini-project into a seminar paper by deepening your empirical inquiry. 

Students planning to write a seminar paper should send me an email with a short outline of their research idea until **15 May 2022** at the latest. When you would like to discuss your idea in person, feel free to do so any time after the seminar.

Requirements for the seminar paper (Hauptseminararbeit):

* Write your thesis in German or English.
* Use any computational methods to analyze your data.
* Your paper has a theoretical question guiding your methodical approach. In other words, methods are a means, not an end in themselves.
* Formal: 15 pages (A4), 12 pt Times New Roman, 3cm margin, 1.5 line spacing.
* Deadline for submitting the final paper: **31 August 2022**.