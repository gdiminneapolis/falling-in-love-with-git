# More Love With Git

Additional Material for "More Love With Git" -- beyond Falling in Love

## Speedups

### Git Aliases

Instead of typing out the full <i class="gold">git</i> commmands all the time, you can abbreviate them in the global configuration.

Recall the `git config --global` command that sets
the global configuration for your computer.

Let's make the status command shorter:

``` bash
$ git config --global alias.s status
```

Let's try it out:

``` bash
$ cd my_first_repo/
$ git s
On branch master
Your branch is up-to-date with 'origin/master'.
nothing to commit, working tree clean
```

Cool, huh?

You can also specify some options for the command

```
$ git config --global alias.unstage 'reset HEAD --'
```

Note the aliased part is enclosed in *single quotes* to make a single
argument.

Now `git unstage hello_world.txt` works the same as `git reset HEAD --
hello_world.txt`.

This is especially useful for setting default parameters:

``` bash
$ git config --global alias.A 'add --verbose'
$ echo 'yet another line' >> hello_world.txt
$ git s
On branch master
Your branch is up-to-date with 'origin/master'.
Changes not staged for commit:
    (use "git add <file>..." to update what will be committed)
    (use "git checkout -- <file>..." to discard changes in working directory)

    modified:   hello_world.txt

no changes added to commit (use "git add" and/or "git commit -a")
$ git A hello_world.txt
add 'hello_world.txt'
```

Now you'll get visual (verbose) confirmation of what git is adding
every time you run the command. That's pretty sweet.

They can be rather complex:

``` bash
git config --global alias.lo 'log --graph \
  --pretty=format":%C(yellow)%h%Cblue%d%Creset %s %C(white) %an,%ar%Creset" \
  --abbrev-commit --decorate'
```

``` bash
$ git lo
* c35f894 (HEAD -> master, origin/master) Add .gitignore  Susan Student,11 days ago
*   5547b70 Fixing hello_world.txt  Susan Student,11 days ago
|\
| * 323461d Modified hello_world.txt  Susan Student,11 days ago
* | 98b3b40 Modify hello_world.txt * Changing the first line of hello_world.txt in version 2  Susan Student,11 days ago
|/
* 6a69379 Adding changes to version 2.  Susan Student,11 days ago
```


More helpful git aliases

``` bash
git config --global alias.last 'log -1 HEAD'
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
```

### Bash Aliases

Bash or command-line aliases can be used as an alternative to Git
aliases.

#### Setting up your environment to use Bash aliases

Enter the following command:

``` bash
$ touch ~/.bash_profile
```

Open the `.bash_profile` file in your editor of choice.
Add the following aliases to your `.bash_profile` file in your editor:

``` bash
alias gs='git status'
alias gaa='git add --all --verbose'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gci='git commit'
alias gcm='git commit -m'

# the one command to do them all!
# Usage: gacp 'commit message to use'
gacp () {
  git add -Av && git commit -m "$1" && git push -u origin HEAD
}
```

#### Using aliases

Once you've created a set of Bash aliases, you need to reload them
into your shell environment. Normally, whenever you start up your
terminal or command prompt, they should be read in.

You can check to see now what aliases have already been defined (if
any) by entering:


``` bash
$ alias
```

For the very first time, it will probably not print anything, because
you haven't sourced the `.bash_profile` file yet. Let's do that now.


``` bash
$ . .bash_profile
$ alias
alias gaa='git add --all --verbose'
alias gci='git commit'
alias gcim='git comment -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gs='git status'
```

Let's try them out.

``` bash
$ echo >> hello_world.txt
$ echo 'another line for testing gacp function' >> hello_world.txt
$ gacp 'i added another line to hello_world'
add 'hello_world.txt'
[master fca7b80] i added another line to hello_world
 1 file changed, 2 insertions(+)
Counting objects: 3, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 365 bytes | 0 bytes/s, done.
Total 3 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local objects.
To git@github.com:tamouse/my_first_repo.git
   bcb5f73..fca7b80  HEAD -> master
Branch master set up to track remote branch master from origin.
```

The "Git Dance" now shortens to:

``` bash
$ gs # to check your status
$ gacp 'commit message' # adds everything, commits, and then pushes to the remote origin
```

For the bold and daring:

``` bash
alias gyolo='git add -A && git commit -m YOLO!! && git push -fu origin HEAD'
```

**NOTE:** I do *NOT* recommend this alias! It leaves absolutely no
information about the commit in the repository. Use it as an example
of something you could do if you wanted.

### Git and Bash Aliases Together

You can use Git aliases and Bash aliases together.
The purpose of both is a reduce the amount of repetitive typing you have to do.

Add the following Git aliases:

``` bash
$ git config --global alias.AA 'add --all --verbose'
$ git config --global alias.yolo 'commit --message YOLO!!'
$ git config --global alias.pufuoh 'push -fu origin HEAD'
```

Then change the Bash alias in `$HOME/.bash_profile`:

``` bash
alias gyolo='git AA && git yolo && git pufuoh'
```

### Hub

Hub is a tool that adds greatly to command line productivity,
*provided* you are working with GitHub as the back end.

Hub can be found at [https://hub.github.com/](https://hub.github.com/)
where it discusses how to install and use hub. They recommend aliasing
the `git` command itself to `hub`.

Hub provides extra functionality for creating new *remote*
repositories  on GitHub, opening up a browser at the current branch or
commit of the working repo, and (for my money, the coolest feature)
creating a pull request on GitHub for the current branch to the
default branch (usually `master`).

#### Initializing a new project

Assume you've aliased `git` to execute `hub` (i.e. `alias git=hub` in `$HOME/.bash_profile`):

``` bash
$ git init new_project
Initialized empty Git repository in /Users/student/new_project/.git/
$ cd new_project/
$ echo 'new project' > README.md
$ git create -d "$(cat README.md)"
Updating origin
created repository: tamouse/new_project
$ gacp 'initial commit'
add 'README.md'
[master (root-commit) 88547eb] initial commit
 1 file changed, 1 insertion(+)
 create mode 100644 README.md
Counting objects: 3, done.
Writing objects: 100% (3/3), 225 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To git@github.com:tamouse/new_project.git
 * [new branch]      HEAD -> master
Branch master set up to track remote branch master from origin.
```

Just to repeat, the commands to initiate a new project are:

``` bash
$ git init <NEW_PROJECT_DIR>
$ cd <NEW_PROJECT_DIR>
$ echo '<DESCRIPTION>' >> README.md
$ git create -d "$(cat README.md)"
$ gacp '<FIRST COMMMIT MSG>'
```

If you wanted to, you can put that into your `.bash_profile` as a Bash
function, too:

``` bash
new_proj() {
    git init "$1" && \
	cd "$1" && \
	echo "$2" > README.md && \
	git create -d "$(cat README.md)" && \
	git add -Av && \
	git commit -m "$3" && \
	git push -u origin HEAD
}
```

Refresh your aliases with `. ~/.bash_profile`, then start a new
project:

``` bash
cd
new_proj another_new_project 'Another new project for me!' 'initial commit'
```


## GUI Tools

Alternative to using the Command line.

There are several described on the Git site:
[GUI Clients](https://git-scm.com/downloads/guis "GUI Clients for
using Git").

* [GitHub Desktop](https://desktop.github.com/ "Find out about
  Github's Desktop client") -- GitHub's own desktop client

* [SourceTree](https://www.sourcetreeapp.com/ "A universal agnostic
  git desktop client from Atlassian") -- A universal agnostic git
  desktop client from Atlassian

Your editor may also have GUI integration with Git and remote repository
sites.

For example, [WebStorm](https://www.jetbrains.com/webstorm/ "The
smartest JavaScript IDE") and other JetBrains IDEs have impeccable git
and remote git integration.

Another impeccable example is *Emacs'* *magit* package.  Magit has the
best interface for interactively squashing commits, but I don't expect
anyone to learn Emacs just to get this.


## Other Git sites

### Gitlab

[Gitlab](http://gitlab.com) is an alternative to GitHub that provides
a very complete solution for teams from conception, through
development and testing, through delivery, and in maintenance.

### BitBucket

[BitBucket](http://bitbucket.com) is an alternative from the
[Atlassian](http://www.atlassian.com/) company that provides a full
suite of tools for managing, working, and deploying projects.

BitBucket integrates with all the other Atlassian tools easily, which
some see as an advantage if using other Atlassian tools, such as Jira
for managing work tasks.

### Private (your own)

You can even roll your own remote repositories, although you won't get
the features offered by the other sites such as visual pull requests,
notifications, and so on.

However, it's easy, it's pretty cheap, and you are in total control.

Also, the remote doesn't have to be physically remote; it can reside
in another directory, or even another hard drive attached to your
machine. You could even keep them on a thumb drive, but those aren't
very reliable or secure.

## More Love

* working in teams
* forking, branching, and creating a pull request
* reviewing changes
* arbitrating and accepting pull requests
* creating issues
* reviewing issues
* creating project wikis (project lore)

## Practice

* do the git dance repeatedly
* writing good commit messages
* working in teams
