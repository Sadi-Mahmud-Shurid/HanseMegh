#!/bin/bash
set -euo pipefail


echo "=================================================="
echo "             HANSEMEGH SYSTEM AUDIT               "
echo "=================================================="
echo "Timestamp: $(date)"
echo ""

echo "--- 1. CURRENT MEMORY USAGE ---"
free -h
echo ""

echo "--- 2. DISK SPACE ---"
df -h | awk 'NR==1 || /^\/dev\//'
echo ""

echo "--- 3. CPU LOAD AVERAGES ---"
uptime
echo ""

echo "--- 4. TOP 5 CPU-HUNGRY PROCESSES ---"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""

echo "=================================================="
