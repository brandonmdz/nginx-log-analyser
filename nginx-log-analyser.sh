#!/bin/bash

# Check if log file is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

LOG_FILE="$1"

echo "Analyzing $LOG_FILE..."

# Top 5 IP addresses with the most requests
echo -e "\nTop 5 IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5 | awk '{print $2, "-", $1, "requests"}'

# Top 5 most requested paths
echo -e "\nTop 5 most requested paths:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5 | awk '{print $2, "-", $1, "requests"}'

# Top 5 response status codes
echo -e "\nTop 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5 | awk '{print $2, "-", $1, "requests"}'

# Top 5 user agents
echo -e "\nTop 5 user agents:"
awk -F\" '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5 | awk '{print $2, "-", $1, "requests"}'
