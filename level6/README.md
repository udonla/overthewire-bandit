Let's do `ls` to see what's in there. You'll see an `inhere` directory, so `cd` into it and run `ls` again.

There will be 20 directories, from `maybehere00` to `maybehere19`. Checking each one manually would take a while, so let's use:

`find . -type f -size 1033c ! -executable`

The output will be:

`./maybehere07/.file2`

Now read it with:

`cat ./maybehere07/.file2`

What we learned in this level:

* How to search for files using the `find` command.
* How to filter files by size with `-size`.
* How to find files that are not executable with `! -executable`.

