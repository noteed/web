# Browsersync image

This image renders Markdown files with Pandoc and uses browsersync to serve
them. The resulting web pages are automatically refreshed whenever the
Markdown, CSS, JS, or template files are changed.

*Note*: Not yet ready for public consumption because the template is a work in
progress.

Probably something like Hakyll should be added to the image (e.g. to generate
an index).


## Building

Run `./build.sh`.


## Running

It is possible to override the internal `css`, `js`, and `templates`
directories by mounting what you want at `/source`. The sample `run.sh` script
does that, by mounting this very repository.

Simply run `./run.sh` and visit [localhost:3000](http://localhost:3000).

If you don't override the `/source` directory. You will need to mount
`/markdown` and touch the files there to generate new files. The sample
`run-blog.sh` script does that.

THe browsersync dashboard is visible at
[localhost:3001](http://localhost:3001).
