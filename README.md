#OpSec Tools Installation and Startup Scripts

This repository contains scripts to automate the installation and startup of essential OpSec tools (TOR Browser, I2P, and ProxyChains) on Windows, macOS, and Debian-based Linux distributions.


---

##Installation Scripts

1. Windows Installation Script

File: tool_install/windows.ps1

Description: Downloads and installs the latest versions of TOR Browser, I2P, and ProxyChains via WSL.


Usage:

1. Open PowerShell with administrative privileges.


2. Run the script:

`.\windows.ps1`


3. Follow any prompts to complete the installation.



Tools Installed:

TOR Browser: Secure, anonymous browsing.

I2P: Anonymous peer-to-peer networking.

ProxyChains: Route traffic through multiple proxies (installed via WSL).



---

2. macOS Installation Script

File: tool_install/mac.sh

Description: Installs TOR Browser, I2P, and ProxyChains-NG using Homebrew.


Usage:

1. Open Terminal.


2. Make the script executable:

`chmod +x mac.sh`


3. Run the script:

`./mac.sh`



Tools Installed:

TOR Browser: Secure, anonymous browsing.

I2P: Anonymous peer-to-peer networking.

ProxyChains-NG: Advanced proxy chaining.



---

3. Debian-Based Linux Installation Script

File: tool_install/debian.sh

Description: Installs TOR Browser, I2P, and ProxyChains using apt.


Usage:

1. Open a terminal.


2. Make the script executable:

`chmod +x debian.sh`


3. Run the script with sudo:

`sudo ./debian.sh`



Tools Installed:

TOR Browser: Secure, anonymous browsing.

I2P: Anonymous peer-to-peer networking.

ProxyChains: Advanced proxy chaining.



---

##Startup Scripts

1. Windows Startup Script

File: tool_run/windows.ps1

Description: Starts TOR Browser, I2P, and ProxyChains (via WSL).


Usage:

1. Open PowerShell.


2. Run the script:

`.\windows.ps1`



Optional - Add to Startup:

1. Save the script to a location (e.g., C:\Scripts\opsec\windows.ps1).


2. Open the Startup Folder:

Press Win + R, type shell:startup, and press Enter.



3. Create a shortcut to PowerShell in the folder:

Target:

`powershell -ExecutionPolicy Bypass -File "C:\Scripts\opsec\windows.ps1"`



---

2. macOS Startup Script

File: tool_run/mac.sh

Description: Launches TOR Browser, I2P, and optionally ProxyChains.


Usage:

1. Open Terminal.


2. Make the script executable:

`chmod +x mac.sh`


3. Run the script:

`./mac.sh`



Optional - Add to Startup:

1. Save the script to a location (e.g., /usr/local/bin/opsec/mac.sh).


2. Create a LaunchAgent plist:

File: ~/Library/LaunchAgents/com.opsec.startup.plist

Contents:
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>com.opsec.startup</string>
    <key>ProgramArguments</key>
    <array>
      <string>/usr/local/bin/opsec/mac.sh</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
  </dict>
</plist>
```


3. Load the plist:

`launchctl load ~/Library/LaunchAgents/com.opsec.startup.plist`


---

3. Debian-Based Linux Startup Script

File: tool_run/debian.sh

Description: Launches TOR Browser, I2P, and ProxyChains.


Usage:

1. Open a terminal.


2. Make the script executable:

`chmod +x debian.sh`


3. Run the script:

`./debian.sh`



Optional - Add to Startup:

1. Open the crontab:

`crontab -e`


2. Add the following line (replacing with the actual path to the file):

`@reboot /path/to/opsec/tool_run/debian.sh`



---

#Important Notes

**Permissions**: Ensure scripts have the necessary permissions (sudo for Linux/macOS or admin privileges for Windows).

**Configuration**: Customize tool configurations after installation (e.g., proxychains.conf for ProxyChains).

**Testing**: Test all scripts manually before adding them to startup to avoid boot issues.


