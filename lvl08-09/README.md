# Bandit Level 8 → Level 9
## Level Goal
The password for the next level is stored in the file **data.txt** and is the only line of text that occurs only once.

## Commands you may need to solve this level
`grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`

## Helpful Reading Material
[Piping and Redirection](https://ryanstutorials.net/linuxtutorial/piping.php)

## Solution
This level teaches the basic usage of the `sort` and `uniq` commands.

We begin by logging into the server via SSH and checking the `$HOME` directory:
```bash
ll
```
We find a file named **data.txt**.
If we simply run `cat` on this file, we see a bunch of random strings.
According to the level hint, most of these strings are repeated, and the only **unique** string is the password for the next level.
From the manual pages, we learn that the `sort` command helps group identical lines together.
Then, we use the `uniq` command with the `-u` flag to extract the **unique** line from these sorted lines.

Note: we **cannot use** `uniq` directly on an unsorted file, because `uniq` only compares **adjacent** lines.
If the file isn't sorted, non-adjacent duplicates won't be detected, and may be mistakenly treated as unique.
That's why sorting the file first is essential before using `uniq`.
```bash
sort data.txt | uniq -u
```
Running this command returns the password for the next level.

## Summary
- Learned the basic usage of the `sort` and `uniq` commands
- Understood why sorting is necessary before using `uniq`
- Found the password for the next level
