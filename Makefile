# -*- coding: utf-8-unix -*-

CSS_FILES = $(wildcard *.css)
.DEFAULT_GOAL = html

clean:
	rm -f *.html

html: $(CSS_FILES:.css=.html)

%.html: %.css
	pandoc README.md \
	--output=$@ \
	--to=html5 \
	--css=$< \
	--syntax-highlighting=haddock \
	--embed-resources \
	--standalone

.PHONY: clean html
