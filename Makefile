PAPER_KO_SRC := paper/ko/main-ko.typ
PAPER_KO_PDF := paper/ko/main-ko.pdf
PAPER_EN_SRC := paper/en/main-en.typ
PAPER_EN_PDF := paper/en/main-en.pdf

.PHONY: build watch build-ko watch-ko build-en watch-en build-all clean

build: build-ko

watch: watch-ko

build-ko:
	typst compile --root . $(PAPER_KO_SRC) $(PAPER_KO_PDF)

watch-ko:
	typst watch --root . $(PAPER_KO_SRC) $(PAPER_KO_PDF)

build-en:
	typst compile --root . $(PAPER_EN_SRC) $(PAPER_EN_PDF)

watch-en:
	typst watch --root . $(PAPER_EN_SRC) $(PAPER_EN_PDF)

build-all: build-ko build-en

clean:
	rm -f $(PAPER_KO_PDF) $(PAPER_EN_PDF)
