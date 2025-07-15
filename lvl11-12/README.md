# Bandit Level 11 → Level 12
## Level Goal
The password for the next level is stored in the file **data.txt**, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions.

## Commands you may need to solve this level
`grep`, `sort`, `uniq`, `strings`, `base64`, `tr`, `tar`, `gzip`, `bzip2`, `xxd`

## Helpful Reading Material
[Rot13 on Wikipedia](https://en.wikipedia.org/wiki/ROT13)

## Solution
This level teaches us about the **Rot13**.
**Rot13** is an easy method to encode a string, this method is even easier to decode in comparison to **Base64**.
Precisely, each letter in the Latin alphabet is translated 13 positions, for instance: A to N, B to O, C to P, ..., M to Z and reversely.
This method completely does not affect on the digits.

Coming back to the solution, we log in to the server using SSH and check the `$HOME` directory as usual:
```bash
ll
```
We find a file named **data.txt**.
Then we `cat` on this file, and translate again each letter in the string 13 positions, we'll obtain the original message with the password for the next level.
Because the Latin alphabet has 26 letters in total.
From the original message, each letter is translated 13 positions to achieve the encoded message.
Now we translate each letter 13 position, and get the original message back.
```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

## Summary
- Learned about **Rot13** and the basic usage of the `tr` command
- Found the password for the next level
