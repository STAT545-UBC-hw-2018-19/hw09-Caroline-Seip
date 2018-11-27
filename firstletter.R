library(ggplot2)
library(tidyverse)
words <- readLines("words.txt") #read in .txt file
first <- substr(words, 1, 1) #extract first letter of each word
lowfirst <- tolower(first) #convert letters to lower case
firstlettertable <- table(lowfirst) #create frequency table of first letters
write.table(firstlettertable, "firstletter.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE) #output table to .tsv
png(filename = "barplot.png", width = 500, height = 500)
barplot(firstlettertable, main = "Number of words that start with each letter",
				xlab= "Letter")

				