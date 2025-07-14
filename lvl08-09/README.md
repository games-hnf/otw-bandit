# Bandit Level 8 → Level 9
## Level Goal
The password for the next level is stored in the file **data.txt** and is the only line of text that occurs only once.

## Commands you may need to solve this level
`grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`

## Solution
This level teaches how to basically use the `sort` and `uniq` commands.

More precisely, we login to the server as usual by the `ssh` command, and check the `$HOME` directory.
```bash
ll
```
We receive a file named **data.txt**.
If we simply `cat` this file, we obtain a bunch of random strings.
According to the hint, most of them are repeated, and the only unique string is the password for the next level.
We learned from the manual page that, we can use the `sort` command to arrange all the repeated string in one place, and then use the `uniq` command with the `-u` flag to find out the unique string among them.
We cannot use the `uniq` command directly, because this command tells the system to compare the considering line to its adjacent lines to find out the unique line.
It cannot search through the entire file to directly find the unique line, that's why we need to run the `sort` command first to arrange all the repeated lines at the same place.
```bash
sort data.txt | uniq -u
```
We then receive the password for the next level.

## Summary
- Learned the basics of the `sort` and `uniq` commands
- Found the password for the next level
