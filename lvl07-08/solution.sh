# This file is for documentation only.
# DO NOT run this script directly!
# Most commands must be executed on the remote Bandit sever after SSH login.

# Step 1: check the contents of the $HOME directory
ll

# Step 2: found 'data.txt', read the content of this file,
# but extract the entire line that contains the string 'millionth'
cat data.txt | grep 'millionth'
