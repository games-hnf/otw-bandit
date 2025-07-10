# Bandit Level 4 → Level 5
## Level Goal
The password for the next level is stored in the only human-readable file in the **inhere** directory.
Tip: if your terminal is messed up, try the "reset" command.

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`

## Solution
This level teaches is the right mindset when dealing with a number of files.
In this particular case, among the given files, only one contains human-readable content - the password for the next level.
The objective is to identify the file that contains this valuable information and retrieve it.

After logging in, we check the contents of the `$HOME` directory:
```bash
ll
```
We find a directory named **inhere**.
We navigate into it and check its contents:
```bash
cd inhere && ll
```
Here we use the struture `[command 1] && [command 2]` to execute commands efficiently.
It means that `[command 2]` runs **only after** `[command 1]` completes successfully.
There is also the `[command 1] & [command 2]` structure, where both commands run in **parallel** - `[command 2]` does **not** wait for `[command 1]` to finish.

Back to the solution: after listing the contents of the **inhere** directory, we see a bunch of files named: **-file00**, **-file01**, ..., **-file09**.
The key lesson in this level is the `file` command, which we use to determine the file types:
```bash
file ./*
```
We use `*` to refer all files in the current directory, and `./*` (instead of just `*`) because all the filenames start with a dash `-`.
This is similar to what we did in the previous level (Level 1 → Level 2).

After running the `file` command, we find that only **-file07** is an **ASCII text** file, which means its content is human-readable and contains the password for the next level.
We read it using:
```bash
cat ./-file07
```

## Summary
- Learned the `file` command, which gives precious information about the files
- Learned and tried using `[command 1] && [command 2]` and `[command 1] & [command 2]`
- Reviewed the lesson of dealing with dashed filenames
- Found the password for the next level
