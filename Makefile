FILES_TEX = \
  ArchComp_Lecture00.tex\
  ArchComp_Lecture01.tex

FILES_PDF_FROM_TEX = $(FILES_TEX:.tex=.pdf)

all: $(FILES_PDF_FROM_TEX)

$(FILES_PDF_FROM_TEX): %.pdf: %.tex
	latexmk -f -pdf -latexoption="-interaction=nonstopmode" -latexoption="-synctex=1" $<

clean:
	latexmk -C -pdf $(FILES_PDF_FROM_TEX)
