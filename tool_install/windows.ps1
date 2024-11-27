# PowerShell Script to Install OpSec Tools on Windows

# Enable script execution
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force

# Download and Install TOR Browser
Write-Host "Downloading and installing TOR Browser..."
Invoke-WebRequest -Uri "https://www.torproject.org/dist/torbrowser/desktop/latest/torbrowser-install-win64.exe" -OutFile "$env:TEMP\torbrowser-install.exe"
Start-Process -FilePath "$env:TEMP\torbrowser-install.exe" -ArgumentList "/S" -Wait
Write-Host "TOR Browser installed."

# Download and Install I2P
Write-Host "Downloading and installing I2P..."
Invoke-WebRequest -Uri "https://geti2p.net/_static/i2pinstall_1.9.0_windows.exe" -OutFile "$env:TEMP\i2pinstall.exe"
Start-Process -FilePath "$env:TEMP\i2pinstall.exe" -ArgumentList "/S" -Wait
Write-Host "I2P installed."

# Download and Install ProxyChains (via WSL)
Write-Host "Installing ProxyChains via WSL..."
wsl sudo apt update
wsl sudo apt install -y proxychains4
Write-Host "ProxyChains installed via WSL."

Write-Host "All tools installed. Configure as needed."