PRACE=prace.tex

all: vlna pdf

pdf:
	latexmk -pdflua $(PRACE)
	#latexmk -pdf $(PRACE)

clean:
	latexmk -c
	rm pdfa.xmpi prace.bbl prace.run.xml

cleanall:
	latexmk -C
	rm pdfa.xmpi prace.bbl prace.run.xml

vlna:
	vlna -l -r *.tex
	vlna -l -r chapters/*.tex

remake: cleanall vlna pdf
