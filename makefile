INPUT = roadmap
CSS = pandoc.css
BIB = bibliography.bib

%.pdf : %.md $(BIB) $(CSS)
	pandoc -s $< --bibliography=$(BIB) -V geometry:a4paper -o $@

%.html : %.md $(BIB) $(CSS)
	pandoc -s $< --bibliography=$(BIB) -H $(CSS) --mathjax -o $@

html : $(INPUT).html
	
pdf : $(INPUT).pdf

.PHONY : clean
clean:
	rm -f $(INPUT).html $(INPUT).pdf
