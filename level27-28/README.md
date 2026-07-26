For this level, you don't need to log in.

Create a new directory on your desktop.

Then run:

`git clone ssh://bandit27-git@bandit.labs.overthewire.org:2220/home/bandit27-git/repo ~/Desktop/New`

When prompted, enter the password from level 27.

Once the repository has been cloned, read the `README` file:

`cat ~/Desktop/New/README`

That prints the password for the next level.

**What we learned in this level:**

* Use `git clone` to copy a remote Git repository.
* Git repositories can be accessed over SSH.
* Use `cat` to read the contents of a file.

