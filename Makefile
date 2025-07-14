

DESTDIR ?=
PREFIX ?= /usr
BINDIR := $(DESTDIR)$(PREFIX)/bin
MANDIR := $(DESTDIR)$(PREFIX)/man
SHAREDIR := $(DESTDIR)$(PREFIX)/share




default: build
.PHONY: default





help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo
	@echo '	$$ make help'
	@echo
	@echo '	$$ make deb-build-essential'
	@echo
	@echo '	$$ make deb-build-dep'
	@echo
	@echo '	$$ make deb-build'
	@echo
	@echo '	$$ make srcdeb-build'
	@echo
.PHONY: help




dump:
	@echo "DESTDIR=$(DESTDIR)"
	@echo "PREFIX=$(PREFIX)"
	@echo "BINDIR=$(BINDIR)"
	@echo "MANDIR=$(MANDIR)"
	@echo "SHAREDIR=$(SHAREDIR)"
.PHONY: dump




build:
	echo build
.PHONY: build





install:
	install -Dm755 demo-app-sh $(BINDIR)/demo-app-sh
	install -Dm644 demo-app-sh.desktop $(SHAREDIR)/applications/demo-app-sh.desktop
	install -Dm644 LICENSE $(SHAREDIR)/doc/demo-app-sh/LICENSE
	install -Dm644 README.md $(SHAREDIR)/doc/demo-app-sh/README.md
	mkdir -p $(SHAREDIR)/demo-app-sh
	cp -rfT src/demo-app-sh $(SHAREDIR)/demo-app-sh
.PHONY: dump


uninstall:
	rm -f $(BINDIR)/demo-app-sh
	rm -f $(SHAREDIR)/applications/demo-app-sh.desktop
	rm -rf $(SHAREDIR)/doc/demo-app-sh
	rm -rf $(SHAREDIR)/demo-app-sh
.PHONY: uninstall




clean:
	echo clean
.PHONY: clean




##
## ## changelog
##
## * [man 5 deb-changelog](https://manpages.debian.org/stable/dpkg-dev/deb-changelog.5.en.html)
## * [man 1 debchange](https://manpages.debian.org/stable/devscripts/debchange.1.en.html)
##

changelog-edit:
	debchange
.PHONY: changelog-edit


changelog-date:
	date -R
.PHONY: changelog-date


##
## `date -R`
##
## `date -d '2025-06-09 07:45:46' -R`
##




##
## ## deb packaging
##

deb-build-essential:
	sudo apt-get install -y git devscripts equivs
.PHONY: deb-build-essential


deb-build-dep:
	sudo mk-build-deps -i -t "apt-get -y" -r
.PHONY: deb-build-dep


deb-build:
	dpkg-buildpackage -b -uc -us -tc
.PHONY: deb-build


srcdeb-build:
	dpkg-buildpackage -uc -us -tc
.PHONY: srcdeb-build
