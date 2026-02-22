TEXCMD  = xelatex
BIBCMD  = bibtex
MAINTEX = main
SPINE   = spine
COVER   = a3cover
TARGET  = thesis

.PHONY : all clean

empty:
	@echo Compiling Tex ...
	$(TEXCMD) -shell-escape $(MAINTEX).tex
	$(BIBCMD)  $(MAINTEX)
	$(TEXCMD) -shell-escape $(MAINTEX).tex
	$(TEXCMD) -shell-escape $(MAINTEX).tex
	@echo Done. Build main completed......

all:
	@echo Compiling Tex ...
	$(TEXCMD) -shell-escape $(MAINTEX).tex
	$(BIBCMD)  $(MAINTEX)
	$(TEXCMD) -shell-escape $(MAINTEX).tex
	$(TEXCMD) -shell-escape $(MAINTEX).tex
	$(TEXCMD) -shell-escape  $(SPINE).tex
	$(TEXCMD) -shell-escape  $(COVER).tex
	$(TEXCMD) -shell-escape  $(TARGET).tex
	@echo Done. Starting the browser......

clean:
	@echo Cleaning up ...
	-find -name '*.aux' -exec rm -f {} \;
	-find -name '*.bak' -exec rm -f {} \;
	-find -name '*.dvi' -exec rm -f {} \;
	-find -name '*~' -exec rm -f {} \;
	-find -name '#*#' -exec rm -f {} \;
	-find -name 'semantic.cache' -exec rm -f {} \;
	-find -name '*.log' -exec rm -f {} \;
	-rm -f *.bbl *.blg *.log *.out *.ps *.thm *.toc *.toe *.lof *.lot *.ist
	-rm -f *.loa *.aen *.fen *.ten *.prv *.html *.css *.scm *.hlog *.glo *.idx
	-rm -f _region_.tex
	-rm -f -rf auto
	-rm -rf ./body/auto
	-rm -rf ./reference/auto
	-rm -rf ./setup/auto
	-rm -rf ./preface/auto
	@echo All done.
