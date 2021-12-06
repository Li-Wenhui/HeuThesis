@echo Making xelatex......
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex

del /S *.aux *.bbl *.blg *.out *.thm *.toc *.lof *.fen *.toe *.lot *.ten *.log *.bak *.loa *.glo *.idx
exit