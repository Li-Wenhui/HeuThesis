@echo make thesis......
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex

@echo make cover......
xelatex spine.tex
xelatex a3cover.tex
xelatex thesis.tex

@echo clean......
del /S *.idx *.ind *.ilg *.thm *.toe *.aux *.bbl *.blg *.out *.toc *.lof *.fen *.lot *.ten *.log *.bak *.loa *.glo *.ist
exit