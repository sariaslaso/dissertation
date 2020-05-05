
thesis.pdf: thesis.tex references.bib
	latexmk -f -pdf -pdflatex="pdflatex -interaction=nonstopmode" -bibtex -use-make thesis.tex

clean:
	latexmk -C

