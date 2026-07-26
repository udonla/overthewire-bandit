Create a directory. I named mine `Newestestest`.

Clone the repository:

`git clone ssh://bandit30-git@bandit.labs.overthewire.org:2220/home/bandit30-git/repo ~/Desktop/Newestestest`

Enter the password from level 30 when prompted.

Go into the repository:

`cd ~/Desktop/Newestestest`

List the files:

`ls`

Read the `README.md` file:

`cat README.md`

There's nothing useful there. You can also check the commit history, but it won't help for this level.

Instead, check for Git tags:

`git tag`

You'll see a tag named `secret`.

Show what's stored in the tag:

`git show secret`

This reveals the password for the next level.

**What we learned in this level:**

* Use `git tag` to list tags in a repository.
* Tags can point to important commits or objects.
* Use `git show` to inspect the contents of a tag.

