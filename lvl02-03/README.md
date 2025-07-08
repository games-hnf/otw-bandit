# Bandit Level 2 → Level 3
## Level Goal
The password for the next level is stored in a file called **spaces in this filename** located in the home directory.

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`

## Helpful Reading Material
[Google Search for “spaces in filename”](https://www.google.com/search?q=spaces+in+filename)

## Solution
We learned how to deal with a file that has a dashed filename.
More precisely, once logged in using the password obtained from the previous level, we check the contents of the home directory with:
```bash
ll
```
We then see a file named **-**.
We cannot simply run `cat -`, because the Linux kernel interprets the dash `-` as a flag, which in this case is incomplete or invalid.
To solve this, we reference the file explicitly using `./-`, where `.` refers to the current directory.
We then read the contents of the file and retrieve the password for the next level:
```bash
cat ./-
```

## Summary
- Learned how to work with files that have dashed filenames.
- Found the password for the next level.
