MAIN = main
LATEX = pdflatex
FLAGS = -interaction=nonstopmode
BUILD_DIR = ../build

SECTIONS = $(wildcard sections/*.tex)

.PHONY: all clean run install

all: $(BUILD_DIR)/$(MAIN).pdf

$(BUILD_DIR)/$(MAIN).pdf: $(MAIN).tex $(SECTIONS)
	mkdir -p $(BUILD_DIR)
	$(LATEX) $(FLAGS) -output-directory=$(BUILD_DIR) $(MAIN).tex
	biber $(BUILD_DIR)/$(MAIN)
	$(LATEX) $(FLAGS) -output-directory=$(BUILD_DIR) $(MAIN).tex
	$(LATEX) $(FLAGS) -output-directory=$(BUILD_DIR) $(MAIN).tex

install:
	@echo "Instalá una distribución LaTeX (MacTeX/TeX Live) y pandoc si querés reconvertir DOCX."

clean:
	rm -f $(BUILD_DIR)/*.aux $(BUILD_DIR)/*.log $(BUILD_DIR)/*.toc $(BUILD_DIR)/*.out $(BUILD_DIR)/*.pdf $(BUILD_DIR)/*.bbl $(BUILD_DIR)/*.bcf $(BUILD_DIR)/*.blg $(BUILD_DIR)/*.run.xml

run: all
	open $(BUILD_DIR)/$(MAIN).pdf
