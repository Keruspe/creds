# Copyright (c) 2016, Marc-Antoine Perennou <Marc-Antoine@Perennou.com>

bin_SCRIPTS =         \
	%D%/bin/creds \
	$(NULL)

EXTRA_DIST +=               \
	$(bin_SCRIPTS:=.in) \
	$(NULL)

CLEANFILES += $(bin_SCRIPTS)
