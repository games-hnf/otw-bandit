# Bandit Level 2 → Level 3
## Level Goal
The password for the next level is stored in a file called **spaces in this filename** located in the home directory.

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`

## Helpful Reading Material
[Google Search for "spaces in filename"](https://www.google.com/search?q=spaces+in+filename)

## Solution
We learned how to handle a file with spaces in its filename.

After logging in, we check the contents of the `$HOME` directory using:
```bash
ls
```
We then find a file named **spaces in this filename**.
As the previous level, we use the `cat` command to read the file's contents.
However, because the filename contains spaces, we must handle it using one of the following methods:
```bash
cat 'spaces in this filename'
cat spaces\ in\ this\ filename
```
Personally, I prefer to use the method with single quotes, for instance:
```bash
cat 'spaces in this filename'
```
Doing this allows us to read the file and obtain the password for the next level.

## Summary
- Learned how to work with filenames that contain spaces.
- Found the password for the next level.
