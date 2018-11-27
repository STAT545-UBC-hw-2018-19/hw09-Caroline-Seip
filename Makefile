all: report.html FirstLetter.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html firstletter.tsv barplot.png FirstLetter.md FirstLetter.html

report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

firstletter.tsv:

histogram.tsv: histogram.r words.txt
	Rscript $<

words.txt: /usr/share/dict/words
	cp $< $@
	
FirstLetter.html: FirstLetter.rmd firstletter.tsv barplot.png
	Rscript -e 'rmarkdown::render("$<")'
	
# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
