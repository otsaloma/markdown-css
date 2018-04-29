Markdown CSS
============

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
       --highlight-style=haddock \
       --self-contained
```

**Preview:**
[github](https://otsaloma.io/pub/markdown-css-github.html)
[tufte](https://otsaloma.io/pub/markdown-css-tufte.html)

Included stylesheets originate from other projects, and have merely been
adapted to work with Markdown and Pandoc, and also styles of some
elements have been tweaked to suit the authors' use cases and personal
taste. Original files have been kept in the repository to be able to
review the changes and to merge changes in from upstream. Anyone looking
for a base for their own work is likely to be better off turning to the
original sources.

* `github.css` is from [github-markdown-css][1] by Sindre Sorhus,
  available under the MIT license.

* `tufte.css` and the font `et-book` are from [tufte-css][2] by Dave
  Liepmann and contributors, available under the MIT license.

[1]: https://github.com/sindresorhus/github-markdown-css
[2]: https://github.com/edwardtufte/tufte-css

Stylesheets are available under the MIT license, see the file
[`COPYING`](COPYING) for details.
