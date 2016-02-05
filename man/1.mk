# Copyright (c) 2016, Marc-Antoine Perennou <Marc-Antoine@Perennou.com>

AM_XSLTPROCFLAGS =                            \
	--nonet                               \
	--xinclude                            \
	--stringparam man.output.quietly 1    \
	--stringparam funcsynopsys.style ansi \
	--path %D%/1                          \
	$(NULL)

man1_MANS =           \
	%D%/1/creds.1 \
	$(NULL)

EXTRA_DIST +=                \
	$(man1_MANS:.1=.xml) \
	$(NULL)

CLEANFILES +=        \
	$(man1_MANS) \
	$(NULL)

SUFFIXES += .1 .xml
.xml.1:
	@ $(MKDIR_P) $(@D)/1
	$(AM_V_GEN) $(XSLTPROC) -o $(@D)/1 $(AM_XSLTPROCFLAGS) ${XSLTPROCFLAGS}             \
	    http://docbook.sourceforge.net/release/xsl/current/manpages/profile-docbook.xsl \
	    $<
