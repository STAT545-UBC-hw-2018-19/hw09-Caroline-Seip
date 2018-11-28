all: report.html FirstLetter.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html firstletter.tsv barplot.png FirstLetter.md FirstLetter.html

report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'

FirstLetter.html:FirstLetter.rmd firstletter.tsv barplot.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: firstletter.r histogram.tsv
	Rscript $<
	
barplot.png: firstletter.tsv
	Rscript -e 'barplot(firstlettertable, main = "Number of words that start with each letter", xlab= "Letter", ylab= "Number of words")'

firstletter.tsv: firstletter.r words.txt
	Rscript $<

histogram.tsv: histogram.r words.txt
	Rscript $<

words.txt: /usr/share/dict/words
	cp $< $@
	
words.txt:
	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
