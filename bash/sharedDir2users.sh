#!/bin/bash

# Define the shared dataset directory
shared_dataset_dir="/storage/users/job37yv/shared/"

# Define an array with the usernames
usernames=("job37yv" "sac43cg" "jup71eb" "s365199" "tib72nr" "bik68jw" "s391913" "ems84bj" "binf027" "maa81gb" "s415504" "s444854" "s422499" "binf001")
not_registered_usernames=("s444854" "s422499" "s372747" "s400705")
# Iterate over the array and create symbolic links
for username in "${usernames[@]}"; do
    # Check if the user's home directory exists
    if [ -d "/home/$username" ]; then
        # Create a symbolic link to the shared dataset directory
        ln -s "$shared_dataset_dir" "/home/$username/shared_dataset"
        echo "Created symbolic link for $username"
    else
        echo "Home directory not found for $username"
    fi
done
