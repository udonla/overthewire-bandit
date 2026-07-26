Run `diff passwords.old passwords.new`.

The output will look like this:

`42c42`
`< qOg5pVOjPx9x9VccyYBADiT4xxyoUB8D`
`---`
`> OQxXZjELndr90zuhOTDYBEomI0SZITXI`

The line starting with `>` is the new password, so our password is `OQxXZjELndr90zuhOTDYBEomI0SZITXI`.

**What we learned in this level:**

* Use `diff` to compare two files.
* Lines starting with `<` are from the old file.
* Lines starting with `>` are from the new file.
* Read the output to find the updated password.

