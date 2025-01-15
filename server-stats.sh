#!/bin/bash

# Script Name: server-stats.sh
# Description: Display server performance stats (CPU, memory, disk, and top processes).

# Total CPU Usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}')

# Total Memory Usage
mem_total=$(free -m | awk '/^Mem:/{print $2}')
mem_used=$(free -m | awk '/^Mem:/{print $3}')
mem_free=$(free -m | awk '/^Mem:/{print $4}')
mem_usage_percent=$((100 * mem_used / mem_total))

# Total Disk Usage
disk_usage=$(df -h / | awk 'NR==2 {print $5}')
disk_free=$(df -h / | awk 'NR==2 {print $4}')
disk_used=$(df -h / | awk 'NR==2 {print $3}')

# Top 5 Processes by CPU
top_cpu_processes=$(ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6)

# Top 5 Processes by Memory
top_mem_processes=$(ps -eo pid,comm,%mem --sort=-%mem | head -n 6)

# Display Results
echo "========== Server Performance Stats =========="
echo "CPU Usage: $cpu_usage"
echo
echo "Memory Usage:"
echo "  Total: ${mem_total}MB"
echo "  Used: ${mem_used}MB"
echo "  Free: ${mem_free}MB"
echo "  Usage: ${mem_usage_percent}%"
echo
echo "Disk Usage:"
echo "  Used: $disk_used"
echo "  Free: $disk_free"
echo "  Usage: $disk_usage"
echo
echo "Top 5 Processes by CPU Usage:"
echo "$top_cpu_processes"
echo
echo "Top 5 Processes by Memory Usage:"
echo "$top_mem_processes"
echo "============================================="
