# Bandit Level 7 → Level 8
## Level Goal
The password for the next level is stored in the file **data.txt** next to the word **millionth**.

## Commands you may need to solve this level
`man`, `grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`

## Solution
This level teaches the basic usage of piping and the command `grep`.
We use the structure `[command 1] | [command 2]` to take the result of `[command 1]` and pipe it into the `[command 2]`.
And the command `grep` helps us grab the line which contains the given string.

Firstly, we login as usual and check the `$HOME` directory using:
```bash
ll
```
We then see a file named **data.txt**.
As in the hint, the password for the next level is next to the word **millionth** in the file **data.txt**.
Then, we use the `grep` command to grab the whole line, which contains the string **millionth**.
```bash
cat data.txt | grep 'millionth'
```
Finally, we obtain the password for the next level.

## Summary
- Learned the basis of piping
- Learned the basis of the `grep` command
- Found the password for the next level
