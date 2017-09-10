# Course slides for 'Falling in Love with Git' GDI Minneapolis Course
[![GDI Minneapolis](https://img.shields.io/badge/GDI-Minneapolis-ff69b4.svg)](https://gdiminneapolis.com)
[![Code of Conduct](https://img.shields.io/badge/code_of-conduct-ff69b4.svg)](https://www.girldevelopit.com/code-of-conduct)
[![Help Wanted](https://img.shields.io/badge/help-wanted-green.svg)](#contibuting)
[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors)

-   Slides are at
    <https://gdiminneapolis.github.io/falling-in-love-with-git>
-   Git Documentation: <https://git-scm.com/docs>
-   GitHub Help: <https://help.github.com/>

## Resources

-   [Additional Resources](Resources.md)


## Contributing

We are always looking for help in improving our training materials. We'd
like your participation as well!

First, read the [Contributor Covenant](CONTRIBUTOR_COVENANT.md) and
[Girl Develop It Code of Conduct](https://www.girldevelopit.com/code-of-conduct).

Next, you can contribute in the following ways:

-   Submit an problem, suggestion, or question via [Issues](https://github.com/gdiminneapolis/falling-in-love-with-git/issues)
-   Write or update a page explaining something on the project [Wiki](https://github.com/gdiminneapolis/falling-in-love-with-git/wiki)
-   Fork and clone the repo, cut a branch, make your changes, and submit
    a [Pull Request](https://github.com/gdiminneapolis/falling-in-love-with-git/pulls)


## Development

### Prerequisites

- [Emacs](https://www.gnu.org/software/emacs/)
- [Org-mode](http://orgmode.org/), with
- [org-reveal](https://github.com/yjwen/org-reveal/), and associated
  requirements

### Working on the repo

Fork the repo on Github, then clone to your system.

```bash
git clone git@github.com:YOURUSER/falling-in-love-with-git.git
cd falling-in-love-with-git
```

### Editing Org-Reveal files

Edit the `.org` files in emacs org-mode. (They're really plain old
text files, but org-mode treats them special.)

Each heading represents a new slide. Sub-headings create new slides
under the main headline.

See
<https://raw.githubusercontent.com/yjwen/org-reveal/master/Readme.org>
to see all the different formatting options.

Caveats:

- keep things simple
- don't try to force formatting
- org-mode is ultimately an outlining mode, use it to organize your
  thoughts and the presentation

### Including Images

There are two ways to include images:

#### HTML EXPORT

You can create an HTML export section by typing `<h` then pressing the
TAB key. If you put your editor cursor between the lines, then type
`C-c '`you are put into HTML mode in a new buffer where you can enter
an `img` tag:


```
   #+BEGIN_EXPORT html
   <img src="images/command_line/command-line-anatomy.png"
        class="img-responsive"
        alt="command line anatomy" />
   #+END_EXPORT
```

##### Reveal HTML

Another way to do the above is use the `#+REVEAL_HTML:` option.

```
#+REVEAL_HTML: <img src="images/command_line/command-line-anatomy.png"/>
```

### Fragments

Reveal has a fragment feature that performs a slow reveal of
information on the slide. Use the `ATTR_REVEAL` option to tell
org-reveal when to do this:

```
   #+ATTR_REVEAL: :frag fade-in
   - the /command/ is the first part on the line, after the /prompt/
   - /options/ appear after the command
     - single dash, single character options
     - double dash, multi-character options
   - /operands/ appear last, the things the command will act upon
```


### Creating the HTML Slides from the `.org` files

Open the `.org` file in emacs, and run the command:

`(org-reveal-export-to-html)`

This can also be run using the keys:

`C-c C-e R R`

This creates an HTML file with the same name as the ORG file.

## Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
| [<img src="https://avatars0.githubusercontent.com/u/12141607?v=4" width="100px;"/><br /><sub>agebhardt</sub>](https://github.com/agebhardt)<br />[📖](https://github.com/gdiminneapolis/falling-in-love-with-git/commits?author=agebhardt "Documentation") [💻](https://github.com/gdiminneapolis/falling-in-love-with-git/commits?author=agebhardt "Code") [✅](#tutorial-agebhardt "Tutorials") [📢](#talk-agebhardt "Talks") | [<img src="https://avatars3.githubusercontent.com/u/363583?v=4" width="100px;"/><br /><sub>Tamara Temple</sub>](http://swaac.tamouse.org)<br />[📖](https://github.com/gdiminneapolis/falling-in-love-with-git/commits?author=tamouse "Documentation") [💻](https://github.com/gdiminneapolis/falling-in-love-with-git/commits?author=tamouse "Code") [✅](#tutorial-tamouse "Tutorials") [📢](#talk-tamouse "Talks") |
| :---: | :---: |
<!-- ALL-CONTRIBUTORS-LIST:END -->
