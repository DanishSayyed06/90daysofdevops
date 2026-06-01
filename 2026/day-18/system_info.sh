#!/bin/bash
set -euo pipefail

system_info() {
    echo "=============== Hostname & OS Info ==============="
    echo "Hostname : $(hostname)"
    echo "OS       : $(lsb_release -ds || echo 'N/A')"
    echo "Kernel   : $(uname -r)"
    echo
}

print_uptime() {
    echo "==================== Uptime ====================="
    uptime
    echo
}

print_disk() {
    echo "================== Disk Usage ==================="
    df -h | sort -k5 -hr | head -6
    echo
}

print_memory() {
    echo "================= Memory Usage =================="
    free -h
    echo
}

print_cpu() {
    echo "============ Top 5 CPU Processes ================"
    ps aux --sort=-%cpu | head -6
    echo
}

main() {
    system_info
    print_uptime
    print_disk
    print_memory
    print_cpu
}

main