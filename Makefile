# -*- coding: utf-8-unix -*-

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
	2> /dev/null

.PHONY: clean
