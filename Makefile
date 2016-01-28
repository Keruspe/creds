DESTDIR ?=
PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin

CREDS_BIN = creds

all:

install:
	install -m 0755 -D $(CREDS_BIN) $(DESTDIR)/$(BINDIR)/$(CREDS_BIN)

.PHONY: all install
