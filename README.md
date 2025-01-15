# Server Stats Script

## Overview
`server-stats.sh` is a bash script designed to provide key performance statistics of a Linux server. This includes CPU usage, memory usage, disk usage, and top resource-consuming processes.

## Features
- Displays total CPU usage as a percentage.
- Reports total, used, and free memory along with usage percentage.
- Shows total, used, and free disk space including usage percentage.
- Lists the top 5 processes by CPU usage.
- Lists the top 5 processes by memory usage.

## Prerequisites
Ensure the following tools are installed and accessible on your Linux system:
- `bash` (default on most Linux systems)
- `top` (for CPU usage)
- `free` (for memory stats)
- `df` (for disk usage)
- `ps` (for process stats)

## Installation
1. Download or clone the repository containing `server-stats.sh`.
2. Make the script executable:
    ```bash
    chmod +x server-stats.sh
    ```
3. Run the script using the command:
    ```bash
    ./server-stats.sh
    ```
Project URL
https://roadmap.sh/projects/server-stats
