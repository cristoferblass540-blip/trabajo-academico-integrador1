# Nombre del archivo principal sin extensión
MAIN = main
# Compilador
LATEX = pdflatex
# Carpeta de salida (opcional, para mantener limpia la raíz)
FLAGS = -interaction=nonstopmode

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex src/sections/*.tex
	$(LATEX) $(FLAGS) $(MAIN).tex
	# Segunda pasada para el índice (Table of Contents)
	$(LATEX) $(FLAGS) $(MAIN).tex

clean:
	rm -f *.aux *.log *.toc *.out *.pdf
	rm -f src/sections/*.aux

# Comando para compilar y abrir (Linux/WSL)
run: all
	xdg-open $(MAIN).pdf