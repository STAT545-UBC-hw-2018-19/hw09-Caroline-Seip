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

I computed the number of words that started with each letter of the alphabet

The most common first letter of a word was s

Here is a barplot of the number of words starting with each letter

![*Fig. 1* A barplot of first letters of English words](barplot.png)


