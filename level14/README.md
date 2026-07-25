ls you'll see a file named `sshkey.private`. For this, we'll move it to our local machine. Type `exit`, then run `scp -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private ~/Desktop/`.

It's now on our desktop.

Before we log in to Bandit 14, set the file permissions by running `chmod 600 ~/Desktop/sshkey.private`.

Then, to log in with the SSH key, type `ssh -p 2220 -i ~/Desktop/sshkey.private bandit14@bandit.labs.overthewire.org`.

Here you are.

**What we learned in this level:**

* Use `scp` to copy files from a remote machine to your local machine.
* Set the correct file permissions with `chmod 600` for private SSH keys.
* Use `ssh -i` to log in with a private key instead of a password.

