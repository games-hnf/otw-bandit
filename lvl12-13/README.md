# Bandit Level 12 → Level 13
## Level Goal
The password for the next level is stored in the file **data.txt**, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work. Use mkdir with a hard to guess directory name. Or better, use the command "mktemp -d". Then copy the datafile using cp, and rename it using mv (read the manpages!)

## Commands you may need to solve this level
`grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`, `mkdir`, `cp`, `mv`, `file`

## Helpful Reading Material
[Hex dump on Wikipedia](https://en.wikipedia.org/wiki/Hex_dump)

## Solution
We learn about **hexdump** and how to extract several filetypes using the `gunzip`, `bunzip2`, `tar` commands.

We log in to the server via SSH and check the `$HOME` directory as usual:
```bash
ll
```
We find a file named **data.txt**.
When we run `cat` on this file, we see a bunch of columns, where the first column may be the column of line numbers in hexadecimal.
According to the hint, this file is a **hexdump**.

We need to work and make modifications on this file, but to avoid any affection to the server, we need to make a temporary folder in the `/tmp` directory.
We follow the given instruction to run the following command:
```bash
mktemp -d
```
This command helps make a temporary folder named `/tmp/tmp.[random string]`, in my case it is `/tmp/tmp.9chUrKRDAH`.
We change the directory to this temporary folder
```bash
cd /tmp/tmp.9chUrKRDAH
```
and copy the **data.txt** file to this directory:
```bash
cp -v ~/data.txt ./
```
To revert the **hexdump**, we run the `xxd` command with the `-r` flag:
```bash
xxd -r data.txt >> test
```
Then we check the filetype of the obtained file by running:
```bash
file test
```
We see that it is a **gzip compressed data**, which means we need to use the `gunzip` command to extract it, but we need to change the file extension to `.gz` first:
```bash
mv -v test test.gz
```
And then we extract it by running:
```bash
gunzip -v test.gz
```
Then, the file **test.gz** is replaced by a file named **test**, which is the extracted file from **test.gz**.
We check the filetype again:
```bash
file test
```
And see that it it is a **bzip2 compressed data**.
We repeat the same procedure by firstly change its file extension:
```bash
mv -v test test.bz2
```
And then extract it by using the `bunzip2` command:
```bash
bunzip2 -v test.bz2
```
Also, with this same mindset, if we receive a file, **test** namely, which is **POSIX tar archive (GNU)**, then we will do as follows:
```bash
mv -v test test.tar
```
And then we extract by running the `tar` command:
```bash
tar -xf test.tar
```
And we repeat this same procedure again and again for several times:
- check the filetype using the `file` command.
- if it is **gzip compressed data**, we change the file extension to `.gz` and extract using the `gunzip` command.
- if it is **bzip2 compressed data**, we change the file extension to `.bz2` and extract using the `bunzip2` command.
- if it is **POSIX tar archive (GNU)**, wi change the file extension to `.tar` and extract using the `tar` command.
Until we receive an **ASCII text** file, we run `cat` on this file and obtain the password for the next level.

## Summary
- Learned the basics of hexdump and the `xxd` command
- Learned how to handle several compressed filetype and the `gunzip`, `bunzip2`, `tar` commands
- Found the password for the next level
