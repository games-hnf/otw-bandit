# Bandit Level 0 ➥ Level 1
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
This level teaches us the basic usage of the **ssh** command.
When we are given the **username**, **hostname**, and **port-number**, we can connect to a remote machine using one of the following commands:
```bash
ssh [username]@[hostname] -p [port-number]
ssh ssh://[username]@[hostname]:[port-number]
```
After executing the command, we enter the provided password when prompted.
Once logged in, we can proceed to Level 1 by checking the contents of the home directory:
```bash
ls -la
```
There, we will find and read a file named **readme**, which contains the password for the next level.
```bash
cat readme
```

## Summary
- **ssh** command learned.
- Found **readme** file and got password for next level.
