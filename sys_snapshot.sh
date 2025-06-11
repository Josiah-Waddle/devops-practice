#!/bin/bash

echo "🕒 System Snapshot - $(date)"
echo "👤 User: $(whoami)"
echo "💾 Disk Usage:"
df -h

echo ""
echo "🧠 Memory Usage:"
free -h

echo ""
echo "🔥 Top 5 CPU-consuming Processes:"
ps aux --sort=-%cpu | head -n 6
