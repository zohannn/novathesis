.PHONY: all clean 
all: dissertacao.pdf clean

dissertacao.pdf: main.tex
	latexmk -xelatex main.tex --outdir=dissertacao 2>&1 > /dev/null 

debug: main.tex
	latexmk -xelatex main.tex --outdir=dissertacao 
	cp dissertacao/main.pdf dissertation.pdf

clean: 
	mv dissertacao/main.pdf dissertation.pdf
	rm -rf dissertacao/
