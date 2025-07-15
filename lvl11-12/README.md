# Bandit Level 11 → Level 12
## Level Goal
The password for the next level is stored in the file **data.txt**, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions.

## Commands you may need to solve this level
`grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`

## Helpful Reading Material
[Rot13 on Wikipedia](https://en.wikipedia.org/wiki/ROT13)

## Solution
This level introduces us to **ROT13**.
**ROT13** is a simple encoding method where each letter in the Latin alphabet is shifted 13 positions.
For example: **A → N**, **B → O**, **C → P**, ..., **M → Z**, and vice versa.
Since the Latin alphabet has 26 letters, applying **ROT13** twice returns the original message.
This method does **not** affect digits or  special characters.

To solve this level, we log in to the server via SSH and check the `$HOME` directory as usual:
```bash
ll
```
We find a file named **data.txt**.
When we `cat` this file, we see an encoded message.
Using the `tr` command to shift each letter by 13 positions, we can decode the message and reveal the password for the next level:
```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

## Summary
- Learned about **ROT13** and the basic usage of the `tr` command
- Found the password for the next level
