1. Create your own scratch directory with `mktemp -d` (don't reuse an old one):

`mkdir=$(mktemp -d)`
`cd $mkdir`

2. Copy `data.txt` into that directory:

`cp ~/data.txt .`

3. Check the file type before doing anything with it:

`file data.txt`
`xxd data.txt | head`

4. Based on what `file` reports, rename the file and decompress it. For example:

`mv data.txt data.gz`
`gunzip data.gz`

5. Repeat steps 3–4 with the new output file. Run `file` again, rename it with the correct extension, and decompress it until `file` reports plain text or ASCII text.

6. Once it's plain text:

`cat data.txt`

That's your password.

**What we learned in this level:**

* Use `mktemp -d` to create a temporary working directory.
* Use `file` to identify a file's type.
* Use `xxd` to inspect a file's contents in hexadecimal.
* Decompress files step by step until you reach plain text.

