# Bandit Level 2 → Level 3
## Level Goal
The password for the next level is stored in a file called **spaces in this filename** located in the home directory.

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`

## Helpful Reading Material
[Google Search for "spaces in filename"](https://www.google.com/search?q=spaces+in+filename)

## Solution
We learned how to deal with a file that spaces in the filename.
We log in and check the contents of the home directory by:
```bash
ll
```
We then see a file called **spaces in this filename**.
As the previous level, we run `cat` command to read the content of this file.
However, since there are spaces in the filename, we deal with that using one of the following commands:
```bash
cat 'spaces in this filename'
cat spaces\ in\ this\ filename
```
We then obtain the password for the next level.

## Summary
- Learned how to work with files that have spaces.
- Found the password for the next level.
