# Renew IP address
ipconfig /release
ipconfig /renew

# Flush DNS cache
ipconfig /flushdns

# Restart network adapter (replace "Ethernet" with your adapter name)
Disable-NetAdapter -Name "Ethernet" -Confirm:$false
Enable-NetAdapter -Name "Ethernet"

# Test network connectivity
Test-Connection -ComputerName google.com -Count 3