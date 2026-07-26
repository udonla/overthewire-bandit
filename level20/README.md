Run `./bandit20-do whoami`.

It should print `bandit20`, which shows the command is running as the `bandit20` user.

Next, run:

`./bandit20-do cat /etc/bandit_pass/bandit20`

This prints the password for the next level.

**What we learned in this level:**

* Run programs in the current directory with `./`.
* Use `whoami` to check which user is running a command.
* `bandit20-do` lets you run specific commands with the permissions needed to read the password file.

