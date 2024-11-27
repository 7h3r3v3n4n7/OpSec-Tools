# Start TOR Browser
Write-Host "Starting TOR Browser..."
Start-Process -FilePath "$env:ProgramFiles\Tor Browser\Browser\firefox.exe"

# Start I2P
Write-Host "Starting I2P router..."
Start-Process -FilePath "$env:ProgramFiles\I2P\i2prouter.exe"

# Start ProxyChains (via WSL)
Write-Host "Starting ProxyChains (requires WSL)..."
wsl proxychains4 firefox https://check.torproject.org &

Write-Host "All tools started. Use them as needed."