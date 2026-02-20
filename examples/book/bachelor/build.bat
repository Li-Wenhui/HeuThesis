@echo Making xelatex......
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex

del /S *.idx *.ind *.ilg *.thm *.toe *.aux *.bbl *.blg *.out *.toc *.lof *.fen *.lot *.ten *.log *.bak *.loa *.glo
exit