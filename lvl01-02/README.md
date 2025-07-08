# Bandit Level 1 → Level 2
## Level Goal
The password for the next level is stored in a file called **-** located in the home directory.

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`

## Helpful Reading Material
[Google Search for "dashed filename"](https://www.google.com/search?q=dashed+filename)  
[Advanced Bash-scripting Guide - Chapter 3 - Special Characters](https://linux.die.net/abs-guide/special-chars.html)

## Solution
We learned how to deal with a file with a dashed filename.
More precisely, once logged in using the obtained password from previous level, we check the contents of the home directory by:
```bash
ll
```
We then see a file named **-**.
We cannot `cat -` directly, because the Linux kernel will understand that we wanted to use `cat` command with some flag, but is still missing.
In short, we solve this problem by calling this file by `./-`, where `.` means the current directory.
We then read the content of the file **-** and receive the password for next level:
```bash
cat ./-
```

## Summary
- Learned how to use the `ls` command.
- Created a personalized alias in the **.bashrc** file.
- Found **readme** file and got password for next level.
