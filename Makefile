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

# v2 is canonical (2026-05-25 night). v0 and v1 preserved per their tether protocols.
SOURCE     = aria_thesis_v2.md
PDF        = aria_thesis_v2.pdf
HTML       = aria_thesis_v2.html

V0_SOURCE  = aria_thesis_v0.md
V0_PDF     = aria_thesis_v0.pdf
V0_HTML    = aria_thesis_v0.html

V1_SOURCE  = aria_thesis_v1.md
V1_PDF     = aria_thesis_v1.pdf
V1_HTML    = aria_thesis_v1.html

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
              --metadata title="The Aria Thesis — White Paper v2"

.PHONY: all pdf html v0 v1 clean

# Default: build current canonical (v2)
all: pdf html

pdf: $(PDF)

html: $(HTML)

# v0 / v1 archive builds (preserved per their tether protocols)
v0: $(V0_PDF) $(V0_HTML)
v1: $(V1_PDF) $(V1_HTML)

$(PDF): $(SOURCE)
	$(PANDOC) $(PDF_FLAGS) -o $@ $<

$(HTML): $(SOURCE)
	$(PANDOC) $(HTML_FLAGS) -o $@ $<

$(V0_PDF): $(V0_SOURCE)
	$(PANDOC) $(PDF_FLAGS) --metadata title="The Aria Thesis — White Paper v0" -o $@ $<

$(V0_HTML): $(V0_SOURCE)
	$(PANDOC) --standalone --toc --highlight-style=tango \
		--metadata title="The Aria Thesis — White Paper v0" -o $@ $<

$(V1_PDF): $(V1_SOURCE)
	$(PANDOC) $(PDF_FLAGS) --metadata title="The Aria Thesis — White Paper v1" -o $@ $<

$(V1_HTML): $(V1_SOURCE)
	$(PANDOC) --standalone --toc --highlight-style=tango \
		--metadata title="The Aria Thesis — White Paper v1" -o $@ $<

clean:
	rm -f $(PDF) $(HTML) $(V0_PDF) $(V0_HTML) $(V1_PDF) $(V1_HTML)
