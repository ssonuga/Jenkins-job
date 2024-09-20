#!/bin/bash

# Define file names
NEW_FILE="jenkins-new-report"
OLD_FILE="jenkins-old-report"

# Check if the new report file exists
if [ -f "$NEW_FILE" ]; then
    # Rename the existing new report to old report
    mv "$NEW_FILE" "$OLD_FILE"
    echo "Existing report $NEW_FILE has been renamed to $OLD_FILE."
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
# Confirm completion
echo "Data has been collected and saved in $NEW_FILE."
