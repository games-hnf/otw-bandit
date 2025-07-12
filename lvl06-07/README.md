# Bandit Level 6 → Level 7
## Level Goal
The password for the next level is stored **somewhere on the server** and has all of the following properties:
- owned by user bandit7
- owned by group bandit6
- 33 bytes in size

## Commands you may need to solve this level
`ls`, `cd`, `cat`, `file`, `du`, `find`, `grep`

## Solution
This level is all about teaching us how to use the `find` command efficiently.

We log in as usual and check the `$HOME` directory by running:
```bash
ll
```
We see nothing - and yes, **that's the challenge of this level**.
We need to figure out how to use the `find` command to search through the entire server for a file that satisfies **all three** of the following conditions:
- owned by user **bandit7**
- owned by group **bandit6**
- exactly **33 bytes** in size

To achieve this, we use the following command:
```bash
find / -user bandit7 -group bandit6 -size 33c
```
We use `/` to indicate we want to search the **entire filesystem**.
However, if we simply run this command, we'll get a bunch of error messages.
That's because we're trying to search through **directories that require root privileges**, which we don't have access to.
To suppress those errors, we redirect the error output to `/dev/null`:
```bash
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
```
Here, `2>/dev/null` means: "send all standard error (file descriptor 2) to `/dev/null`", effectively **hiding all permission-denied messages**.
By running this command, we find the target file, along with its full path:
```bash
/var/lib/dpkg/info/bandit7.password
```
We read it to get the password for the next level:
```bash
cat /var/lib/dpkg/info/bandit7.password
```

## Summary
- Learned how powerful the `find` command can be
- Learned how `2>/dev/null` works to suppress errors
- Successfully found the password for the next level
