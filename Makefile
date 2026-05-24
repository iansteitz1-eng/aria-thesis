# Aria Thesis — build targets
#
# Requires: pandoc, xelatex (for PDF). On Ubuntu:
#   apt install pandoc texlive-xetex texlive-fonts-recommended
#
# Usage:
#   make           — build PDF + HTML
#   make pdf       — PDF only
#   make html      — HTML only
#   make clean     — remove built artifacts

SOURCE   = aria_thesis_v0.md
PDF      = aria_thesis_v0.pdf
HTML     = aria_thesis_v0.html

PANDOC      = pandoc
PDF_FLAGS   = --pdf-engine=xelatex \
              -V geometry:margin=1in \
              -V documentclass=article \
              -V fontsize=11pt \
              --toc \
              --highlight-style=tango
HTML_FLAGS  = --standalone \
              --toc \
              --highlight-style=tango \
              --metadata title="The Aria Thesis — White Paper v0"

.PHONY: all pdf html clean

all: pdf html

pdf: $(PDF)

html: $(HTML)

$(PDF): $(SOURCE)
	$(PANDOC) $(PDF_FLAGS) -o $@ $<

$(HTML): $(SOURCE)
	$(PANDOC) $(HTML_FLAGS) -o $@ $<

clean:
	rm -f $(PDF) $(HTML)
