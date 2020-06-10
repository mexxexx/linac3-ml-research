INPUT = roadmap
OUTPUT = $(INPUT)
SOURCE = $(INPUT).md
CSS = pandoc.css
BIB = bibliography.bib

html : $(SOURCE) $(CSS) $(BIB)
	pandoc -s $(SOURCE) --css=$(CSS) --bibliography=$(BIB) --mathjax -o $(OUTPUT).html
	
pdf : $(SOURCE) $(CSS) $(BIB)
	pandoc -s $(SOURCE) --bibliography=$(BIB) -V geometry:a4paper -o $(OUTPUT).pdf

.PHONY : clean
clean:
	rm $(FILE).html $(FILE).pdf
