.PHONY: all clean 
all: dissertacao.pdf clean

dissertacao.pdf: template.tex
	latexmk -xelatex template.tex --outdir=dissertacao 2>&1 > /dev/null 

debug: template.tex
	latexmk -xelatex template.tex --outdir=dissertacao 
	cp dissertacao/template.pdf dissertation.pdf

clean: 
	mv dissertacao/template.pdf dissertation.pdf
	rm -rf dissertacao/
