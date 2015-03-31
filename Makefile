all: clean book

clean:
	@ #check if out/ exists
	@if [ ! -d out ]; then \
		mkdir out;           \
	fi
	rm -f out/*

book: clean book1 book2
	pdflatex -interaction=batchmode --shell-escape --enable-write18 --output-directory=out MATH135.tex

book1:
	pdflatex -interaction=batchmode --shell-escape --enable-write18 --output-directory=out MATH135.tex

book2:
	pdflatex -interaction=batchmode --shell-escape --enable-write18 --output-directory=out MATH135.tex
