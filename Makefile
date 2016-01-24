# -*- coding: us-ascii-unix -*-

CSS_FILES = $(wildcard *.css)

clean:
	rm -f *.html

html: $(CSS_FILES:.css=.html)

%.html: %.css
	pandoc README.md \
	--output=$@ \
	--to=html5 \
	--css=$< \
	--highlight-style=haddock \
	--self-contained \
	--smart

.PHONY: clean
