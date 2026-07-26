Create a new directory. I named mine `Newest`.

Clone the repository:

`git clone ssh://bandit28-git@bandit.labs.overthewire.org:2220/home/bandit28-git/repo ~/Desktop/Newest`

Enter the password from level 28 when prompted.

Go into the repository:

`cd ~/Desktop/Newest`

Read the `README.md` file:

`cat README.md`

You'll see that the password has been replaced with `xxxxxxxxxx`.

Let's check the commit history:

`git log`

You'll notice a recent commit with the message `fix info leak`.

Show that commit:

`git show 83d77407b76c9f86ac4e691a47618641c9d527ba`

The diff shows that the real password was replaced with `xxxxxxxxxx`. The old password is visible in the previous version of the file.

**What we learned in this level:**

* Use `git log` to view a repository's commit history.
* Use `git show` to inspect the changes made in a specific commit.
* Git keeps previous versions of files, even after they're changed.
* Sensitive information can still be recovered from a repository's history.

