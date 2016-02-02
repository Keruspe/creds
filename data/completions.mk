# Copyright (c) 2016, Marc-Antoine Perennou <Marc-Antoine@Perennou.com>

bashcompletion_DATA = %D%/completions/creds
zshcompletion_DATA  = %D%/completions/_creds

EXTRA_DIST +=                  \
	$(bashcompletion_DATA) \
	$(zshcompletion_DATA)  \
	$(NULL)
