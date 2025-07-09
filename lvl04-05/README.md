# Bandit Level 4 → Level 5
## Level Goal
The password for the next level is stored in the only human-readable file in the **inhere** directory.
Tip: if your terminal is messed up, try the “reset” command.

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`

## Solution
We learned how to use the `ls` command with additional flags to handle hidden files and directories.
After logging in, we run the `ls` command as usual:
```bash
ls
```
We see a directory named **inhere**, so we move into it:
```bash
cd inhere
```
Next, it's natural to check the contents of the **inhere** directory:
```bash
ls
```
However, running `ls` alone returns no result - because the contents are hidden.
To reveal them, we use the `ls` command with the `-l` and `-a` flags:
```bash
ls -la
```
- `-l`: lists contents in long format
- `-a`: shows all files, including hidden ones

We then see a file named **...Hiding-From-You** and read its contents:
```bash
cat ...Hiding-From-You
```
This gives us the password for the next level.

---
This step isn't strictly necessary, but if we check the **.bashrc** file in the `$HOME` directory, we'll find this line:
```bash
alias ll='ls -alF'
```
So from now on, I personally find it better to use `ll` instead of `ls`, since it gives more useful information.
I also prefer to use `ls` with the following extra flags:
```bash
ls -lah --group-directories-first
```
- `-h`: displays sizes in a human-readable format
- `--group-directories-first`: shows directories before files

I've even added this command as a personal alias in my local machine's **.bashrc** file:
```bash
alias lst='(ls -lah --group-directories-first)'
```

## Summary
- Learned how to use the `ls` command with useful flags.
- Discovered **.bashrc** and the alias `ll`.
- Made a personalized alias in the local **.bashrc** file.
- Found the password for the next level.
