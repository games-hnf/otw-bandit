# This file is for documentation only.
# DO NOT run this script directly!
# Most commands must be executed on the remote Bandit sever after SSH login.

# Step 1: check the contents of the $HOME directory
ll

# Step 2: found 'data.txt', decode it based on ROT13 method
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
