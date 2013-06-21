all: pdf rmaux

pdf:
	pdflatex bayesian_timeseries_grouping.tex
	bibtex bayesian_timeseries_grouping
	pdflatex bayesian_timeseries_grouping.tex
	pdflatex bayesian_timeseries_grouping.tex

rmaux:
	rm -Rf *.aux *.log *.out *.blg

rmout:
	rm -Rf *.pdf *.bbl

clean: rmaux rmout
