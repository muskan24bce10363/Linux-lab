#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Muskan Mathur

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================="
echo "       Directory Audit Report"
echo "======================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "---------------------------------------"

# --- Check Linux Kernel config directory ---
KERNEL_CONFIG="/boot"

echo "Kernel Configuration Check"
echo "--------------------------"

if [ -d "$KERNEL_CONFIG" ]; then
    PERMS=$(ls -ld $KERNEL_CONFIG | awk '{print $1, $3, $4}')
    echo "$KERNEL_CONFIG exists."
    echo "Permissions: $PERMS"
else
    echo "$KERNEL_CONFIG does not exist on this system"
fi

echo "======================================="