.PHONY: all clean
all: dissertacao.pdf clean

dissertacao.pdf: template.tex
	latexmk -xelatex -gg template.tex --outdir=dissertacao 
	# latexmk -xelatex template.tex 2>/dev/null; true


clean: 
	# latexmk -CA
	# sh Scripts/clean-temp.sh
	mv dissertacao/template.pdf dissertation.pdf
	rm -rf dissertacao/
