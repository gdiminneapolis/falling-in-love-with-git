# Resources for working with Git

## Websites

* [official documentation](https://git-scm.com/doc)
* [Github help](https://help.github.com/articles/set-up-git/)
* [Learn Enough Git to be Dangerous](https://www.learnenough.com/git-tutorial)

### More on just command line

* [Learn Enough Command Line to Be Dangerous](https://www.learnenough.com/command-line-tutorial)
* [Explain Shell](https://explainshell.com)

## Cheat Sheets

* [from Github](github-git-cheat-sheet.pdf)
* [from Gitlab](gitlab-git-cheat-sheet.pdf)
* [from Atlassian](atlassian_get_cheatsheet.pdf)
* [Git Cheat Sheet by SamCollett](https://www.cheatography.com/samcollett/cheat-sheets/git/)
* [Workspace Git Cheatsheet](http://www.ndpsoftware.com/git-cheatsheet.html#loc=workspace;)

### Command line

* [Command Line Cheat Sheet from Git Tower](https://www.git-tower.com/blog/command-line-cheat-sheet/)
* [Linux Command Line Cheat Sheet by DaveChild](https://www.cheatography.com/davechild/cheat-sheets/linux-command-line/)

## GUI Tools

*For when the command line becomes all too much.*

* [Official List of GUI tools](https://git-scm.com/downloads/guis)
* [SourceTree](https://www.sourcetreeapp.com/)
* [Github Desktop](https://desktop.github.com/)
* [Tower](https://www.git-tower.com/mac/)
* [Unofficial list of GUI tools](https://git.wiki.kernel.org/index.php/InterfacesFrontendsAndTools)

## Editor Integrations

### Atom

* [Git Integration - Atom Blog](http://blog.atom.io/2014/03/13/git-integration.html)

### Sublime Text 2 / 3

* [SublimeGit](https://sublimegit.readthedocs.io/en/latest/)

### Emacs

* [Magit](https://magit.vc/)

### VIM

* [fugitive.vim](http://www.vim.org/scripts/script.php?script_id=2975)
* [vcscommand.vim](http://www.vim.org/scripts/script.php?script%5Fid=90)

### JetBrains IDEs

Nothing additional needed, all the fabulous JetBrains IDEs (WebStorm,
PyCharm, RubyMine, PhpStorm, etc) come with exceptional support for
git.

## Online Courses

* [Learn Git Branching](http://learngitbranching.js.org/)

  A really nifty online learning experience that walks you through how
  to do branching and merging in git.

* [Git commands and shortcuts  ShortcutFoo](https://www.shortcutfoo.com/app/dojos/git)
* [Udemy.com: Learning Git](https://www.udemy.com/learning-git2/)
* [Lynda.com: Git Essential Training](https://www.lynda.com/Git-tutorials/Git-Essential-Training/100222-2.html)

## Other Resources

* [Atlassian Git Tutorials](https://www.atlassian.com/git) (Atlassian are makers of BitBucket, another Git remote hosting service like GitHub and GitLab)

* [Git Tips &amp; Tricks - GitLab](https://about.gitlab.com/2016/12/08/git-tips-and-tricks/)

* [The Git Dance](https://github.com/gdiminneapolis/falling-in-love-with-git/wiki/The-%22Git-Dance%22)

* [Git Flow: A successful Git branching model](http://nvie.com/posts/a-successful-git-branching-model/)

* [Git Workflows and Tutorials](https://www.atlassian.com/git/tutorials/comparing-workflows)

* [GitHub 30 Day Challenge Guide](https://docs.google.com/document/d/1liKkSCPcOXvc4QTSbvxqpOJjjfRhPlkMzOwwxMVfHpU/edit#heading=h.87j2thi29oi8)

  Written by Prime Digital Academy's Scott Bromander, this is a
  document to help you develop a practice of learning by using Git and
  Github to track your learning.

* [gdi-starting-up: A quick set of steps to use when beginning a new project from scratch](https://github.com/tamouse/gdi-starting-up)

  A general set of guidelines to use when starting off a new project.

* [hub: the command-line wrapper for git](https://hub.github.com/)

  Using hub, starting up a new project becomes pretty simple:

``` bash
git init new_project
cd new_project
hub create
echo '# My New Awesome Project' > README.md
git add -A
git commit -m initial
git push -u origin HEAD
```
