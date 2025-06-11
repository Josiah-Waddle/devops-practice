#!/bin/bash

LOGFILE="logs/system_$(date +%Y-%m-%d_%H-%M-%S).log"
mkdir -p logs

{
  echo "🕒 System Log - $(date)"
  echo "👤 User: $(whoami)"
  echo "💾 Disk Usage:"
  df -h
  echo ""
  echo "🧠 Memory Usage:"
  free -h
  echo ""
  echo "🔥 Top 5 CPU Processes:"
  ps aux --sort=-%cpu | head -n 6
} > "$LOGFILE"

echo "Log saved to $LOGFILE"
