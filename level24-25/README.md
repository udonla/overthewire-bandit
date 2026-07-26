We'll create a simple brute-force loop.

Run:

`for pin in $(seq -w 0000 9999); do echo "PASSWORD_OF_LEVEL24 $pin" | nc -w 1 localhost 30002; done > /tmp/out.txt`

Replace `PASSWORD_OF_LEVEL24` with the actual password from the previous level.

The command will take a few minutes to finish because it tries every 4-digit PIN.

Once it's done, run:

`grep -v Wrong /tmp/out.txt`

This filters out all the failed attempts and shows the successful response, which contains the password for the next level.

**What we learned in this level:**

* Use `seq -w` to generate zero-padded numbers.
* Use a `for` loop to automate repetitive commands.
* Use `nc` to send data to a TCP service.
* Use `grep -v` to hide lines that contain specific text.

