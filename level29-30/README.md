First, create a new directory. I named mine `Newestest`.

Clone the repository:

`git clone ssh://bandit29-git@bandit.labs.overthewire.org:2220/home/bandit29-git/repo ~/Desktop/Newestest`

Enter the password from level 29 when prompted.

Go into the repository:

`cd ~/Desktop/Newestest`

Read the `README.md` file:

`cat README.md`

The password isn't there, so let's look around.

List all local and remote branches:

`git branch -a`

You'll see something like:

* `master`
* `remotes/origin/dev`
* `remotes/origin/sploits-dev`

You can't `cd` into a Git branch because a branch isn't a directory. Instead, check out the branch you want to inspect.

For example:

`git checkout dev`

or

`git checkout sploits-dev`

Now read the `README.md` file again:

`cat README.md`

If you still don't find the password, search through the entire Git history:

`git log --all -p | grep -i password`

This searches every commit on every branch for lines containing the word `password`.

**What we learned in this level:**

* Use `git branch -a` to list local and remote branches.
* Git branches are not directories, so you use `git checkout` to switch between them.
* Use `git log --all -p` to search the history of every branch.
* Use `grep` to find specific text in command output.

