import os
import sys

# Arguments are paths to the project and dropbox data folders
p_data = sys.argv[1] + "/data"
d_data = sys.argv[2] + "/data"

# Define function
def symlink_force(target, link_name):
    try:
        os.symlink(target, link_name)
    except FileExistsError:
        os.remove(link_name)
        os.symlink(target, link_name)

# Make list of current sources
sources = os.listdir(p_data)

# Loop over elements in list
for source in sources:
    # Set input path
    input = p_data + '/' + source + '/input'
    # Call function
    symlink_force(d_data + '/' + source + '/input', input)
