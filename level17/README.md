First, run `nmap -sV -p 31000-32000 localhost`.

That will give an output like this:

PORT      STATE SERVICE     VERSION
31046/tcp open  echo
31518/tcp open  ssl/echo
31691/tcp open  echo
31790/tcp open  ssl/unknown
31960/tcp open  echo

This means we'll connect to `31790` because it's running an unknown SSL service.

Run `ncat --ssl localhost 31790`, then type the password for the current level.

That will give you an SSH private key. Copy it.

Then create the file by running `nano ~/Desktop/sshkey.private`, paste the key into it, and save the file.

Set the correct permissions with `chmod 600 ~/Desktop/sshkey.private`.

Finally, log in by running `ssh -i ~/Desktop/sshkey.private bandit17@bandit.labs.overthewire.org -p 2220`.

**What we learned in this level:**

* Use `nmap` to scan a range of ports and identify running services.
* Look for the correct SSL service before connecting.
* Save an SSH private key to a file and set the correct permissions with `chmod 600`.
* Use `ssh -i` to log in with a private key.

