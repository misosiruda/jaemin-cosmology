PAPER_KO_SRC := paper/ko/main-ko.typ
PAPER_KO_PDF := paper/ko/main-ko.pdf

.PHONY: build watch clean

build:
	typst compile --root . $(PAPER_KO_SRC) $(PAPER_KO_PDF)

watch:
	typst watch --root . $(PAPER_KO_SRC) $(PAPER_KO_PDF)

clean:
	rm -f $(PAPER_KO_PDF)
