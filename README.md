# Course slides for 'Falling in Love with Git' GDI Minneapolis Course


## Contributing

Read the [Contributor Covenant](CONTRIBUTOR_COVENANT.md).

## Prerequisites

* Install [Jekyll](https://jekyllrb.com) (which requires [Ruby](http://ruby-lang.org))

## Downloading Slides

    $ git clone git@github.com:gdiminneapolis/falling-in-love-with-git.git
    $ cd falling-in-love-with-git

## Viewing slides while editing

    $ make

This will run Jekyll in server mode, hosting output on `http://localhost:4000` -- the URL will also be displayed in Jekyll's output.

Launch your browser at that URL and you can refresh the view every time you make a change.

## Publishing to Github Pages

    $ make publish

This will create the `publish/` directory and initialize it as a `git` repo pointing at the `gh-pages` branch of the repository, and run Jekyll in build mode.

The file `_publish.yml` in the root directory can be set to provide overrides and fill-ins needed for publishing on GH pages. Generally speaking, nothing needs to be done with these settings.
