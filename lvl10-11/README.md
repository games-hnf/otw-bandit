# Bandit Level 10 → Level 11
## Level Goal
The password for the next level is stored in the file **data.txt**, which contains base64 encoded data.

## Commands you may need to solve this level
`grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`

## Solution
In this level, we learned about **Base64** - a method of encoding that transforms readable text into an encoded string.
It typically converts a meaningful string into something that looks meaningless.  
The process begins by converting each character into a number based on the Latin (ACSII) character set.
Each character is represented in 8-bit binary.
The entire sequence of bits is then regrouped into 6-bit chunks.
These chunks are mapped to a set of 64 characters (A-Z, a-z, 0-9, +, /) to form the final **Base64** string.
This encoding method is not secure - in fact, **Base64**-encoded data can be very easily decoded.

We log in to the server via SSH and check the `$HOME` directory as usual:
```bash
ll
```
We find a file named **data.txt**.
If we run `cat` on this file, we get a string - but it doesn't look like the passwords from previous levels.
This string is longer and ends with **==**, which, according to the hint, suggests it is **Base64**-encoded.
We decode it using:
```bash
base64 -d data.txt
```
This reveals the password for the next level.

## Summary
- Learned the basics of **Base64** encoding
- Decoded a file to find the password for the next level
