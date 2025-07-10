# Bandit Level 4 → Level 5
## Level Goal
The password for the next level is stored in a file somewhere under the **inhere** directory and has all of the following properties:
- human-readable
- 1033 bytes in size
- not executable

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`

## Solution
This level teaches us the basic usage of the `find` command.

We log in by using the `ssh` command and check the contents of the `$HOME`directory by the `ll` command.
We then found the **inhere** directory.
We navigate into it and check its contents:
```bash
cd inhere && ll
```
Here we see 20 directories named **maybehere00**, **maybehere01**, ..., **maybehere19**.
And in each directory, we have a bunch of files, and only one among them contains the password for the next level.
Our objective now is to find the particular file which satisfies all three given conditions: human-readable, 1033 bytes in size and not executable.
The key lesson is to use `find` command with the `-size` flag as our ultimate weapon to identify the important file.
```bash
find [directory] -size [size]
find . -size 1033c
```
This line means we ask the system to find in the whole current directory (the **inhere** directory) the file that is 1033 bytes in size.
The result we receive is `./maybehere07/.file2`.
We can verify by using:
```bash
ll ./maybehere07/.file2
```
We then see that this file is not executable and is exactly 1033 bytes in size.
We read its content and obtain the password for the next level.
```bash
cat ./maybehere07/.file2
```

## Summary
- Learned the `find` command, which is extremely powerful
- Found the password for the next level
