.PHONY: all main.pdf

all: main.pdf

main.pdf: *.tex chapters/*.tex
	pdflatex -shell-escape main
	bibtex main
	pdflatex -shell-escape main
	pdflatex -shell-escape main
	rm -rf *.blg *.bbl *.upa *.idx *.ind *.ilg *.aux *.upb *.bcf *.toc *.run.xml *.log *.ptc *.synctex.gz _minted*

clean:
	rm -rf *.blg *.bbl *.upa *.idx *.ind *.ilg *.aux *.upb *.bcf *.toc *.run.xml *.log *.ptc *.synctex.gz main.pdf _minted*
