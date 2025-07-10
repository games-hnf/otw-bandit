# Bandit Level 5 → Level 6
## Level Goal
The password for the next level is stored in a file somewhere under the **inhere** directory and has all of the following properties:
- human-readable
- 1033 bytes in size
- not executable

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`

## Solution
This level teaches us the basic usage of the `find` command.

We log in using the `ssh` command and check the contents of the `$HOME`directory using `ll`.
We then find a directory named **inhere**.
We navigate into it and list its contents:
```bash
cd inhere && ll
```
Here, we see 20 subdirectories named **maybehere00**, **maybehere01**, ..., **maybehere19**.
Each of these contains multiple files, but only **one** of them meets all three of the following conditions:
- it is **human-readable**
- its size is **exactly 1033 bytes**
- it is **not executable**
The key lesson here is using the `find` command with the `-size` flag as our main tool to locate this file:
```bash
find [directory] -size [size]
find . -size 1033c
```
This command tells the system to search in the current directory (`.` = **inhere**) for any file that is exactly 1033 bytes in size (`c` = bytes).
The result we get is:
```bash
./maybehere07/.file2
```
We can verify its properties by running:
```bash
ll ./maybehere07/.file2
```
We confirm that this file is **not executable** and is **1033 bytes** in size.
We then read its content to obtain the password for the next level:
```bash
cat ./maybehere07/.file2
```

## Summary
- Learned to use the `find` command - a powerful tool for searching files based on specific criteria
- Found the password for the next level
