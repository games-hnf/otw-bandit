# Bandit Level 0
## Level Goal
The goal of this level is for you to log into the game using SSH.
The host to which you need to connect is **bandit.labs.overthewire.org**, on port **2220**.
The username is **bandit0** and the password is **bandit0**.
Once logged in, go to the Level 1 page to find out how to beat Level 1.

## Commands you may need to solve this level
ssh

## Helpful Reading Material
[Secure Shell (SSH) on Wikipedia](https://en.wikipedia.org/wiki/Secure_Shell)  
[How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

## Solution
This level teaches us the basic usage of the **ssh** command.
When provided with a **username**, **hostname**, and **port-number**, we can connect to the remote server using one of the following commands:
```bash
ssh [username]@[hostname] -p [port-number]
ssh ssh://[username]@[hostname]:[port-number]
```
After running the command, we enter the provided password **bandit0** when prompted.

## Summary
- Learned two ways to use the **ssh** command to connect to a remote server.
- Successfully logged into the Bandit sever for the first time.
