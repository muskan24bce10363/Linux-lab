#!/bin/bash
# Script 4: Log File Analyzer
# Author: Muskan Mathur
# Usage: ./script4.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error'
COUNT=0

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Retry if file is empty (do-while style) ---
ATTEMPTS=0
MAX_ATTEMPTS=3

while [ ! -s "$LOGFILE" ] && [ $ATTEMPTS -lt $MAX_ATTEMPTS ]; do
    echo "File is empty. Waiting for content..."
    sleep 2
    ATTEMPTS=$((ATTEMPTS + 1))
done

if [ ! -s "$LOGFILE" ]; then
    echo "File is still empty after $MAX_ATTEMPTS attempts."
    exit 1
fi

# --- Read file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output result ---
echo "======================================="
echo "Log Analysis Report"
echo "---------------------------------------"
echo "File        : $LOGFILE"
echo "Keyword     : $KEYWORD"
echo "Total Count : $COUNT"
echo "---------------------------------------"

# --- Show last 5 matching lines ---
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "======================================="