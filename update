#!/bin/bash

# Define the old and new paths
old_path="/storage/users/sac43cg/res_Samantha_1/outs/per_sample_outs/"
new_path="/storage/users/data/PANC/"

# Loop through all .ipynb files in the current directory
for notebook in *.ipynb; do
    # Use sed to replace the old path with the new path in the notebook
    sed -i "s|$old_path|$new_path|g" "$notebook"
done

echo "Paths updated successfully in all Jupyter notebooks."

