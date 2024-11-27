#!/bin/bash
# Bash Script to Install OpSec Tools on Debian-Based Distros

# Update the package manager
echo "Updating package list..."
sudo apt update && sudo apt upgrade -y

# Install TOR Browser
echo "Installing TOR Browser..."
sudo apt install -y torbrowser-launcher
echo "TOR Browser installed."

# Install I2P
echo "Installing I2P..."
sudo apt install -y i2p
echo "I2P installed."

# Install ProxyChains-NG
echo "Installing ProxyChains-NG..."
sudo apt install -y proxychains4
echo "ProxyChains-NG installed."

echo "All tools installed. Configure as needed."