# Bandit Level 9 → Level 10
## Level Goal
The password for the next level is stored in the file **data.txt** in one of the few human-readable strings, preceded by several '=' characters.

## Commands you may need to solve this level
`grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`

## Solution
This level introduces the useful `strings` command.

We log in to the sever using SSH and check the `$HOME` directory by running:
```bash
ll
```
We find a file named **data.txt**.
When we try running `cat` on this file, we see that most of its contents are not human-readable.
If we run the `file` command on it, the file type is identified as **data**.
The password for the next level is hidden within these unreadable strings.
This is where the `strings` command becomes useful - it helps extract all printable character sequences from a given file.
We then use `strings` followed by `grep` to search for lines containing **====**, as suggested in the hint:
```bash
strings data.txt | grep '===='
```
This gives us the password for the next level.

## Summary
- Learned the basic usage of the `strings` command
- Found the password for the next level
