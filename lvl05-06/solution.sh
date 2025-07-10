# This file is for documentation only.
# Do NOT run this script directly!
# Most commands must be executed on the remote Bandit sever after SSH login.

# Step 1: check the contents of the $HOME directory.
ll

# Step 2: found the 'inhere' directory, move into it and check its contents.
cd inhere && ll

# Step 3: search in the current directory for the file that is 1033 bytes in size
find . -size 1033c

# Step 4: get the result './maybehere07/.file2', verify this file
ll ./maybehere07/.file2

# Step 5: confirm that this file is not executable and is 1033 bytes in size
# read the contents of this file and obtain the password for the next level
cat ./maybehere07/.file2
