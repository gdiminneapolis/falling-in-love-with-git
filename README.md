# Course slides for 'Falling in Love with Git' GDI Minneapolis Course
[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors)

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
* Install [node], latest v8 LTS stable is fine
* Install [yarn], latest stable

[node]: https://nodejs.org/en/
[yarn]: https://yarnpkg.com/lang/en/docs/install/

* Understand how [reveal] presentations work

[reveal]: https://github.com/hakimel/reveal.js "An HTML presentation framework"

### Download

    $ git clone git@github.com:gdiminneapolis/falling-in-love-with-git.git
    $ cd falling-in-love-with-git

### Initialize

    $ bundle install
    $ yarn install


### Editing

The main place you'll want to make changes will be to the `source/_slides/` files. Each file contains a portion of the presentation. Following the conventions for `reveal` slide decks, each file is a `<section>`, which go from left to right. If you embed sub `<section>`s inside, those slides will go down.

You can use either HTML or MarkDown, which ever suits your needs the best.

### Styles

[@agebhardt](https://github.com/agebhardt) created several custom styles created for this presentation. Pay attention to how they are used, study the file `source/css/styles.css` to learn their secrets and awesomesauce.

Additionally, since this is a [reveal]-based presentation, you should study those styles as well.


### Viewing slides while editing

    $ yarn start

Will launch your default browser in a live-update mode looking at the generated jekyll directory, and watch the jekyll source directory for changes. *Note* the first time you run this, there might not be a `_site` folder, so you may need to refresh the browser after the first build completes.

### Publishing to Github Pages

    $ yarn checkin

This will create the `docs/` directory which is where the slides will
be served from, commit and push all the current changes to the public repository.

The file `_publish.yml` in the root directory can be set to provide overrides and fill-ins needed for publishing on GH pages. Generally speaking, nothing needs to be done with these settings.

## Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
| [<img src="https://avatars0.githubusercontent.com/u/12141607?v=4" width="100px;"/><br /><sub><b>agebhardt</b></sub>](https://github.com/agebhardt)<br />[💬](#question-agebhardt "Answering Questions") [💻](https://github.com/gdiminneapolis/falling-in-love-with-git/commits?author=agebhardt "Code") [🎨](#design-agebhardt "Design") [📋](#eventOrganizing-agebhardt "Event Organizing") [💡](#example-agebhardt "Examples") [🤔](#ideas-agebhardt "Ideas, Planning, & Feedback") [📢](#talk-agebhardt "Talks") | [<img src="https://avatars3.githubusercontent.com/u/363583?v=4" width="100px;"/><br /><sub><b>Tamara Temple</b></sub>](https://tamouse.github.io/swaac)<br />[💬](#question-tamouse "Answering Questions") [📝](#blog-tamouse "Blogposts") [🐛](https://github.com/gdiminneapolis/falling-in-love-with-git/issues?q=author%3Atamouse "Bug reports") [💻](https://github.com/gdiminneapolis/falling-in-love-with-git/commits?author=tamouse "Code") [🎨](#design-tamouse "Design") [📖](https://github.com/gdiminneapolis/falling-in-love-with-git/commits?author=tamouse "Documentation") [📋](#eventOrganizing-tamouse "Event Organizing") [💡](#example-tamouse "Examples") [🤔](#ideas-tamouse "Ideas, Planning, & Feedback") [🚇](#infra-tamouse "Infrastructure (Hosting, Build-Tools, etc)") [📦](#platform-tamouse "Packaging/porting to new platform") [🔌](#plugin-tamouse "Plugin/utility libraries") [👀](#review-tamouse "Reviewed Pull Requests") [📢](#talk-tamouse "Talks") [⚠️](https://github.com/gdiminneapolis/falling-in-love-with-git/commits?author=tamouse "Tests") [🔧](#tool-tamouse "Tools") |
| :---: | :---: |
<!-- ALL-CONTRIBUTORS-LIST:END -->

### Updating Contributors List

This repo uses the [all-contributors] specification. There is a tool to make it easy to add people to the list.

#### adding a new contributor:

This will require the contributor's GitHub account name, e.g. `tamouse`.

    $ yarn contributors:add

### generating a new version after manually editing `.all_contributors` file:

    $ yarn contributors:generate

Make sure to read the [all-contributors] specification before you update it manually.


[all-contributors]: https://github.com/kentcdodds/all-contributors "all-contributors specification by Kent C. Dodds"
