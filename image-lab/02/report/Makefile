OUTPUTNAME = report
FLAGS = --shell-escape -jobname $(OUTPUTNAME)
FILE = head/head.tex
OPEN=rifle
PLATFORM=$(shell uname)

ifeq ($(PLATFORM),Darwin)
include Makefile.osx
endif

.PHONY: all
all:
	pdflatex $(FLAGS) $(FILE) > /dev/null
	pdflatex $(FLAGS) $(FILE) > /dev/null
	$(OPEN) $(OUTPUTNAME).pdf

.PHONY: clean
clean:
	rm *.aux *.toc *.log *.ind *.ilg *.pyg

.PHONY: err
err:
	pdflatex $(FLAGS) $(FILE)
