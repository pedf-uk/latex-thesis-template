PRACE=prace.tex

all: vlna pdf

pdf:
	latexmk -pdflua $(PRACE)
	#latexmk -pdf $(PRACE)

clean:
	latexmk -c

cleanall:
	latexmk -C

vlna:
	vlna -l -r *.tex
	vlna -l -r chapters/*.tex

remake: cleanall vlna pdf
