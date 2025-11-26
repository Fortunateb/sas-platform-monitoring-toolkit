#!/bin/bash
# Cleanup old SAS logs (generic example)

LOG_DIR="/opt/sas/config/Lev1/SASApp/Logs"
RETENTION_DAYS=14

find "$LOG_DIR" -name "*.log" -type f -mtime +"$RETENTION_DAYS" -exec rm {} \;

echo "Old logs removed."
