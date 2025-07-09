# Bandit Level 3 → Level 4
## Level Goal
The password for the next level is stored in a hidden file in the **inhere** directory.

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`

## Solution
We learn to use the `ls` command with some additional flags to handle the hidden files and directories.
Precisely, after logging in, we run the `ls` command as usual:
```bash
ls
```
We see a directory named **inhere**, then we move to this directory:
```bash
cd inhere
```
Next, a natural move is to check the contents of the **inhere** directory by using:
```bash
ls
```
But if we simply run `ls`, we receive no result, obviously, because the contents in the **inhere** directory were hidden.
We then need to use the `ls` command with some additional flags:
```bash
ls -la
```
- `-l`: lists contents in long format
- `-a`: shows all files, including hidden ones
We then see a file named **...Hiding-From-You**, and read the content of this file by simply running:
```bash
cat ...Hiding-From-You
```
Then, we obtain the password for the next level.

This part is not strictly necessary, but if we check the **.bashrc** file in the `$HOME` directory, we will see the following line:
```bash
alias ll='ls -alF'
```
So for me, from now on, I find it better to use `ll` instead of `ls`, since it provides much more useful information than the basic `ls` command.
Personally, I in fact prefer to use the `ls` command with the following additional flags:
```bash
ls -lah --group-directories-first
```
- `-h`: displays sizes in a human-readable format
- `--group-directories-first`: shows directories before files

And I personally added this command as an alias to my **.bashrc** file on my local machine.
```bash
alias lst='(ls -lah --group-directories-first)'
```

## Summary
- Learned how to use the `ls` command.
- Found **.bashrc** file and an alias `ll`.
- Created a personalized alias in the **.bashrc** file.
- Found the password for the next level.
