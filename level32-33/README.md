## Bandit Level 32 → 33 Walkthrough

Log in as `bandit32`:

`ssh bandit32@bandit.labs.overthewire.org -p 2220`

Enter the password from level 32 when prompted.

You'll be dropped into the **UPPERCASE SHELL**, where normal commands don't work because they're converted to uppercase.

To escape it, run:

`$0`

This starts your default shell.

Now you can run normal Linux commands. Read the password with:

`cat /etc/bandit_pass/bandit33`

That prints the password for the next level.

**What we learned in this level:**

* Some shells restrict how commands are interpreted.
* `$0` starts the current shell, letting you escape the restricted shell.
* Once you're back in a normal shell, you can run standard Linux commands.
