#!/bin/bash
echo "Downloading msgsend v2.0..."
wget -O msgsend https://github.com/MadeeshaSK/msgsend/releases/download/v2.0/msgsend

if [ $? -eq 0 ]; then
    chmod +x msgsend
    mv msgsend $PREFIX/bin/
    echo "✓ msgsend installed successfully!"
    echo "Run: msgsend"
else
    echo "✗ Download failed"
fi