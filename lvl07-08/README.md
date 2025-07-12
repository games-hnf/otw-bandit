# Bandit Level 7 → Level 8
## Level Goal
The password for the next level is stored in the file **data.txt** next to the word **millionth**.

## Commands you may need to solve this level
`man`, `grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`

## Solution
This level teaches the basic usage of **piping** and the `grep` command.
We use the structure
```bash
[command 1] | [command 2]
```
to take the output of `[command 1]` and **pipe it as input** into `[command 2]`.
The `grep` command helps us **search for lines that contain a specific string**.

First, we login as usual and check the `$HOME` directory by running:
```bash
ll
```
We see a file named **data.txt**.
According to the hint, the password for the next level is located next to the word **millionth** inside this file.
So, we use `grep` to extract the entire line that contains that string:
```bash
cat data.txt | grep 'millionth'
```
This returns the line we need, along with the password.

## Summary
- Learned the basics of **piping** with `|`
- Learned the basics of the `grep` command
- Successfully found the password for the next level
