#!/bin/bash

# Display system information
echo "=== System Information ==="
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "Operating System: $(uname -s)"
echo "Architecture: $(uname -m)"

# Display CPU information
echo -e "\n=== CPU Information ==="
lscpu | grep "Model name:" | sed 's/Model name:/CPU Model:/'
lscpu | grep "CPU(s):"
lscpu | grep "Thread(s) per core:"
lscpu | grep "Core(s) per socket:"
lscpu | grep "Socket(s):"

# Display memory information
echo -e "\n=== Memory Information ==="
free -h

# Display disk information
echo -e "\n=== Disk Information ==="
df -h

# Display network information
echo -e "\n=== Network Information ==="
ip addr

# Display running processes
echo -e "\n=== Running Processes ==="
ps aux

# Display users
echo -e "\n=== Logged-in Users ==="
w
