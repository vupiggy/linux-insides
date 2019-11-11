ifndef ROOTDIR
	ROOTDIR	= ..
endif
DOCTOOLS	= $(ROOTDIR)/Scripts/pandoctools
PANDOCFILTERS	= $(DOCTOOLS)/filters/codeblock/codeblock-filter
EXTRAARGS	= $(foreach filter, $(PANDOCFILTERS), --filter $(filter))

ifdef  TARGET
MDPDFTARGETS	= $(TARGET).md.pdf
MDPARTS		= $(shell ls $(ROOTDIR)/$(TARGET)/*.md | sort -V)
include $(DOCTOOLS)/make/Makefile.in
else
all:
	@echo "No target specified, exit"
endif
