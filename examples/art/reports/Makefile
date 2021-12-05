# Makefile for heuthesis report
# Compiling method: latexmk/xelatex
METHOD = xelatex
# Set opts for latexmk if you use it
LATEXMKOPTS = -xelatex
# Basename of thesis
REPORTMAIN = report

PACKAGE=heuthesis

REPORTCONTENTS=$(REPORTMAIN).tex front/*.tex body/*.tex $(FIGURES)
# NOTE: update this to reflect your local file types.
FIGURES=$(wildcard figures/*.eps figures/*.pdf)
BIBFILE=*.bib
CLSFILES=$(PACKAGE)art.cls $(PACKAGE)art.cfg *.bst

# make deletion work on Windows
ifdef SystemRoot
	RM = del /Q
else
	RM = rm -f
endif

.PHONY: clean report

report: $(REPORTMAIN).pdf

ifeq ($(METHOD),latexmk)

$(REPORTMAIN).pdf: $(CLSFILES)
	$(METHOD) $(LATEXMKOPTS) $(REPORTMAIN)

else ifeq ($(METHOD),xelatex)

$(REPORTMAIN).pdf: $(CLSFILES) $(REPORTCONTENTS) $(REPORTMAIN).bbl
	$(METHOD) $(REPORTMAIN)
	$(METHOD) $(REPORTMAIN)

$(REPORTMAIN).bbl: $(BIBFILE)
	$(METHOD) $(REPORTMAIN)
	-bibtex $(REPORTMAIN)
	$(RM) $(REPORTMAIN).pdf

else
$(error Unknown METHOD: $(METHOD))

endif

clean:
	latexmk -c $(REPORTMAIN)
	-@$(RM) *~ *.idx *.ind *.ilg *.thm *.toe *.bbl
