#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Muskan Mathur

PACKAGE="linux-kernel"

echo "======================================="

# --- Check kernel (special case) ---
KERNEL_VERSION=$(uname -r)

if [ -n "$KERNEL_VERSION" ]; then
    echo "Linux Kernel is installed."
    echo "---------------------------------------"
    echo "Version     : $KERNEL_VERSION"
    echo "Architecture: $(uname -m)"
    echo "System Name : $(uname -o)"
else
    echo "Linux Kernel is NOT detected."
fi

echo "---------------------------------------"

# --- Case statement for philosophy note ---
case $PACKAGE in
    linux-kernel)
        echo "Linux Kernel: the core of the OS, enabling hardware and software interaction."
        ;;
    apache2)
        echo "Apache: the web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps."
        ;;
    git)
        echo "Git: distributed version control enabling collaboration."
        ;;
    *)
        echo "This package is part of the open-source ecosystem."
        ;;
esac

echo "======================================="