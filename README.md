# Markdown CSS

This is a collection of stylesheets to use when converting Markdown text
to HTML format. Stylesheets have been tested to work with Pandoc, but
might also work with other converters that output fairly plain HTML.

To use one of the stylesheets, just unpack somewhere convenient, e.g.
`~/.local/share/markdown-css` and then do something like

```bash
pandoc foo.md \
       --output=foo.html \
       --to=html5 \
       --css=$HOME/.local/share/markdown-css/tufte.css \
       --syntax-highlighting=haddock \
       --embed-resources \
       --standalone
```

**Preview:**
[github](https://otsaloma.io/pub/markdown-css-github.html)
[tufte](https://otsaloma.io/pub/markdown-css-tufte.html)

## Markdown Viewer

You can turn the above command into a Markdown viewer by writing output
to a temporary file and then launching some browser to open that file.
Compared to Markdown *editors*, this can be a bit simpler and compared
to browser extensions, this is guaranteed to be local only.

```bash
#!/bin/sh
OUTPUT=/tmp/md-$$.html
pandoc "$1" \
       --output=$OUTPUT \
       --from=gfm \
       --to=html5 \
       --css=$HOME/.local/share/markdown-css/github.css \
       --syntax-highlighting=haddock \
       --resource-path="$(dirname "$1")" \
       --embed-resources \
       --standalone

exec epiphany-browser --new-window $OUTPUT
```

## License

Included stylesheets originate from other projects, and have merely been
adapted to work with Markdown and Pandoc, and also styles of some
elements have been tweaked to suit the authors' use cases and personal
taste. Original files have been kept in the repository to be able to
review the changes and to merge changes in from upstream. Anyone looking
for a base for their own work is likely to be better off turning to the
original sources.

- `github.css` is from [github-markdown-css][1] by Sindre Sorhus,
  available under the MIT license.

- `tufte.css` and the font `et-book` are from [tufte-css][2] by Dave
  Liepmann and contributors, available under the MIT license.

[1]: https://github.com/sindresorhus/github-markdown-css
[2]: https://github.com/edwardtufte/tufte-css

Stylesheets are available under the MIT license, see the file
[`COPYING`](COPYING) for details.
