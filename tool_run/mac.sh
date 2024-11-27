#!/bin/bash

# Start TOR Browser
echo "Starting TOR Browser..."
open -a "Tor Browser"

# Start I2P
echo "Starting I2P router..."
open -a "I2P Router"

# Optionally run ProxyChains for a browser session
echo "Starting ProxyChains (optional)..."
proxychains4 /Applications/Firefox.app/Contents/MacOS/firefox https://check.torproject.org &

echo "All tools started. Use them as needed."