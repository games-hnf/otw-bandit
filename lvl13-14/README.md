# Bandit Level 13 → Level 14
## Level Goal
The password for the next level is stored in **/etc/bandit_pass/bandit14 and can only be read by user bandit14**. For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the next level. **Note:** **localhost** is a hostname that refers to the machine you are working on

## Commands you may need to solve this level
`ssh`, `telnet`, `nc`, `openssl`, `s_client`, `nmap`

## Helpful Reading Material
[SSH/OpenSSH/Keys](https://help.ubuntu.com/community/SSH/OpenSSH/Keys)

## Solution
This level teaches us more about **SSH**.

We login to the server as usual and check the `$HOME` directory:
```bash
ll
```
We find a file named **sshkey.private**.
We learn from the man pages that we can use the `ssh` command with the `-i` flag applying on this private key file to login to the server of the next level under the username **bandit14**.
```bash
ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220
```
When we're asked: **Are you sure you want to continue connecting (yes/no/[fingerprint])?**, we answer **yes**.
Once logged in, we follow the hint that, the password is stored in the file **/etc/bandit_pass/bandit14**.
We read this file and obtain the password for the next level:
```bash
cat /etc/bandit_pass/bandit14
```

## Summary
- Learned more about **SSH**
- Practiced login using the private key file
- Found the password for the next level
