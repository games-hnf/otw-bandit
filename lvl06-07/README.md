# Bandit Level 6 → Level 7
## Level Goal
The password for the next level is stored **somewhere on the server** and has all of the following properties:
- owned by user bandit7
- owned by group bandit6
- 33 bytes in size

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`, `grep`

## Solution
This level extremely teaches us how to use the `find` command efficiently.

We log in as usual and check the `$HOME` directory by using:
```bash
ll
```
We see nothing, and yes this is the challenge of this level.
We need to figure out how to use the `find` command to search the **among the whole server** the file that satisfies all three conditions:
- owned by user bandit7
- owned by group bandit6
- 33 bytes in size
We work around by using:
```bash
find / -user [username] -group [groupname] -size [filesize]
find / -user bandit7 -group bandit6 -size 33c
```
We use `/` to refer the whole server.
However, if we only simply run this command, we will receive a bunch of error messages, because we've searched through all the root-permission directories, which means there are many directories that we don't have the permission to access or work on.
To avoid this problem, we run the following command:
```bash
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
```
Here `2>/dev/null` means all the error outputs will be sent to `null`, which means the errors will not be printed on the screen.
By running this command we receive the necessary file with full exact location:
```bash
/var/lib/dpkg/info/bandit7.password
```
We read this file and obtain the password for the next level:
```bash
cat /var/lib/dpkg/info/bandit7.password
```

## Summary
- Learned more about the powerful command `find`
- Learned an additional details about `2>/dev/null`
- Found the password for the next level
