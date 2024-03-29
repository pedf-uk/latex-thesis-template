PRACE=prace.tex

.PHONY: all clean cleanall vlna remake

all: vlna pdf

pdf:
	latexmk -quiet -shell-escape -pdflua $(PRACE)

clean:
	latexmk -quiet -c
	rm -rf pdfa.xmpi *.bbl *.run.xml *.lol *.bib.bbl *.bib.blg _minted-*

cleanall: clean
	latexmk -quiet -C

vlna:
	vlna -l -r *.tex
	vlna -l -r kapitoly/*.tex

remake: cleanall vlna pdf
