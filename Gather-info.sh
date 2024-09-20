#!/bin/bash

# Define file names
NEW_FILE="jenkinsjobreports"
OLD_FILE="jenkinsfile-old"

# Check if the old file exists, and delete it if present
if [ -f "$OLD_FILE" ]; then
    rm "$OLD_FILE"
    echo "Old file $OLD_FILE has been deleted."
fi

# Create a new file to collect data
touch "$NEW_FILE"

# Collect and format the runtime of the server (uptime)
echo "==============================" >> "$NEW_FILE"
echo "         SERVER UPTIME         " >> "$NEW_FILE"
echo "==============================" >> "$NEW_FILE"
uptime >> "$NEW_FILE"
echo "" >> "$NEW_FILE"


# Get and format the current date and time
echo "==============================" >> "$NEW_FILE"
echo "    CURRENT DATE AND TIME      " >> "$NEW_FILE"
echo "==============================" >> "$NEW_FILE"
date >> "$NEW_FILE"
echo "" >> "$NEW_FILE"
# Get and format the last 5 logged in users
echo "==============================" >> "$NEW_FILE"
echo "      LAST 5 LOGGED-IN USERS   " >> "$NEW_FILE"
echo "==============================" >> "$NEW_FILE"
last -n 5 >> "$NEW_FILE"
echo "" >> "$NEW_FILE"
# Get and format memory usage
echo "==============================" >> "$NEW_FILE"
echo "        MEMORY USAGE           " >> "$NEW_FILE"
echo "==============================" >> "$NEW_FILE"
free -h >> "$NEW_FILE"
echo "" >> "$NEW_FILE"
# Rename the current report file to jenkinsfile-old
mv "$NEW_FILE" "$OLD_FILE"
# Confirm completion
echo "Data has been collected and saved in $OLD_FILE."
