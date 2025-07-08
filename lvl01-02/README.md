# Bandit Level 1 → Level 2
## Level Goal
The password for the next level is stored in a file called **-** located in the home directory.

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`

## Helpful Reading Material
[Google Search for "dashed filename"](https://www.google.com/search?q=dashed+filename)
[Advanced Bash-scripting Guide - Chapter 3 - Special Characters](https://linux.die.net/abs-guide/special-chars.html)

## Solution
This level teaches the basic usage of the `ls` command.  
Once logged in using username **bandit0** and password **bandit0**, we check the contents of the home directory using:
```bash
ls
```
There, we will find and read a file named **readme**, which contains the password for the next level.
```bash
cat readme
```
Personally, I prefer to use the `ls` command with some additional flags:
```bash
ls -lah --group-directories-first
```
- `-l`: lists contents in long format
- `-a`: shows all files, including hidden ones
- `-h`: displays sizes in a human-readable format
- `--group-directories-first`: shows directories before files

And I personally added this command as an alias to my .bashrc file on my local machine.
```bash
alias lst='(ls -lah --group-directories-first)'
```

## Summary
- Learned how to use the `ls` command.
- Created a personalized alias in the **.bashrc** file.
- Found **readme** file and got password for next level.
