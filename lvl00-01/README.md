# Bandit Level 0 → Level 1
## Level Goal
The password for the next level is stored in a file called **readme** located in the home directory.
Use this password to log into bandit1 using SSH.
Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.

## Commands you may need to solve this level
ls, cd, cat, file, du, find

## TIP
Create a file for notes and passwords on your local machine!

Passwords for levels are *not* saved automatically. If you do not save them yourself, you will need to start over from bandit0.

Passwords also occasionally change.
It is recommended to take notes on how to solve each challenge.
As levels get more challenging, detailed notes are useful to return to where you left off, reference for later problems, or help others after you’ve completed the challenge.

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
And I personally add this command as an alias in my **.bashrc** file.
```bash
alias lst='(ls -lah --group-directories-first)'
```

## Summary
- Learned `ls` command and add a personalized alias in the **.bashrc** file.
- Found **readme** file and got password for next level.
