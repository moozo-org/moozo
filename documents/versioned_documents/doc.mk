# Shared by every document folder. Set NAME, TITLE and COVER_TITLE, then `include ../doc.mk`.
# Build rules for `make pdf VERSION=x.y`. In Docker, from anywhere: `documents/versioned_documents/build-pdf.sh <document> <version>`.

VERSION ?=
DATE ?= $(shell date +%d/%m/%Y)
SOURCES = $(sort $(wildcard 0*.md))
OUT = pdf/$(NAME)_v$(VERSION).pdf
SCRIPTS = ../scripts

.PHONY: pdf clean

pdf:
	@test -n "$(VERSION)" || { echo "usage: make pdf VERSION=1.1"; exit 1; }
	@test ! -e $(OUT) || { echo "$(OUT) already exists, published versions are never overwritten"; exit 1; }
	mkdir -p build
	sed -e 's/@VERSION@/$(VERSION)/' -e 's#@DATE@#$(DATE)#' -e 's#@TITLE@#$(TITLE)#' -e 's#@COVER_TITLE@#$(COVER_TITLE)#' $(SCRIPTS)/cover.typ.in > build/cover.typ
	sed -e 's/@VERSION@/$(VERSION)/' -e 's#@TITLE@#$(TITLE)#' $(SCRIPTS)/style.typ.in > build/style.typ
	pandoc $(SOURCES) \
	  --lua-filter=$(SCRIPTS)/links.lua \
	  --lua-filter=$(SCRIPTS)/mermaid.lua \
	  --pdf-engine=typst --pdf-engine-opt=--root=.. --template=$(SCRIPTS)/template.typ \
	  --include-before-body=build/style.typ \
	  --include-before-body=build/cover.typ \
	  --toc --toc-depth=2 -M toc-title=Sommaire \
	  -o $(OUT)

clean:
	rm -rf build
