# This file is for documentation only.
# DO NOT run this script directly!
# Most commands must be executed on the remote Bandit sever after SSH login.

# Step 1: check the contents of the $HOME directory
ll

# Step 2: found 'sshkey.private', use this private key file to
# log into the next level's server as user 'bandit14'
ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220

# Step 3: follow the hint, check the contents of the file '/etc/bandit_pass/bandit14'
# and retrieve the password for the next level
cat /etc/bandit_pass/bandit14
