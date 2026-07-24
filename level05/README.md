Do `ls`. There's a directory named `inhere`, so `cd` into it.

Then type `ls` again to see what's inside. You'll see files named `-file00` to `-file09`.

Checking them one by one would take some time, so let's use the `file` command to find the human-readable one:

`file ./*`

Look at the output. You'll see something like:

`./-file07: ASCII text`

This tells us that `-file07` is a human-readable text file, so let's read it with:

`cat ./-file07`

What we learned in this level:

* How to identify file types using the `file` command.
* How to quickly find a human-readable file.
* How to read the correct file using `cat`.

