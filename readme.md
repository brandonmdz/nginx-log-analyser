# NGINX Log Analyser

This project is a simple shell script to analyze Nginx access logs from the command line and provides specific information about the requests.

## Features

The script provides the following insights from the access logs:

- **Top 5 IP addresses with the most requests.**
- **Top 5 most requested paths.**
- **Top 5 response status codes.**
- **Top 5 user agents.**

## Prerequisites

- **Unix-based operating system**
- Bash shell.
- awk, sort, uniq, head.

## Usage

1. **Clone the repository:**

   Just clone this repository to your local machine:

   ```bash
   git clone https://github.com/brandonmdz/nginx-log-analyser.git
   cd nginx-log-analyser

2. **Make the script executable:**

   ```bash
   chmod +x nginx-log-analyser.sh

3. **Run the Script:**

    Execute the script by providing the log file (you can use the nginx-access.log file in this repo or any nginx log file) as an argument:

    ```bash
    ./nginx-log-analyser.sh nginx-access.log

## Example Output:

    Top 5 IP addresses with the most requests:
    178.128.94.113 - 1087 requests
    142.93.136.176 - 1087 requests
    138.68.248.85 - 1087 requests
    159.89.185.30 - 1086 requests
    86.134.118.70 - 277 requests

    Top 5 most requested paths:
    /v1-health - 4560 requests
    / - 270 requests
    /v1-me - 232 requests
    /v1-list-workspaces - 127 requests
    /v1-list-timezone-teams - 75 requests

    Top 5 response status codes:
    200 - 5740 requests
    404 - 937 requests
    304 - 621 requests
    400 - 192 requests
    "-" - 31 requests

    Top 5 user agents:
    DigitalOcean - 4347 requests
    Mozilla/5.0 - 513 requests
    Mozilla/5.0 - 332 requests
    Custom-AsyncHttpClient - 294 requests
    Mozilla/5.0 - 282 requests
