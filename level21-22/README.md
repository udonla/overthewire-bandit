First, list the cron jobs:

`ls /etc/cron.d/`

You'll see a file named `cronjob_bandit22`.

Read it with:

`cat /etc/cron.d/cronjob_bandit22`

This shows that `/usr/bin/cronjob_bandit22.sh` runs every minute.

Now read the script:

`cat /usr/bin/cronjob_bandit22.sh`

The script looks like this:

* It changes the permissions of a file in `/tmp`.
* It copies the password for the next level into that file.

You might try running the file directly:

`/tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv`

But you'll get a "Permission denied" error because it's a regular file, not an executable.

Instead, read it with:

`cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv`

That prints the password for the next level.

**What we learned in this level:**

* Use `cat` to inspect cron job configuration files.
* Cron jobs can run scripts automatically on a schedule.
* Read a shell script to understand what it does.
* Use `cat` to read a regular file instead of trying to execute it.

