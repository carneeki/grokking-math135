all: clean book

clean:
	@ #check if out/ exists
	@if [ ! -d out ]; then \
		mkdir out;           \
	fi
	rm -f out/*

tidy:
	rm -f out/*.aux
	rm -f chaps/*.aux

book:
	@ #check if out/ exists
	@if [ ! -d out ]; then \
		mkdir out;          \
	fi
	pdflatex --output-directory=out MATH135.tex
