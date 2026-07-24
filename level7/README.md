I typed `ls`, but nothing showed up, so I'll use `ls -la`.

I couldn't find any useful directories, but no problem. For this level, let's just run:

`find / -user bandit7 -group bandit6 -size 33c 2>/dev/null`

This command searches the entire system for a file that:

* Is owned by user `bandit7`
* Belongs to group `bandit6`
* Is exactly 33 bytes in size

The output will be:

`/var/lib/dpkg/info/bandit7.password`

For the last step, read it with:

`cat /var/lib/dpkg/info/bandit7.password`

What we learned in this level:

* How to search the entire system with `find`.
* How to filter files by owner, group, and size.
* How to hide permission errors using `2>/dev/null`.

