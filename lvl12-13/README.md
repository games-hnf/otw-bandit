# Bandit Level 12 → Level 13
## Level Goal
The password for the next level is stored in the file **data.txt**, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work. Use mkdir with a hard to guess directory name. Or better, use the command "mktemp -d". Then copy the datafile using cp, and rename it using mv (read the manpages!)

## Commands you may need to solve this level
`grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`, `mkdir`, `cp`, `mv`, `file`

## Helpful Reading Material
[Hex dump on Wikipedia](https://en.wikipedia.org/wiki/Hex_dump)

## Solution
In this level, we learn about **hexdump** and how to extract multiple file types using the `gunzip`, `bunzip2` and `tar` commands.

We log into the server via SSH and check the `$HOME` directory as usual:
```bash
ll
```
We find a file named **data.txt**.
When we run `cat` on this file, we see a series of columns, where the first column appears to be hexadecimal line numbers.
Based on the hint, we can assume this file is a **hexdump**.

Since we need to modify and work on this file without affecting the server, we make a temporary directory inside `/tmp` using the following command:
```bash
mktemp -d
```
This makes a temporary folder named something like `/tmp/tmp.[random_string]`.
In my case, it was `/tmp/tmp.9chUrKRDAH`.
We then navigate to this directory:
```bash
cd /tmp/tmp.9chUrKRDAH
```
Next, we copy the **data.txt** file to the temporary folder:
```bash
cp -v ~/data.txt ./
```
To reverse the **hexdump**, we use the `xxd` command with the `-r` flag:
```bash
xxd -r data.txt >> test
```
Then, we check the file type of the resulting **test** file:
```bash
file test
```
We see that it is a **gzip compressed data**, which means we need to decompress it using `gunzip`.
However, we first rename the file to have a `.gz` extension:
```bash
mv -v test test.gz
gunzip -v test.gz
```
This replaces **test.gz** with a new file named **test**.
We check its file type again:
```bash
file test
```
Now, it is identified as a **bzip2 compressed data**.
We repeat the process:
```bash
mv -v test test.bz2
bunzip2 -v test.bz2
```
If the resulting file is a **POSIX tar archive (GNU)**, we proceed as follows:
```bash
mv -v test test.tar
tar -xf test.tar
```
We continue this process iteratively:
1. Check the file type using the `file` command.
2. If it's a **gzip** file: rename to `.gz` and use `gunzip`.
3. If it's a **bzip2** file: rename to `.bz2` and use `bunzip2`.
4. If it's a **tar** archive: rename to `.tar` and use `tar -xf`.
Eventually, we obtain an **ASCII text** file.
We run `cat` on this file and retrieve the password for the next level.

## Summary
- Learned the basics of **hexdump** and the `xxd` command
- Practiced handling multiple compressed file types
- Used `gunzip`, `bunzip2`, and `tar` to extract nested data
- Found the password for the next level
