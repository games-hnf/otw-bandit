# Bandit Level 10 → Level 11
## Level Goal
The password for the next level is stored in the file **data.txt**, which contains base64 encoded data.

## Commands you may need to solve this level
`grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`

## Solution
We learned about **Base64** in this level.
It is a method to transform a string to another string, mainly from a meaningful string to a meaningless string.
The method use firstly convert each character to a corresponding number using the Latin alphabetical order, then it is converted to the binary number, using 8-bit for each character.
Now the whole series of digits is grouped differently into each 6-bit group.
Then it'll be reversely converted back to the normal character in the Latin alphabet.
This is not a strong method to encode, in fact the encoded data by the **base64** method can be very easily decoded.

We log in to the server using SSH and check the `$HOME` directory as usual:
```bash
ll
```
We find a file named **data.txt**.
We decode this file by running:
```bash
base64 -d data.txt
```
and obtain the password for the next level.

## Summary
- Learned the basic of **base64**
- Found the password for the next level
