Read the cron job first:

`cat /etc/cron.d/cronjob_bandit23`

Then read the script it runs:

`cat /usr/bin/cronjob_bandit23.sh`

The important part of the script is:

`myname=$(whoami)`

`mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)`

`echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"`

`cat /etc/bandit_pass/$myname > /tmp/$mytarget`

The script creates a filename by hashing the text `I am user <username>` with `md5sum`.

Since we need the password for `bandit23`, calculate the filename with:

`echo I am user bandit23 | md5sum | cut -d ' ' -f 1`

This prints the filename.

Now read the file:

`cat /tmp/8ca319486bfbbc3663ea0fbe81326349`

That prints the password for the next level.

**What we learned in this level:**

* Read shell scripts to understand how they generate filenames.
* Use `md5sum` to create an MD5 hash.
* Use `cut` to extract part of a command's output.
* Follow a script's logic to find hidden files.

