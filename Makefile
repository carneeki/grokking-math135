all: clean book

clean:
	rm out/*

tidy:
	rm out/*.aux
	rm chaps/*.aux

book:
	pdflatex --output-directory=out MATH135.tex
