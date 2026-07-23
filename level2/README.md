Now for Level 2, log in as bandit1, then enter the password you grabbed from the previous level.

Type ls to see what's in the directory. You'll see a file named -. Since cat - doesn't work (because - is treated as standard input), use:

cat ./-

or

cat ~/-

if you're in your home directory.

This level teaches you how to access files with special names by specifying their path.
