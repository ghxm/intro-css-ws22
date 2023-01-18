---
documentclass: scrartcl
title-meta: "Paper template: Analysis / Coding project"
title: "Paper template: Analysis / Coding project"
classoption: oneside
fontsize: 11pt
pagestyle: empty
geometry:
- left= 2cm
- right= 2cm
- top= 2cm
- bottom= 2cm
output: pdf_document
---


*You can use this template to structure your term paper and term paper idea presentation. It is important to know that this is a merely one template or suggestion for writing a term paper. Depending on your specific research idea, some party may be more / less important than others.*



# Introduction

*The introduction should act as a one-stop-shop for grasping your paper, i.e. it should contain briefly introduce your topic of inquiry and the goal of your analysis. Also, describe what you will be doing in the remainder of the paper. An introduction should make up roughly 10% of your paper.*

- What is your paper about?
- What information will we find in the remainder of the paper / which steps do you intend to take to answer your question?

Can, but need not include:

- What is your research question / goal / contribution? What do you want to find out / intend to do?
- Why should we care about your research question / goal?



# Research design

*This section is the 'recipe' for your paper. This means, you need to specify what kind of data you will be using to perform your analysis, how you plan to obtain your data and why your data is suited to answer your research question. Additionally, depending on the scope / goal of your research, you will need to specify how you plan to analyze your data once you have obtained it and how this analysis will help you answer your research question.*

- What do you intend to do?
- What data will you be using? How did you obtain the data?
- What is your *level of analysis* (what does one obervation / row in your data represent?)?
- How do you *operationalize* your variables of interest, i.e. how do you intend to measure your phenomenon of interest?
- How will you analyze the data? 
- What are possible limitations of your approach?
- Describe your data: How many observations do you have? Is there a timeframe?


Not necessary, but might be helpful:

- How can you visualize your approach?


# Analysis / results

This is where you present the results of your finished analysis. Make sure to use visualization (tables, plots) where possible to make it easier for the reader to quickly understand the main takeaways. It is often a good idea to start with a descriptive view of the data (e.g. averages, distributions of key variables) before engaging in more detailed analysis.

Also make sure to present the data in as much detail as needed to understand your substantial conclusions. E.g., if you claim that your data show that Donald Trump's tweets are short when sent at nighttime, you need to present evidence from your data that support this statement.

- How did your analysis go? Did you run into problems?
- What results did you obtain at the individual steps?
- What are your main findings?
- Are there limitations to your findings?


# `R` code

Make sure to prepare your code as an `R` script, that

- installs and loads all necessary packages
- can be run at any computer different from your own (&rarr; e.g. test it on Rstudio cloud)
- runs smoothly without errors from beginning to end
- is well commented, explaining the individual steps of your analysis

When commenting your code, try to find a balance between very few general comments and over-explaining your code. It's usually best to focus on the goal you intend to reach by performing a set of commands, e.g.^[Occasionally you may end up writing code that looks counter-intuitive or unusual. In these cases it is also advisable to describe in a comment what your code is doing so that others can easily comprehend what is going on.]


`````

# Recoding the variables to prepare them for the analysis

dataset %>%
    mutate(...) %>%
    mutate(...)
    
`````

This will help yourself to navigate your code and will help us understand why you performed a specific action.

Depending on the scope of your project, it is also advisable to separate your code into multiple scripts according to their concerns. When doing so, make sure to add additional Readme file that explains the order in which the individual files need to be run or use a naming scheme that makes this obvious, e.g.

- `01_collect_data.R`
- `02_preprocess_data.R`
- `03_analysis_data.R`
- `data/dataset.csv`








