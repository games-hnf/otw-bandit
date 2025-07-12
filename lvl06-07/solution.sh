# This file is for documentation only.
# DO NOT run this script directly!
# Most commands must be executed on the remote Bandit sever after SSH login.

# Step 1: check the contents of the $HOME directory
ll

# Step 2: search through the entire filesystem for a file that satisfies all three conditions
# and send all standard errors to /dev/null
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null

# Step 3: found the file /var/lib/dpkg/info/bandit7.password containing the password for the next level
# read the content of this file
cat /var/lib/dpkg/info/bandit7.password
