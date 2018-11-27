library(tidyverse)
library(tibble)
words <- readLines("words.txt") #read in .txt file
first <- substr(words, 1, 1) #extract first letter of each word
lowfirst <- tolower(first) #convert letters to lower case
write.table(lowfirst, "firstletter.tsv")
