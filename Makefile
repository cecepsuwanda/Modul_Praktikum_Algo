# Build rules for the LaTeX book and per-chapter PDFs

TEXMAIN=main.tex
OUTDIR=build

LATEXMK=latexmk
LATEXMK_OPTS=-pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=$(OUTDIR)

CHAPTERS=chapters/bab01 chapters/bab02 chapters/bab03 chapters/bab04 \
          chapters/bab05 chapters/bab06 chapters/bab07 chapters/bab08

all: $(OUTDIR)/main.pdf

$(OUTDIR)/main.pdf: $(TEXMAIN) $(CHAPTERS:=.tex) references.bib
	mkdir -p $(OUTDIR)
	$(LATEXMK) $(LATEXMK_OPTS) $(TEXMAIN)

# Build a single chapter (e.g., make chapter CH=bab01)
chapter:
	@if [ -z "$(CH)" ]; then echo "Specify CH=babXX"; exit 1; fi
	mkdir -p $(OUTDIR)
	$(LATEXMK) $(LATEXMK_OPTS) chapters/$(CH).tex

clean:
	$(LATEXMK) -C -outdir=$(OUTDIR)
	@rm -rf $(OUTDIR)

.PHONY: all chapter clean
