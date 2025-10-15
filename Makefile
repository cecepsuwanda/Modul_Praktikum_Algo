# Build rules for the LaTeX book and per-chapter PDFs

TEXMAIN=main.tex
OUTDIR=build

# Tool detection
LATEXMK:=$(shell command -v latexmk 2>/dev/null)
PDFLATEX:=$(shell command -v pdflatex 2>/dev/null)
BIBER:=$(shell command -v biber 2>/dev/null)

LATEXMK_OPTS=-pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=$(OUTDIR)

# Build commands depending on available tools
ifeq ($(LATEXMK),)
BUILD_MAIN=\
  $(PDFLATEX) -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=$(OUTDIR) $(TEXMAIN); \
  if [ -n "$(BIBER)" ]; then $(BIBER) --output-directory $(OUTDIR) main; fi; \
  $(PDFLATEX) -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=$(OUTDIR) $(TEXMAIN); \
  $(PDFLATEX) -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=$(OUTDIR) $(TEXMAIN)
BUILD_CHAPTER=\
  $(PDFLATEX) -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=$(OUTDIR) chapters/$(CH).tex; \
  if [ -n "$(BIBER)" ]; then $(BIBER) --output-directory $(OUTDIR) $(CH); fi; \
  $(PDFLATEX) -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=$(OUTDIR) chapters/$(CH).tex; \
  $(PDFLATEX) -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=$(OUTDIR) chapters/$(CH).tex
else
BUILD_MAIN=$(LATEXMK) $(LATEXMK_OPTS) $(TEXMAIN)
BUILD_CHAPTER=$(LATEXMK) $(LATEXMK_OPTS) chapters/$(CH).tex
endif

CHAPTERS=chapters/bab01 chapters/bab02 chapters/bab03 chapters/bab04 \
          chapters/bab05 chapters/bab06 chapters/bab07 chapters/bab08 \
          chapters/bab09 chapters/bab10 chapters/bab11 chapters/bab12

all: $(OUTDIR)/main.pdf

$(OUTDIR)/main.pdf: $(TEXMAIN) $(CHAPTERS:=.tex) references.bib
	mkdir -p $(OUTDIR)
	$(BUILD_MAIN)

# Build a single chapter (e.g., make chapter CH=bab01)
chapter:
	@if [ -z "$(CH)" ]; then echo "Specify CH=babXX"; exit 1; fi
	mkdir -p $(OUTDIR)
	$(BUILD_CHAPTER)

clean:
	@if [ -n "$(LATEXMK)" ]; then $(LATEXMK) -C -outdir=$(OUTDIR); fi
	@rm -rf $(OUTDIR)

.PHONY: all chapter clean
