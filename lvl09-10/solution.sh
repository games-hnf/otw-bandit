# This file is for documentation only.
# DO NOT run this script directly!
# Most commands must be executed on the remote Bandit sever after SSH login.

# Step 1: check the contents of the $HOME directory
ll

# Step 2: found 'data.txt', group the repeated lines together and display only the unique line(s)
sort data.txt | uniq -u
