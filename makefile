PRACE=prace.tex

.PHONY: all clean cleanall vlna remake

all: vlna pdf

pdf:
	latexmk -pdflua $(PRACE)
	#latexmk -pdf $(PRACE)

clean:
	latexmk -c
	rm -f pdfa.xmpi prace.bbl prace.run.xml

cleanall: clean
	latexmk -C

vlna:
	vlna -l -r *.tex
	vlna -l -r kapitoly/*.tex

remake: cleanall vlna pdf
