DOCTOOLS=../../Scripts/pandoctools
FIGURES_PDF=stack1.pdf stack2.pdf stack3.pdf bss.pdf laddr.pdf descriptor.pdf
FIGURES_SVG=$(patsubst %.pdf, %.svg, $(FIGURES_PDF))
TEXEXTRAINPUTS=./src

ALL: $(FIGURES_PDF) $(FIGURES_SVG)
CLEAN:
	@echo "RM figures"
	@rm -f $(FIGURES_PDF) $(FIGURES_SVG)

DISTCLEAN:
	@echo "RM figures and all intermediates"
	@rm -f $(FIGURES_PDF) $(FIGURES_SVG) *.aux *.log src/*.tex

include $(DOCTOOLS)/make/Makefile.in
