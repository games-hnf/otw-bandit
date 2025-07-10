# This file is for documentation only.
# Do NOT run this script directly!
# Most commands must be executed on the remote Bandit sever after SSH login.

# Step 1: check the contents of the $HOME directory
ll

# Step 2: found 'inhere' directory, move into and check its contents
cd inhere && ll

# Step 3: found a bunch of files of which the filename starts with a dash
# check the file types of all the files
file ./*

# Step 4: found that only '-file07' is the ASCII text file, which is human-readable
# read the content and obtain the password for the next level
cat ./-file07
