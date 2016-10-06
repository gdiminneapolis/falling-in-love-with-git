# Course slides for 'Falling in Love with Git' GDI Minneapolis Course

* Slides are at [https://gdiminneapolis.github.io/falling-in-love-with-git](https://gdiminneapolis.github.io/falling-in-love-with-git)
* Git Documentation: [https://git-scm.com/docs](https://git-scm.com/docs)
* GitHub Help: [https://help.github.com/](https://help.github.com/)

## Class of October 8th, 2016

* Meetup entry: [http://www.meetup.com/Girl-Develop-It-Minneapolis/events/233968145/](http://www.meetup.com/Girl-Develop-It-Minneapolis/events/233968145/)
* Venue: [WBS & Associates](http://www.wsbeng.com/) [map](https://www.google.com/maps/place/701+Xenia+Ave+S+%23200,+Minneapolis,+MN+55416/@44.9734811,-93.3532764,17z/data=!3m1!4b1!4m5!3m4!1s0x52b33499f031ef49:0x3b2d996da6fba050!8m2!3d44.9734811!4d-93.3510824?hl=en)
* Date: October 8th, 2016
* Time: 10:00 AM to 4:30 PM
* Instructor: [Tamara Temple](http://www.tamouse.org)
* Coordinator: [Karly Anderson]()

## Contributing

We are always looking for help in improving our training materials. We'd like your participation as well!

First, read the [Contributor Covenant](CONTRIBUTOR_COVENANT.md).

Next, you can contribute in the following ways:

* Submit an issue or question via [Issues](../issues)
* Write or update a page explaining something on the project [Wiki](../wiki)



### Prerequisites

* Install [Jekyll](https://jekyllrb.com) (which requires [Ruby](http://ruby-lang.org))

### Downloading Slides

    $ git clone git@github.com:gdiminneapolis/falling-in-love-with-git.git
    $ cd falling-in-love-with-git

### Viewing slides while editing

    $ make

This will run Jekyll in server mode, hosting output on `http://localhost:4000` -- the URL will also be displayed in Jekyll's output.

Launch your browser at that URL and you can refresh the view every time you make a change.

### Publishing to Github Pages

    $ make publish

This will create the `publish/` directory and initialize it as a `git` repo pointing at the `gh-pages` branch of the repository, and run Jekyll in build mode. (Apologies, this isn't quite foolproof yet.)

The file `_publish.yml` in the root directory can be set to provide overrides and fill-ins needed for publishing on GH pages. Generally speaking, nothing needs to be done with these settings.

## Contributors

* [Amy Gelbart](https://twitter.com/amlyhamm) (Original author/creator)
* [Tamara Tmeple](https://github.com/tamouse)
* Add your name here! (See above.)
