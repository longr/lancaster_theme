FILES = slides
.PHONY: html
default: html ;

html:
	pandoc -t revealjs --slide-level=2 -s -o $(FILES).html $(FILES).md \
	-V revealjs-url=https://unpkg.com/reveal.js@3.9.2 \
	-V theme=white \
	-V slideNumber=true \
	-V progress=true
#	--slide-level=2 enables verticle slides.

md2pdf:
	pandoc -t beamer --slide-level=2 -o $(FILES).pdf $(FILES).md \
	-V theme=lancaster \

tex2pdf:
	pdflatex $(FILES).tex

rmd2pdf:
	Rscript -e "rmarkdown::render('$(FILES).Rmd')"

clean:
	rm -f *.{out,aux,bbl,blg,log,toc,ptb,tod,fls,fdb_latexmk,lof,snm,nav,vrb}

cleanall:
	rm -rf $(FILES).html $(FILES).pdf

all: pdf html
# https://gist.github.com/rmed/c35292929d4e821a645c  notes on -V flags for pandoc
