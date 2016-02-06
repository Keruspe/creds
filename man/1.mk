# Copyright (c) 2016, Marc-Antoine Perennou <Marc-Antoine@Perennou.com>

AM_XSLTPROCFLAGS =                            \
	--nonet                               \
	--xinclude                            \
	--stringparam man.output.quietly 1    \
	--stringparam funcsynopsys.style ansi \
	--path %D%/1                          \
	$(NULL)

dist_man1_MANS =      \
	%D%/1/creds.1 \
	$(NULL)

EXTRA_DIST +=                    \
	$(dist_man1_MANS:.1=.xml) \
	$(NULL)

SUFFIXES += .1 .xml
.xml.1:
	@ if test -z "$(XSLTPROC)"; then                    \
	    echo "xsltproc is required to build man pages"; \
	    exit 1;                                         \
	fi
	@ $(MKDIR_P) $(@D)
	$(AM_V_GEN) $(XSLTPROC) $(AM_XSLTPROCFLAGS) $(XSLTPROCFLAGS) -o $(@D)/      \
	    http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl \
	    $<
