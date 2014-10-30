OUTPUTNAME = report
FLAGS = --shell-escape -jobname $(OUTPUTNAME)
FILE = head/head.tex

.PHONY: all
all:
	pdflatex $(FLAGS) $(FILE) > /dev/null
	pdflatex $(FLAGS) $(FILE) > /dev/null
	rifle $(OUTPUTNAME).pdf

.PHONY: clean
clean:
	rm *.aux *.toc *.log *.ind *.ilg *.pyg

.PHONY: err
err:
	pdflatex $(FLAGS) $(FILE)
