Do `ls`, and you'll see a file named `data.txt`.

If you `cat` it, it doesn't look very human-readable. We can extract the readable text using:

`strings data.txt | grep "="`

This will show the line containing the password.

What we learned in this level:

* How to extract readable text from a binary file using `strings`.
* How to search the output with `grep`.
* How to combine commands using the pipe (`|`) operator.

