# This file is for documentation only.
# Do NOT run this script directly!
# Most commands must be executed on the remote Bandit sever after SSH login.

# Step 1: check the contents of the $HOME directory
ll

# Step 2: found the 'inhere' directory, move into it and check its contents
cd inhere && ll

# Step 3: found a bunch of files whose names start with a dash (-)
# check the file types of all files in the current directory
file ./*

# Step 4: found that only '-file07' is an ASCII text file (i.e., human-readable)
# read its content and obtain the password for the next level
cat ./-file07
