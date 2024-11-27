#!/bin/bash

# Start TOR Browser
echo "Starting TOR Browser..."
torbrowser-launcher &

# Start I2P
echo "Starting I2P router..."
i2prouter start &

# Optionally run ProxyChains for a browser session
echo "Starting ProxyChains (optional)..."
proxychains4 firefox https://check.torproject.org &

echo "All tools started. Use them as needed."