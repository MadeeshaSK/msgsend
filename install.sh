#!/bin/bash

echo "Installing msgsend ..."

# Check if we're in Termux
if [ ! -d "/data/data/com.termux" ]; then
    echo "ERROR: This tool only works on Termux (Android)"
    exit 1
fi

# Check if executable exists
if [ ! -f "msgsend" ]; then
    echo "ERROR: msgsend file not found!"
    exit 1
fi

# Install to Termux bin directory
cp msgsend $PREFIX/bin/
chmod +x $PREFIX/bin/msgsend

echo "✓ msgsend installed successfully!"
echo "You can now run: msgsend"