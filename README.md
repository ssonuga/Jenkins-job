# Jenkins Job Report Generator

## Project Overview

This project includes a simple Bash script designed to automate the generation of system reports. The script collects important runtime information from the server, such as uptime, current date and time, memory usage, and the last five logged-in users. The script is intended to run on a Jenkins server and will automatically rename the report file to avoid duplicates, ensuring that only the latest report is named `jenkins-new-report`.

## Features

- **Server Uptime**: The script collects the server's uptime.
- **Current Date and Time**: Fetches the current date and time when the script is executed.
- **Last 5 Logged-In Users**: Lists the last five users who logged into the system.
- **Memory Usage**: Displays the current memory usage in a human-readable format.
- **File Renaming**: If a `jenkins-new-report` file already exists, it is renamed to `jenkins-old-report` before generating the new report.
## Project Files
- **jenkins_report.sh**: The main Bash script that generates the report.
- **README.md**: This documentation file explaining the project.
## How It Works

1. **File Management**: 
   - If a file named `jenkins-new-report` already exists, it is renamed to `jenkins-old-report`.
   - A new file `jenkins-new-report` is created to collect the server's data.
2. **Data Collected**:
   - **Server Uptime**: Logs the current uptime of the server.
   - **Current Date and Time**: Fetches and logs the current system date and time.
   - **Last 5 Users**: Retrieves and logs the last five users who logged into the server.
   - **Memory Usage**: Logs the memory usage statistics.
3. **Output**:
   - The generated report is stored in a file named `jenkins-new-report`. If this file already exists, it is renamed to `jenkins-old-report` before the new data is written.
## Usage
1. **Clone the Repository**:
   Clone this repository to your Jenkins server or local system:
   ```bash
   git clone https://github.com/your-username/your-repository.git
