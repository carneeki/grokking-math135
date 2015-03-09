all: clean book

clean:
	@ #check if out/ exists
	@if [ ! -d out ]; then \
		mkdir out;           \
	fi
	rm -f out/*

book: clean book1 book2
	pdflatex --output-directory=out MATH135.tex

book1:
	pdflatex --output-directory=out MATH135.tex

book2:
	pdflatex --output-directory=out MATH135.tex
