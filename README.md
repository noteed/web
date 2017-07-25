# Browsersync image

This image render Markdown files with Pandoc and use brosersync to serve them.
The resulting web pages are automatically refreshed whenever the Markdown, CSS,
JS, or template files are changed.

Not yet ready for public consumption because the template is a work in
progress.

Probably that something like Hakyll should be added to the image.


## Building

Run `./build.sh`.


## Running

It is possible to override the internal `css`, `js`, and `templates`
directories by mounting what you want at `/source`. The sample `run.sh` script
does that, by mounting this very repository.

Simply run `./run.sh` and visit [localhost:3000](http://localhost:3000).

If you don't override the `/source` directory. You will need to mount
`/markdown` and touch the files there to generate new files.
