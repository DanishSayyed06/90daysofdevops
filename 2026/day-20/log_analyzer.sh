#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: No log file path provided" >&2
    echo "Usage: $0 <path_to_log_file>" >&2
    exit 1
fi


LOG_FILE="$1"

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File '$LOG_FILE' does not exist or is not a valid file" >&2
    exit 1
fi

echo "Success: File '$LOG_FILE' found and ready for processing"

# Error Count

error_count=$(grep -E "error|Failed" "$LOG_FILE" | wc -l)

echo "===== ERROR COUNT ====="
echo "Total Error Count: $error_count"


# Critical Events

echo "===== Critical Events Found ====="
grep -n "CRITICAL" "$LOG_FILE"

# Top Error Messages

echo "===== TOP ERROR MASSAGES ====="

grep "error" "$LOG_FILE"| sort | uniq -c | sort -nr | head -n 5

# Get current date
CURRENT_DATE=$(date +"%Y-%m-%d")
REPORT_FILE="log_report_${CURRENT_DATE}.txt"

TOTAL_LINES=$(wc -l < "$LOG_FILE")
error_count=$(grep -E "error|Failed" "$LOG_FILE" | wc -l)


{
  echo "========================================="
  echo "            LOG ANALYSIS REPORT          "
  echo "========================================="
  echo "Date of analysis: $CURRENT_DATE"
  echo "Log file name:    $LOG_FILE"
  echo "Total lines processed: $TOTAL_LINES"
  echo "Total error count:     $error_count"
  echo ""
  echo "--- Top 5 Most Common Error Messages ---"
  grep "error" "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5
  echo ""
  echo "--- List of Critical Events ---"
  grep -n "CRITICAL" "$LOG_FILE"
  echo "========================================="
} | tee "$REPORT_FILE"

ARCHIVE_DIR="archive"

# Create directory

if [ ! -d "$ARCHIVE_DIR" ]; then
    mkdir "$ARCHIVE_DIR"
fi

# Move the file

sudo mv "$LOG_FILE" "$ARCHIVE_DIR/"
echo "Archive Status: Successfully moved '$LOG_FILE' to the '$ARCHIVE_DIR/' directory"