#!/bin/bash
# Bash Script to Install OpSec Tools on macOS

# Check for Homebrew and install if not available
if ! command -v brew &> /dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install TOR Browser
echo "Installing TOR Browser..."
brew install --cask tor-browser

# Install I2P
echo "Installing I2P..."
brew install --cask i2p

# Install ProxyChains-NG
echo "Installing ProxyChains-NG..."
brew install proxychains-ng

echo "All tools installed. Configure as needed."