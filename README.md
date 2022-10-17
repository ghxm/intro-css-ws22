---
title: Syllabus
course: Introduction to Computational Social Science [WP 7.1]
authors:
    - Maximilian Haag
    - Constantin Kaplaner
term: Winter 2022
---

# Introduction to Computational Social Science - Syllabus

**Instructors**

- Maximilian Haag ([maximilian.haag@gsi.uni-muenchen.de](mailto:maximilian.haag@gsi.uni-muenchen.de))
- Constantin Kaplaner ([constantin.kaplaner@gsi.uni-muenchen.de](mailto:constantin.kaplaner@gsi.uni-muenchen.de))


## Course overview

This is the repository for the course 'Introduction to Computational Social Science' held at LMU Munich, Winter term 2022-23. The course is held in double sessions (2 x 90 minutes) every other week. Session are structured as follows: The first part of a session will include a presentation of the session's topic by the lecturers to set the theoretical foundation. In the second part of the sessions, students will be able to explore the topic themselves using structured coding exercises. The material provided will be written in the `R` programming language. While students are encouraged to engage with the provided `R` material, they can also choose to follow the course in a programming language they are familiar with.


### Abstract

The course 'Introduction to Computational Social Science' provides a first glimpse into the field of computational social science (CSS) for political scientists. The advent of computational techniques has opened a window to the use of large-scale data collection and analysis. Examples of CSS in political science include the automated collection and analysis of legal texts, parliamentary speeches, and social data employing web scraping, machine learning, simulation, and network analysis techniques.

We will introduce participants to the necessary context and tools to apply CSS concepts to their own research. Thus, the focus is twofold; First, the course will give an impression of the relevant conceptual and theoretical developments in the field. Second, we will engage in hands-on coding sessions to enable students to apply the presented concepts and techniques.

Participants of the course are welcome to develop and work on their own research projects employing CSS methods in the course. Basic prior knowledge of quantitative data analysis and/or programming is a plus but not required.


### Course requirements

Students will have to fulfill the following requirements:

- Read the required readings assigned for each week 
- Participate at the sessions of the seminar
- Prepare and present (~10 min) a short research idea/design that outlines the research question and planned approach for the research paper
- Write a research paper (~ 20.000 characters) on your chosen topic (in agreement with the instructor).

Grades for the seminar will consist of the following elements:

- 50 % term paper
- 50 % presentation in class

### Additional information

At the end of some session's coding exercise you will find additional exercises and homeworks for yourself to try out and engage further with the material. These exercises are completely voluntary. If you decide to do them, you can hand them in to the lecturers to receive comments and feedback.

In accordance with the study regulations, attendance is not mandatory. However, since many of the course's theoretical and practical materials build upon each other, it is highly recommended to attend all of the session and to self-study session materials for sessions you might have missed.

If you cannot attend a session, please inform one of the lecturers beforehand. This helps us plan the session accordingly.


### Office hours

Students are encouraged to visit the instructors' office hours for help with understanding the theoretical and practical course materials.


**Offline**

If possible, please write an e-mail beforehand if you plan to attend the office hours to allow for better scheduling.

- C. Kaplaner: Room GU105, Tue 15:00 - 16:00 or by arrangement (via e-mail)
- M. Haag: Room XYZ, Wed 12:00-13:00 and by arrangement (via e-mail)


**Online (via Zoom)**

Please schedule a meeting via e-mail.


### Access to resources

To follow the course, you will need to have access to an RStudio installation. You can either install RStudio on your own computer or use the university computers. Your personal workspace on university computers is available via [Remote Desktop](https://www.it.ifkw.uni-muenchen.de/web/remotedesktop/index.html).

Additionally, we offer a RStudio Cloud workspace for working for through the session the course and in your own time. This is an external service offered by RStudio. You will need to register for a free account in order to be able to work on the course materials on your own. The usage of the service within the free tier and for work in the seminar workspace is free to course participants.

Please chose a method of access to an RStudio Cloud installation and familiarize yourself with the access to your RStudio installation.

Please note: We will not be able to provide access to our RStudio Cloud workspace during the seminar paper preparation phase due to time and cost constrains on our end. However, you will have ample time to work through the course materials during the sessions or in your own time on the RStudio Cloud.


### Literature & resources

#### Learn R

- [YaRrr! The Pirate’s Guide to R](https://bookdown.org/ndphillips/YaRrr/)
- [R for Data Science](https://r4ds.had.co.nz/introduction.html)
- [An introduction to R](https://intro2r.com/)
- [W3 Schools R Tutorial](https://www.w3schools.com/r/default.asp)

#### CSS resources

- [Hertie School Data Science Lab](https://www.hertie-school.org/en/datasciencelab)
- [Text-as-Data Initiative](https://sites.google.com/view/polsci-ml-initiative)
- [MZES Method Bites](https://www.mzes.uni-mannheim.de/socialsciencedatalab/)
- Twitter

#### Computer powered tools for research

- [Elicit](https://elicit.org/)
- ...

## Sessions

### 2022-10-17 Session 1: Introduction to the introduction to CSS

#### Learning objectives

- Getting to know each other
- Course overview
- Terminology
- Tools



#### Lab

- Introduction to RStudio & R


#### Literature

- *Lazer et al. (2009) Computational Social Science. Science 323 (5915), 721-723. DOI: 10.1126/science.1167742.*




### 2022-10-31 Session 2: Reasearch in CSS, data structures and data collection

#### Learning objectives

- Research Design & reproducibility
- Explorative, descriptive, inferential research
- Types of data & sources
- Datasets


#### Lab

- Working with different data structures
- Working with datasets
- Web scraping / data collection
  - Example: scraping text and metadata of e.g. news websites, parliamentary speeches etcetc
  - Example: using an API


#### Literature

- *Hox, J. J. (2017). Computational Social Science Methodology, Anyone? Methodology, 13(Supplement 1), 3–12. https://doi.org/10.1027/1614-2241/a000127*





### 2022-11-14 Session 3: Text analysis for political texts

#### Learning objectives

  - How can we use text as data?
  - Which methods can be used to answer political science question?
  - What are the limitations of text data?


#### Lab

 - Working with text data on the example of legislative speeches
 - Dictionary approaches
 - Scaling models (Wordfish / Wordscores) 
 - Topic modelling 
 
 Examples:
 
 - How often do MPs in the Bundestag talk about environment?
 - How do parties position themselves in speeches?
 - What are the main topics of debate?

#### Literature

- *Grimmer, J. (2013). Text as data: The promise and pitfalls of automatic content analysis methods for political texts. Political Analysis, 21(3), 267-297. DOI: 10.1093/pan/mps020*


### 2022-11-28 Session 4: Supervised machine learning for text analyis
#### Learning objectives

  - What is the basic idea behind machine learning approaches?
  - What does a typical machine learning workflow look like?
  - How do we assess prediction error?

#### Lab
  - Basic machine learning workflow in R
  - Using machine learning for (text) classification
  
   Examples: 
  - How polarized are MPs in the german Bundestag?

#### Literature
- *Peterson, A., & Spirling, A. (2018). Classification Accuracy as a Substantive Quantity of Interest: Measuring Polarization in Westminster Systems. Political Analysis, 26(1), 120-128. doi:10.1017/pan.2017.39*

### 2023-12-12 Session 5: Network data and analysis

TBA



### 2023-01-09 Session 6: Geo-spatial data

TBA



### 2023-01-23 Session 7: Based on interest of class

TBA



### 2023-02-06 Session 8: Research design / term paper presentations and wrap up



