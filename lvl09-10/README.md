# Bandit Level 9 → Level 10
## Level Goal
The password for the next level is stored in the file **data.txt** in one of the few human-readable strings, preceded by several '=' characters.

## Commands you may need to solve this level
`grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`

## Solution
This level teaches about the useful `strings` command.

We login to the sever using SSH and check the `$HOME` directory running:
```bash
ll
```
We receive a file named **data.txt**.
We try running `cat` on this file, we can see that almost the file is not human-readable.
And if we try running `file` on this file, we get the filetype as **data**.
The password for the next level is hidden in those unreadable strings.
This is where the `strings` command come in.
The `strings` command helps extract all the strings in the given file.
We then run this `strings` command and then the `grep` command to grab all the lines containing **====** as written in the hint.
```bash
strings data.txt | grep '===='
```
Then we obtain the password for the next level.

## Summary
- Learned the basic usage of the `strings` command
- Found the password for the next level
