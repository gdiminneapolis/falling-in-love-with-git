# Course slides for 'Falling in Love with Git' GDI Minneapolis Course
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors)

* Slides are at [https://gdiminneapolis.github.io/falling-in-love-with-git](https://gdiminneapolis.github.io/falling-in-love-with-git)
* Git Documentation: [https://git-scm.com/docs](https://git-scm.com/docs)
* GitHub Help: [https://help.github.com/](https://help.github.com/)

## Resources

* [Additional Resources](resources.md)

## Contributing

We are always looking for help in improving our training materials. We'd like your participation as well!

First, read the [Contributor Covenant](CONTRIBUTOR_COVENANT.md).

Next, you can contribute in the following ways:

* Submit an problem, suggestion, or question via [Issues](https://github.com/gdiminneapolis/falling-in-love-with-git/issues)
* Write or update a page explaining something on the project [Wiki](https://github.com/gdiminneapolis/falling-in-love-with-git/wiki)
* Fork and clone the repo, cut a branch, make your changes, and submit a [Pull Request](https://github.com/gdiminneapolis/falling-in-love-with-git/pulls)

### Prerequisites

* Install [Jekyll](https://jekyllrb.com) (which requires [Ruby](http://ruby-lang.org))

### Download

    $ git clone git@github.com:gdiminneapolis/falling-in-love-with-git.git
    $ cd falling-in-love-with-git

### Initialize

    $ bundle install
    $ yarn install


### Viewing slides while editing

    $ yarn start

This will run Jekyll in server mode, hosting output on `http://localhost:4000` -- the URL will also be displayed in Jekyll's output.

Launch your browser at that URL and you can refresh the view every time you make a change.

### Publishing to Github Pages

    $ yarn checkin

This will create the `docs/` directory which is where the slides will
be served from, commit and push all the current changes to the public repository.

The file `_publish.yml` in the root directory can be set to provide overrides and fill-ins needed for publishing on GH pages. Generally speaking, nothing needs to be done with these settings.

## Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
| [<img src="https://avatars0.githubusercontent.com/u/12141607?v=4" width="100px;"/><br /><sub><b>agebhardt</b></sub>](https://github.com/agebhardt)<br />[💬](#question-agebhardt "Answering Questions") [💻](https://github.com/gdiminneapolis/falling-in-love-with-git/commits?author=agebhardt "Code") [🎨](#design-agebhardt "Design") [📋](#eventOrganizing-agebhardt "Event Organizing") [💡](#example-agebhardt "Examples") [🤔](#ideas-agebhardt "Ideas, Planning, & Feedback") [📢](#talk-agebhardt "Talks") |
| :---: |
<!-- ALL-CONTRIBUTORS-LIST:END -->

### Updating Contributors List

This repo uses the [all-contributors] specification. There is a tool to make it easy to add people to the list.
