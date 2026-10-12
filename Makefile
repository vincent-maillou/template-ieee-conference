MAIN  := main
BIB   := biblio

LATEXMK       := latexmk
LATEXMK_FLAGS ?= -pdf -interaction=nonstopmode -halt-on-error

.PHONY: all view clean distclean

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(BIB).bib
	$(LATEXMK) $(LATEXMK_FLAGS) $(MAIN).tex

view: $(MAIN).pdf
	$(LATEXMK) $(LATEXMK_FLAGS) -pvc $(MAIN).tex

clean:
	$(LATEXMK) -c $(MAIN).tex

distclean: clean
	$(RM) $(MAIN).pdf
