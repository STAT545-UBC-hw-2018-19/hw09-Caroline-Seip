---
title: "FirstLetter"
author: "Caroline Seip"
date: '2018-11-27'
output:
  html_document:
    keep_md: yes
---


```r
bar_dat <- read.delim("firstletter.tsv")
```

For this assignment, I computed the number of words that started with each letter of the alphabet

The most common first letter of a word was s, which 25162 English words started with.

The least common first letter of a word was x, which 385 English words started with.

Here is a barchart of the number of words starting with each letter:

![**Fig. 1** Number of English words beginning with each letter of the alphabet](barplot.png)



