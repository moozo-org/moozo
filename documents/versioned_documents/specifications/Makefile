NAME = specifications
TITLE = Cahier des charges
COVER_TITLE = CAHIER DES CHARGES

include ../doc.mk

WBS_PDFS = $(patsubst wbs/%.md,pdf/wbs/%.pdf,$(wildcard wbs/*.md))

.PHONY: wbs

# one single-page PDF per WBS domain, regenerated from wbs/*.md
wbs: $(WBS_PDFS)

pdf/wbs/%.pdf: wbs/%.md scripts/wbs-style.typ $(SCRIPTS)/mermaid.json $(SCRIPTS)/mermaid.lua
	mkdir -p build pdf/wbs
	MERMAID_NATURAL=1 pandoc $< --lua-filter=$(SCRIPTS)/mermaid.lua -t typst -o build/$*.body.typ
	cat scripts/wbs-style.typ build/$*.body.typ > build/$*.typ
	typst compile --root . build/$*.typ $@
