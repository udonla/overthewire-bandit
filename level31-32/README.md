## Bandit Level 31 → 32 Walkthrough

Create a directory. I named mine `Newestestestest`.

Clone the repository:

`git clone ssh://bandit31-git@bandit.labs.overthewire.org:2220/home/bandit31-git/repo ~/Desktop/Newestestestest`

Enter the password from level 31 when prompted.

Go into the repository:

`cd ~/Desktop/Newestestestest`

List the files:

`ls`

Read the `README.md` file:

`cat README.md`

The `README.md` explains the task: push a file named `key.txt` containing the exact text `May I come in?` to the `master` branch.

Try creating and adding the file the normal way:

`echo -n 'May I come in?' > key.txt`

`git add key.txt`

You'll notice Git refuses, warning that `key.txt` is being ignored by a `.gitignore` rule. Check it:

`cat .gitignore`

You'll see that `key.txt` is intentionally listed there. This is part of the level's puzzle, forcing you to override the ignore rule.

Force Git to add the ignored file:

`git add -f key.txt`

Commit the change:

`git commit -m "add key.txt"`

Push it to the remote:

`git push origin master`

Enter the level's Git password again if prompted. The push should succeed, and the server will reveal the password for the next level in the push output.

**What we learned in this level:**

* `.gitignore` can prevent files from being staged.
* Use `git add -f` to force Git to add an ignored file.
* Read the `README.md` carefully because it usually explains the task.
* Sometimes the challenge is understanding why a Git command fails, not just running it again.

