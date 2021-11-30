@echo Making xelatex......
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
@echo Make cover......
xelatex spine.tex
xelatex a3cover.tex

del /S *.aux *.bbl *.blg *.out *.thm *.toc *.lof *.fen *.toe *.lot *.ten *.log *.bak *.loa *.glo *.idx *.ist
exit