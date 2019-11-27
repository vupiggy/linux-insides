ifndef ROOTDIR
	ROOTDIR	= ..
endif
DOCTOOLS	= $(ROOTDIR)/Scripts/pandoctools
PANDOCFILTERS	= $(DOCTOOLS)/filters/codeblock/codeblock-filter $(DOCTOOLS)/filters/image/image-filter
EXTRAARGS	= $(foreach filter, $(PANDOCFILTERS), --filter $(filter)) --filter pandoc-crossref

ifdef  TARGET
MDPDFTARGETS	= $(TARGET).md.pdf
MDHTMLTARGETS	= $(TARGET).html
MDPARTS		= $(shell ls $(ROOTDIR)/$(TARGET)/*.md | sort -V)
include $(DOCTOOLS)/make/Makefile.in
else
all:
	@echo "No target specified, exit"
endif
