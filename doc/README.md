# ADS Project 1: What made you happy today?
### Doc folder

The doc directory contains the report or presentation files. To
reproduce the blog post, first compile the "Happy Data
Processing.Rmd". This will generate a csv file in the "out" folder with cleaned text
data. "Happy Data Alone.Rmd" then merges that csv file with
demographic data and produces the blog post. 

Some French accents are in there. To obtain them in the output html
file, choose "File -> Reopen with Encoding... -> UTF-8" with "Happy
Data Alone.Rmd" in Rstudio.

"wordlists.R" is used by "Happy Data Processing.Rmd" to categorize
statements: happy alone / happy with others.
