xelatex heuthesis.ins
xelatex heuthesis.dtx
makeindex -s gind.ist -o heuthesis.ind heuthesis.idx
makeindex -s gglo.ist -o heuthesis.gls heuthesis.glo
xelatex heuthesis.dtx
xelatex heuthesis.dtx
clean
