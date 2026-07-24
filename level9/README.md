Do `ls`, and you'll see a file named `data.txt`.

How do we find the line that appears only once? We can use `sort` and `uniq` together:

`sort data.txt | uniq -u`

This will print the line that appears only once.

What we learned in this level:

* How to sort lines using `sort`.
* How to find unique lines using `uniq -u`.
* How to combine commands with the pipe (`|`) operator.

