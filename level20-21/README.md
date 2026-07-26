Run `./suconnect`.

The output should be:

`bandit20@bandit:~$ ./suconnect`
`Usage: ./suconnect <portnumber>`
`This program will connect to the given port on localhost using TCP.`
`If it receives the correct password from the other side, the next password is transmitted back.`

This tells us that `suconnect` needs a port number to connect to.

Open a new SSH session and log in to the same Bandit level. In the new terminal, start a listener with:

`nc -l -p 12345`

This waits for an incoming connection on port `12345`.

Go back to your first terminal and run:

`./suconnect 12345`

Switch back to the terminal running `nc` and paste the current level's password. Press Enter.

`suconnect` will verify the password and send back the password for the next level.

**What we learned in this level:**

* Use `nc -l -p` to listen on a TCP port.
* Some programs communicate over localhost using TCP.
* You can use two terminal sessions to send and receive data between programs.

