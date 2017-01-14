all: \
	example1.pdf \
	example2.pdf \
	example_czech.pdf \
	example_polish.pdf

example1.pdf : example1_included.tex

%.pdf : %.tex ../songbook.tex
	TEXINPUTS=:../ encpdftex "$<"
