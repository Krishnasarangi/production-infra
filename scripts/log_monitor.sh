#!/bin/bash

echo "===== Production Log Monitor ====="

LOG_FILE="/var/log/syslog"

if [ -f "$LOG_FILE" ]
then
    echo "Monitoring: $LOG_FILE"
    echo "===== Recent Errors ====="
    grep -i "error" "$LOG_FILE" | tail -10
else
    echo "Log file not found: $LOG_FILE"
fi
