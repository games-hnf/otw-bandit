# Bandit Level 4 → Level 5
## Level Goal
The password for the next level is stored in the only human-readable file in the **inhere** directory.
Tip: if your terminal is messed up, try the "reset" command.

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`

## Solution
This level teaches us the mindset when working with a bunch of files.
Moreover in this particular case, in these given files, there is only one file that has human-readable content, which is the password for the next level.
And the objective is to detect which file contains this precious information, and withdraw it.
After logging in, we check the contents of the `$HOME` directory:
```bash
ll
```
We find a directory named **inhere**.
We move into it and check its contents:
```bash
cd inhere && ll
```
We were using the struture `[command 1] && [command 2]` to be faster.
This means after `[command 1]` completes, the system runs `[command 2]`.
We have another structure `[command 1] & [command 2]`, which means the two commands run in parallel.
The `[command 2]` will not wait until the `[command 1]` to be complete to run.
Coming back to our solution, after checking the contents of the directory **inhere**, we have a bunch of files named: **-file00**, **-file01**, ..., **-file09**.
The big lesson in this level is the `file` command.
We use the `file` command to check the file type of these files:
```bash
file ./*
```
Here we use the asterisk `*` to refer all the files in the current directory.
However we cannot simply use `*`, but `./*`, since all the files contains `-`at the beginning.
This is similar to what we have done in the level 1 → level 2.
After running the `file` command, we can see that only **-file07** is the **ASCII text**, which means its content is human-readable and is the password for the next level.
We read the content of **-file07** by using:
```bash
cat ./-file07
```


## Summary
