List the files:

`ls`

You'll see `bandit26.sshkey`.

Display its contents:

`cat bandit26.sshkey`

Copy the key, create a new file on your desktop, and paste it there. Then exit the SSH session with:

`exit`

Set the correct permissions on the key file:

`chmod 600 ~/Desktop/sshkey26`

Now try logging in with the SSH key:

`ssh -i ~/Desktop/sshkey26 bandit26@bandit.labs.overthewire.org -p 2220`

The connection will close immediately. That's normal—our login method is correct.

Now make your terminal window smaller by dragging the corner with your cursor. Then run the same `ssh` command again.

If you see `more`, you're on the right track.

Press `v` to open the text in `vim`.

Inside `vim`, type:

`:set shell=/bin/bash`

Press Enter.

Then type:

`:shell`

Press Enter again.

This starts a Bash shell, which means you're now in the `bandit26` account.

Finally, run:

`cat /etc/bandit_pass/bandit26`

This prints the password for the next level.

**What we learned in this level:**

* SSH keys can be used instead of passwords for authentication.
* Private keys should have `600` permissions.
* `more` can be escaped into `vim`.
* `vim` can be used to start a shell with `:shell`.

